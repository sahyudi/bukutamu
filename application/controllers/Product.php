<?php

use phpDocumentor\Reflection\Types\This;
use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;
use PhpOffice\PhpSpreadsheet\Style\Alignment;

defined('BASEPATH') or exit('No direct script access allowed');

class Product extends CI_Controller
{

    public function __construct()
    {
        parent::__construct();
        isLogin();
        $this->load->model('product_model');
    }

    public function index()
    {
        check_page('product/data', $this->session->userdata('id'), $this->session->userdata('role_id'), 'read');

        $mainData = array(
            'active'    => 'product/data',
            'title'     => "Data Barang",
            'content'   => 'content/product/index'
        );
        $this->load->view('template/top/main', $mainData);
    }


    function get_product()
    {
        $result = $this->product_model->get()->result();
        echo json_encode($result);
    }

    function get_data()
    {
        $result = $this->product_model->get_data_items()->result();
        echo json_encode($result);
    }

    function save_data()
    {

        $this->db->trans_begin();
        $id = $this->input->post('id');

        $data = [
            'product_name' => trim($this->input->post('name')),
            'description' => trim($this->input->post('desc')),
            'sell_price' => replace_number_old($this->input->post('sell_price'))
        ];
        if ($id) {
            check_page('product/data', $this->session->userdata('id'), $this->session->userdata('role_id'), 'update');

            $this->product_model->update($data, $id);
        } else {
            check_page('product/data', $this->session->userdata('id'), $this->session->userdata('role_id'), 'create');

            $this->db->set('uuid', $this->getUuid());
            $this->product_model->save($data);
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
                'message' => 'Data gagal disimpan',
            ];
        }

        echo json_encode($result);
    }


    function edit()
    {
        $id = $this->input->post('id');
        $result = $this->product_model->get($id)->row();
        echo json_encode($result);
    }


    function delete_data()
    {
        check_page('product/data', $this->session->userdata('id'), $this->session->userdata('role_id'), 'delete');

        $this->db->trans_begin();

        $id = $this->input->post('id');
        $this->product_model->softDelete($id);
        if ($this->db->trans_status() === true) {
            $this->db->trans_commit();
            $result = [
                'status' => true,
                'message' => 'Data berhasil dihapus',
            ];
        } else {
            $this->db->trans_rollback();
            $result = [
                'status' => false,
                'message' => 'Data gagal di hapus',
            ];
        }

        echo json_encode($result);
    }


    function stockBarang()
    {
        check_page('product/stock', $this->session->userdata('id'), $this->session->userdata('role_id'), 'read');
        $products = $this->product_model->get_data_items()->result();

        $mainData = array(
            'active'    => 'item',
            'title'     => "Stock Product",
            'products'     => $products,
            'content'   => 'content/item/stock-barang'
        );
        $this->load->view('template/top/main', $mainData);
    }

    function get_item_stock()
    {
        $item_id = $this->input->post('id');
        $data = $this->product_model->get_item_stock($item_id)->result();
        echo json_encode($data);
    }

    function get_items_list()
    {
        $result = $this->product_model->get_item_list()->result();
        echo json_encode($result);
    }



    function get_sale()
    {
        $result = $this->product_model->get_sale()->result();
        echo json_encode($result);
    }

    function get_sale_product()
    {
        $id = $this->input->post('id');
        $result = $this->product_model->get($id)->row();
        echo json_encode($result);
    }

    function get_product_sale()
    {
        $data = $this->product_model->get_product_sale()->result();
        echo json_encode($data);
    }

    function get_product_detail()
    {
        $product_id = $this->input->post('product_id');

        $data = $this->product_model->get_product_sale_detail($product_id);
        echo json_encode($data);
    }
}
