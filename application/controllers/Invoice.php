<?php
defined('BASEPATH') or exit('No direct script access allowed');

use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;
use PhpOffice\PhpSpreadsheet\Style\Alignment;

class Invoice extends CI_Controller
{

    public function __construct()
    {
        parent::__construct();
        isLogin();
        $this->load->model('invoice_model');
        $this->load->model('product_model');
        $this->load->model('user_model');
        $this->load->model('transfer_model');
    }

    function index()
    {
        check_page('invoice', $this->session->userdata('id'), $this->session->userdata('role_id'), 'read');


        $mainData = array(
            'active'    => 'invoice',
            'title'     => "Data Invoice",
            'content'   => 'content/invoice/index'
        );
        $this->load->view('template/top/main', $mainData);
    }


    function add()
    {
        check_page('invoice', $this->session->userdata('id'), $this->session->userdata('role_id'), 'create');
        $transfer_type = $this->transfer_model->transfer_type();
        $mainData = array(
            'active'    => 'invoice',
            'title'     => "Data Invoice",
            'transfer_type'     => $transfer_type,
            'content'   => 'content/invoice/form_add'
        );
        $this->load->view('template/top/main', $mainData);
    }


    function edit($uuid)
    {
        check_page('invoice', $this->session->userdata('id'), $this->session->userdata('role_id'), 'update');
        $invoice = $this->invoice_model->get_invoice_detail($uuid, true)->row();

        if (!$invoice) {
            not_found_data('invoice');
        }

        $products = $this->invoice_model->get_invoice_products($invoice->id)->result();

        $mainData = array(
            'active'        => 'invoice',
            'title'         => "Edit Invoice",
            'invoice'       => $invoice,
            'products'      => $products,
            'content'       => 'content/invoice/form_edit'
        );
        $this->load->view('template/top/main', $mainData);
    }

    function detail($uuid)
    {
        check_page('invoice', $this->session->userdata('id'), $this->session->userdata('role_id'), 'read');
        $invoice = $this->invoice_model->get_invoice_detail($uuid, true)->row();

        if (!$invoice) {
            not_found_data('invoice');
        }

        $products = $this->invoice_model->get_invoice_products($invoice->id)->result();
        $mainData = array(
            'active'        => 'invoice',
            'title'         => "Detail Pemesanan",
            'invoice'       => $invoice,
            'products'      => $products,
            'content'       => 'content/invoice/detail'
        );
        $this->load->view('template/top/main', $mainData);
    }

    function get_invoice_items()
    {
        $invoices = $this->invoice_model->get_invoice_items();
        echo json_encode($invoices);
    }

    function get_invoices()
    {
        $invoices = $this->invoice_model->get_invoices()->result();
        echo json_encode($invoices);
    }

    function get_invoice()
    {
        $uuid = $this->input->post('uuid');
        $invoice = $this->invoice_model->get_invoice_detail($uuid, true)->row();
        echo json_encode($invoice);
    }

    function final()
    {
        check_page('invoice', $this->session->userdata('id'), $this->session->userdata('role_id'), 'update');
        $id = $this->input->post('invoice_id');
        $done_date = $this->input->post('done_date');
        $sale_no = $this->input->post('sale_no');
        $data = [
            'status' => "SELESAI",
            'done_by' => $this->session->userdata('username'),
            'done_date' => $done_date,
            'sale_no' => ($sale_no) ? $sale_no : $this->invoice_model->get_invoice_no()
        ];
        $this->invoice_model->update_invoice($data, $id);

        $invoice = $this->invoice_model->get_invoice_detail($id, false)->row();
        if ($this->db->trans_status() == true) {
            $this->db->trans_commit();
            $result = [
                'status' => true,
                'data' => [
                    'id' => $invoice->id,
                    'uuid' => $invoice->uuid
                ],
                'message' => 'Data berhasil disimpan',
            ];
        } else {
            $this->db->trans_rollback();
            $result = [
                'status' => false,
                'uuid' => null,
                'message' => 'Data gagal disimpan',
            ];
        }

        echo json_encode($result);
    }

    function update()
    {
        check_page('invoice', $this->session->userdata('id'), $this->session->userdata('role_id'), 'update');
        $id = $this->input->post('id');
        $uuid = $this->input->post('uuid');
        $status = $this->input->post('status');
        $description = $this->input->post('description');

        $done_date = null;
        $done_by = null;
        if ($status == 'SELESAI') {
            $this->db->set('done_date', date('Y-m-d'));
            $this->db->set('done_by', $this->session->userdata('username'));
        } else {
            $this->db->set('done_date', null);
            $this->db->set('done_by', null);
        }
        $data = [
            'status' => $status,
        ];
        $this->invoice_model->update_invoice($data, $id);

        $invoice = $this->invoice_model->get_invoice_detail($id, false)->row();
        if ($this->db->trans_status() == true) {
            $this->db->trans_commit();
            $result = [
                'status' => true,
                'data' => [
                    'id' => $invoice->id,
                    'uuid' => $invoice->uuid
                ],
                'message' => 'Data berhasil disimpan',
            ];
        } else {
            $this->db->trans_rollback();
            $result = [
                'status' => false,
                'uuid' => null,
                'message' => 'Data gagal disimpan',
            ];
        }

        echo json_encode($result);
    }

