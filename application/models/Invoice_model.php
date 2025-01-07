<?php

class Invoice_model extends CI_Model
{


    protected $users = 'users';
    protected $sales = 'sales';
    protected $products = 'products';
    protected $sale_products = 'sale_products';
    protected $sale_payments = 'sale_payments';

    public function get_last_order_number()
    {
        $this->db->select('sale_no');
        $this->db->order_by('id', 'DESC');
        $this->db->limit(1);
        $query = $this->db->get($this->sales);
        return $query->row_array();
    }

    public function gen_sale_no()
    {
        // Ambil nomor pemesanan terakhir
        $last_order = $this->get_last_order_number();

        // Jika ada pemesanan sebelumnya, ambil nomor urut terakhir dan tambah 1
        if ($last_order) {
            $last_number = intval(substr($last_order['sale_no'], -4));
            $new_number = str_pad($last_number + 1, 4, '0', STR_PAD_LEFT);
        } else {
            // Jika belum ada data pemesanan, mulai dari 0001
            $new_number = '0001';
        }

        // Format nomor pemesanan, misal: ORD-2024-0001
        $order_number = 'ORD/' . date('Y') . '/' . $new_number;
        return $order_number;
    }

    function get_invoice_items()
    {
        $order_date = $this->input->get('order_date');
        $pickup_date = $this->input->get('pickup_date');
        $status = $this->input->get('status');
        // $seller = $this->input->get('seller');

        $this->db->select("S.*, U.fullname as cs_name,P.product_name,P.description as product_description, SP.qty,SP.price, SP.amount,SP.id as item_id");
        $this->db->join($this->users . " U", "S.user_id = U.id", "left");
        $this->db->join($this->sale_products . " SP", "S.id = SP.sale_id", "left");
        $this->db->join($this->products . " P", "SP.product_id = P.id", "left");
        $this->db->order_by('S.id, S.order_date, S.pickup_date', 'ASC');
        if ($order_date) {
            $this->db->where('DATE(S.order_date)', $order_date);
        }
        if ($pickup_date) {
            $this->db->where('S.pickup_date', $pickup_date);
        }
        if ($status) {
            $this->db->where('S.status', $status);
        }
        $query = $this->db->get($this->sales . " S");

        // Fetch result as array
        $sales = $query->result_array();

        // Group sale_products by sale_id
        $result = [];
        foreach ($sales as $sale) {
            $sale_id = $sale['id'];

            // Initialize sale entry if not exists
            if (!isset($result[$sale_id])) {
                $result[$sale_id] = [
                    'id' => $sale['id'],
                    'uuid' => $sale['uuid'],
                    'sale_no' => $sale['sale_no'],
                    'customer_name' => $sale['customer_name'],
                    'customer_phone' => $sale['customer_phone'],
                    'description' => $sale['description'],
                    'user_id' => $sale['user_id'],
                    'cs_name' => $sale['cs_name'],
                    'order_date' => $sale['order_date'],
                    'pickup_date' => $sale['pickup_date'],
                    'done_date' => $sale['done_date'],
                    'status' => $sale['status'],
                    'total' => $sale['total'],
                    'down_payment' => $sale['down_payment'],
                    'outstanding_balance' => $sale['outstanding_balance'],
                    'sale_products' => [] // Array for grouping sale products
                ];
            }

            // Append product to sale's sale_products array
            $result[$sale_id]['sale_products'][] = [
                'item_id' => $sale['item_id'],
                'product_name' => $sale['product_name'],
                'description' => $sale['product_description'],
                'qty' => $sale['qty'],
                'price' => $sale['price'],
                'amount' => $sale['amount']
            ];
        }

        // Reindex array to make it simple (optional)
        $result = array_values($result);
        // Output or return the result
        return $result;
    }

    function get_invoices()
    {
        $order_date = $this->input->get('order_date');
        $pickup_date = $this->input->get('pickup_date');
        $status = $this->input->get('status');
        // $seller = $this->input->get('seller');

        $this->db->select("S.*, U.fullname as cs_name");
        $this->db->join($this->users . " U", "S.user_id = U.id", "left");
        $this->db->order_by('S.id, S.order_date, S.pickup_date', 'ASC');
        if ($order_date) {
            $this->db->where('DATE(S.order_date)', $order_date);
        }
        if ($pickup_date) {
            $this->db->where('S.pickup_date', $pickup_date);
        }
        if ($status) {
            $this->db->where('S.status', $status);
        }
        return $this->db->get($this->sales . " S");
    }

    function get_invoice_detail($id = null, $uuid = false)
    {
        $this->db->select("S.*, U.fullname as cs_name");
        $this->db->join($this->users . " U", "S.user_id = U.id", "left");
        if ($id) {
            if ($uuid) {
                $this->db->where('S.uuid', $id);
            } else {
                $this->db->where('S.id', $id);
            }
        }
        return $this->db->get($this->sales . " S");
    }

    function get_invoice_products($sale_id)
    {
        $this->db->select("A.*, B.product_name, B.description as product_description");
        $this->db->from($this->sale_products . " A");
        $this->db->join($this->products . " B", "A.product_id = B.id", "left");
        $this->db->where('A.sale_id', $sale_id);
        $this->db->group_by('A.id');
        return $this->db->get();
    }

    function get_invoice_no()
    {
        $this->db->select('*');
        $this->db->where('status', 'FINAL');
        $result = $this->db->get($this->sales)->result();
        $count = count((array) $result) + 1;
        // showme($count);

        if (strlen($count) == 1) {
            return "00" . $count;
        } else if (strlen($count) == 2) {
            return "0" . $count;
        }
        return $count;
    }

    function save_invoice($data)
    {

        $this->db->set('created_by', $this->session->userdata('username'));
        return $this->db->insert($this->sales, $data);
    }

    function update_invoice($data, $id)
    {
        $this->db->set('created_by', $this->session->userdata('username'));
        return $this->db->update($this->sales, $data, ['id' => $id]);
    }

    function delete_invoice_products($sale_id)
    {
        return $this->db->delete($this->sale_products, ['sale_id' => $sale_id]);
    }

    function delete_invoice($id)
    {
        return $this->db->delete($this->sales, ['id' => $id]);
    }


    function save_batch_invoice_product($data)
    {
        return $this->db->insert_batch($this->sale_products, $data);
    }

    function save_invoice_payment($data)
    {

        $this->db->set('created_by', $this->session->userdata('username'));
        return $this->db->insert($this->sale_payments, $data);
    }
}
