<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Error extends CI_Controller
{


    public function index()
    {
        $this->load->view('template/404');
    }


    function error_404()
    {
        $this->load->view('template/404');
    }
}
