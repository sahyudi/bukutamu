<?php
defined('BASEPATH') or exit('No direct script access allowed');

use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;
use PhpOffice\PhpSpreadsheet\Style\Alignment;

class Transfer extends CI_Controller
{

    public function __construct()
    {
        parent::__construct();
        isLogin();
        $this->load->model('transfer_model');
        $this->load->model('product_model');
        $this->load->model('user_model');
        $this->load->model('invoice_model');
    }

    function index()
    {
        check_page('transfer', $this->session->userdata('id'), $this->session->userdata('role_id'), 'read');

        $transfer_type = $this->transfer_model->transfer_type();
        $sales = $this->invoice_model->get_invoices()->result();
        $mainData = array(
            'active'    => 'transfer',
            'title'     => "Data Transfer",
            'transfer_type' => $transfer_type,
            'sales'     => $sales,
            'content'   => 'content/transfer/index'
        );
        $this->load->view('template/top/main', $mainData);
    }

    function get_tranfer_items()
    {
        $transfers = $this->transfer_model->get_tranfer_items();

        echo json_encode($transfers);
    }

    function get_transfers()
    {
        $transfers = $this->transfer_model->get_transfers()->result();

        echo json_encode($transfers);
    }

    function get_transfer()
    {
        $uuid = $this->input->post('uuid');
        $invoice = $this->transfer_model->get_transfer_detail($uuid, true)->row();
        echo json_encode($invoice);
    }


    function delete_payment()
    {
        check_page('transfer', $this->session->userdata('id'), $this->session->userdata('role_id'), 'delete');
        $this->db->trans_begin();
        $uuid = $this->input->post('uuid');
        $this->transfer_model->delete_payment($uuid);

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


    function save_payment()
    {
        check_page('transfer', $this->session->userdata('id'), $this->session->userdata('role_id'), 'create');
        $this->db->trans_begin();
        $id = $this->input->post('id');
        $uuid = $this->input->post('uuid');
        $sale_id = $this->input->post('sale_id');
        $date = $this->input->post('date');
        $description = $this->input->post('description');
        $transfer_type = $this->input->post('transfer_type');
        $amount = replace_number_old($this->input->post('amount'));

        $payment = [
            'sale_id' => $sale_id,
            'transfer_type' => $transfer_type,
            'user_id' => $this->session->userdata('id'),
            'amount' => $amount,
            'date' => $date,
            'description' => $description,
        ];
        if ($id) {
            $this->transfer_model->update_payment($payment, $id);
        } else {
            $this->db->set('uuid', $this->getUuid());
            $this->transfer_model->save_payment($payment);
        }

        if ($this->db->trans_status() == true) {
            $this->db->trans_commit();
            $result = [
                'status' => true,
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
}