    function delete_data()
    {
        check_page('invoice', $this->session->userdata('id'), $this->session->userdata('role_id'), 'delete');
        $this->db->trans_begin();
        $uuid = $this->input->post('uuid');
        $this->invoice_model->delete_invoice($uuid);

        if ($this->db->trans_status() == true) {
            $this->db->trans_commit();
            $result = [
                'status' => true,
                'message' => 'Data berhasil dihapus',
            ];
        } else {
            $this->db->trans_rollback();
            $result = [
                'status' => false,
                'message' => 'Data gagal dihapus',
            ];
        }

        echo json_encode($result);
    }


    function save_data($status = null)
    {
        check_page('invoice', $this->session->userdata('id'), $this->session->userdata('role_id'), 'create');
        $this->db->trans_begin();
        $id = $this->input->post('id');
        $uuid = $this->input->post('uuid');
        $product_id = $this->input->post('product_id');
        $quantity = $this->input->post('quantity');
        $price = $this->input->post('price');
        $order_date = $this->input->post('order_date');
        $pickup_date = $this->input->post('pickup_date');
        $payment_date = $this->input->post('payment_date');
        $customer_name = $this->input->post('customer_name');
        $customer_phone = $this->input->post('customer_phone');
        $description = $this->input->post('description');
        $sale_no = $this->input->post('sale_no');
        $transfer_type = $this->input->post('transfer_type');
        $payment_remark = $this->input->post('payment_remark');
        $total = $this->input->post('total');
        $down_payment = replace_number_old($this->input->post('down_payment'));
        $outstanding_balance = replace_number_old($this->input->post('outstanding_balance'));

        $sale_no = ($sale_no) ?  $sale_no : $this->invoice_model->gen_sale_no();

        $status_payment = 'BELUM BAYAR';

        if ($outstanding_balance == 0) {
            $status_payment = 'LUNAS';
        } else if ($total > $down_payment) {
            $status_payment = 'KURANG BAYAR';
        }

        $data = [
            'sale_no'               => trim($sale_no),
            'customer_name'         => $customer_name,
            'customer_phone'        => $customer_phone,
            'order_date'            => $order_date,
            'pickup_date'           => $pickup_date,
            'total'                 => $total,
            'down_payment'          => $down_payment,
            'outstanding_balance'   => $outstanding_balance,
            'description'           => $description,
            'status'                => 'ANTRIAN', //SELESAI
            'status_payment'        => $status_payment,
            'user_id'               => $this->session->userdata('id'),
            'created_by'            => $this->session->userdata('username'),
        ];

        if ($id) {
            $sale_uuid = $uuid;
            $sale_id = $id;
            $this->invoice_model->update_invoice($data, $sale_id);
            $this->invoice_model->delete_invoice_products($sale_id);
        } else {
            $sale_uuid = $this->getUuid();
            $this->db->set('uuid', $sale_uuid);
            $this->invoice_model->save_invoice($data);
            $sale_id = $this->db->insert_id();

            if ($transfer_type != 'CASH') {
                $payment = [
                    'uuid' => $this->getUuid(),
                    'sale_id' => $sale_id,
                    'user_id' => $this->session->userdata('id'),
                    'transfer_type' => $transfer_type,
                    'amount' => $down_payment,
                    'date' => $payment_date,
                    'description' => $payment_remark,
                ];

                $this->invoice_model->save_invoice_payment($payment);
            }
        }


        $item_list = [];
        for ($i = 0; $i < sizeof($product_id); $i++) {
            $item_list[] = [
                'uuid'              => $this->getUuid(),
                'sale_id'           => $sale_id,
                'product_id'        => $product_id[$i],
                'price'             => $_price = replace_number_old($price[$i]),
                'qty'               => $_quantity = replace_number_old($quantity[$i]),
                'amount'            => ($_price * $_quantity),
                'created_by'        => $this->session->userdata('username')
            ];
        }
        if (sizeof($item_list) > 0) {
            $this->invoice_model->save_batch_invoice_product($item_list);
        } else {
            $this->db->trans_rollback();
            $result = [
                'status' => false,
                'message' => 'Product belum dipilih',
            ];

            echo json_encode($result);
            exit;
        }
        if ($this->db->trans_status() == true) {
            $this->db->trans_commit();
            $result = [
                'status' => true,
                'data' => [
                    'id' => $sale_id,
                    'uuid' => $sale_uuid
                ],
                'message' => 'Data berhasil disimpan',
            ];
        } else {
            $this->db->trans_rollback();
            $result = [
                'status' => false,
                'uuid' => null,
                'message' => 'Data gagal disimpan',
            ];
        }

        echo json_encode($result);
    }

    function cetak_inv($id)
    {
        check_page('invoice', $this->session->userdata('id'), $this->session->userdata('role_id'), 'cetak');
        $invoice = $this->invoice_model->get_invoice_detail($id, true)->row();
        // showme($this->db->last_query());
        if (!$invoice) {
            not_found_data('invoice');
        }

        $products = $this->invoice_model->get_invoice_products($invoice->id)->result();

        // showme($products);

        $mainData = array(
            'active'    => 'invoice',
            'title'     => "Cetak Ivnoice",
            'invoice'   => $invoice,
            'products'   => $products,
            'content'   => 'content/invoice/cetak'
        );
        $this->load->view('content/invoice/cetak', $mainData);
    }
}
