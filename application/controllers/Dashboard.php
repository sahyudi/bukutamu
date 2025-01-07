<?php
defined('BASEPATH') or exit('No direct script access allowed');

use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;
use PhpOffice\PhpSpreadsheet\Style\Alignment;

class Dashboard extends CI_Controller
{

    public function __construct()
    {
        parent::__construct();
        isLogin();
        $this->load->model('invoice_model');
    }

    public function index()
    {

        // check_page('dashboard', $this->session->userdata('id'), $this->session->userdata('role_id'), 'read');
        $data = [
            'active'    => 'dashboard',
            'title'     => "Home",
            'sale_invoice' => 0,
            'sale_invoice_due' => 0,
            'purchase_invoice' => 0,
            'purchase_invoice_due' => 0,
            'content'   => 'content/home/index',
        ];
        $this->load->view('template/top/main', $data);
    }

    function error_404()
    {
        $this->load->view('template/404');
    }
}
