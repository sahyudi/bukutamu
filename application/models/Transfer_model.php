<?php

class Transfer_model extends CI_Model
{

    protected $users = 'users';
    protected $transfers = 'transfers';
    protected $products = 'products';
    protected $transfer_product = 'transfer_product';
    protected $transfer_type = 'transfer_type';
    protected $sales = 'sales';
    protected $sale_payments = 'sale_payments';
    protected $sale_products = 'sale_products';

    function transfer_type()
    {
        return $this->db->get($this->transfer_type)->result();
    }

    function save_payment($data)
    {

        $this->db->set('created_by', $this->session->userdata('username'));
        return $this->db->insert($this->sale_payments, $data);
    }

    function update_payment($data, $id)
    {

        $this->db->set('updated_by', $this->session->userdata('username'));
        return $this->db->update($this->sale_payments, $data, ['id' => $id]);
    }

    function delete_payment($id)
    {
        return $this->db->delete($this->sale_payments,  ['id' => $id]);
    }

    function get_tranfer_items()
    {
        $date = $this->input->get('date');

        $this->db->select("A.*,S.sale_no, S.customer_name, S.customer_phone, U.fullname as cs_name, P.product_name,P.description as product_description, SP.qty,SP.price, SP.amount as amount_product,SP.id as item_id");
        $this->db->join($this->sales . " S", "S.id = A.sale_id", "left");
        $this->db->join($this->users . " U", "A.user_id = U.id", "left");
        $this->db->join($this->sale_products . " SP", "S.id = SP.sale_id", "left");
        $this->db->join($this->products . " P", "SP.product_id = P.id", "left");
        $this->db->order_by('A.date, A.id', 'ASC');
        if ($date) {
            $this->db->where('DATE(A.date)', $date);
        }
        $query = $this->db->get($this->sale_payments . " A");

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
                    'transfer_type' => $sale['transfer_type'],
                    'user_id' => $sale['user_id'],
                    'cs_name' => $sale['cs_name'],
                    'date' => $sale['date'],
                    'amount' => $sale['amount'],
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
                'amount' => $sale['amount_product']
            ];
        }

        // Reindex array to make it simple (optional)
        $result = array_values($result);
        // Output or return the result
        return $result;
    }

    function get_transfers()
    {
        $date = $this->input->get('date');
        $transfer_type = $this->input->get('transfer_type');
        $this->db->select("SP.*,S.customer_name, S.customer_phone, U.fullname as cs_name");
        $this->db->join($this->sales . " S", "SP.sale_id = S.id", "left");
        $this->db->join($this->users . " U", "S.user_id = U.id", "left");
        if ($date) {
            $this->db->where('DATE(SP.date)', $date);
        }
        if ($transfer_type) {
            $this->db->where('SP.transfer_type', $transfer_type);
        }
        $this->db->order_by('SP.id, SP.date', 'DESC');
        return $this->db->get($this->sale_payments . " SP");
    }

    function get_transfer_detail($id, $uuid = false)
    {
        $this->db->select("SP.*, S.customer_name, S.customer_phone, S.uuid as sale_uuid, U.fullname as cs_name");
        $this->db->join($this->sales . " S", "SP.sale_id = S.id", "left");
        $this->db->join($this->users . " U", "S.user_id = U.id", "left");
        if ($id) {
            if ($uuid) {
                $this->db->where('SP.uuid', $id);
            } else {
                $this->db->where('SP.id', $id);
            }
        }
        return $this->db->get($this->sale_payments . " SP");
    }


    function get_transfer_products($transfer_id)
    {
        $this->db->select("A.*, B.product_name, B.description as product_description");
        $this->db->from($this->transfer_product . " A");
        $this->db->join($this->products . " B", "A.product_id = B.id", "left");
        $this->db->where('A.transfer_id', $transfer_id);
        $this->db->group_by('A.id');
        return $this->db->get();
    }


    function save_tranfer($data)
    {

        $this->db->set('created_by', $this->session->userdata('username'));
        return $this->db->insert($this->transfers, $data);
    }

    function update_transfer($data, $id)
    {
        $this->db->set('created_by', $this->session->userdata('username'));
        return $this->db->update($this->transfers, $data, ['id' => $id]);
    }

    function delete_tranfer_products($transfer_id)
    {
        return $this->db->delete($this->transfer_product, ['transfer_id' => $transfer_id]);
    }

    function delete_invoice($id)
    {
        return $this->db->delete($this->transfers, ['id' => $id]);
    }


    function save_batch_transfer_product($data)
    {
        return $this->db->insert_batch($this->transfer_product, $data);
    }
}
