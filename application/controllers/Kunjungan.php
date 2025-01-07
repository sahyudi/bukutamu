<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Kunjungan extends CI_Controller
{

    public function __construct()
    {
        parent::__construct();
        isLogin();
        $this->load->model('user_model');
        $this->load->model('kunjungan_model');
    }

    public function index()
    {

        $data = [
            'active'    => 'kunjungan',
            'title'     => "Data Kunjungan",
            'users'     => [],
            'content'   => 'content/kunjungan/index'
        ];
        $this->load->view('template/top/main', $data);
    }

    public function add_data()
    {

        $data = [
            'active'    => 'kunjungan',
            'title'     => "Tambah Kunjungan",
            'pejabat'     => $this->user_model->getPejabat(),
            'content'   => 'content/kunjungan/form_add'
        ];
        $this->load->view('template/top/main', $data);
    }

    function get_data()
    {

        $result = $this->kunjungan_model->get_kunjungan()->result();
        echo json_encode($result);
    }


    function edit_data()
    {
        $id = $this->input->post('id');
        $result = $this->kunjungan_model->get_kunjungan($id, false)->row();
        echo json_encode($result);
    }


    public function save_data()
    {

        $nama = $this->input->post('nama');
        $nik = $this->input->post('nik');
        $tanggal = $this->input->post('tanggal');
        $jam = $this->input->post('jam');
        $perihal = $this->input->post('perihal');
        $pejabat = $this->input->post('pejabat');
        $nohp = $this->input->post('nohp');
        $foto = null;

        if ($_FILES['foto']['name']) {
            $upload = $this->_uploadPhoto('foto');

            if ($upload['status'] == false) {
                echo json_encode($upload['error']);
                die;
            } else {
                $foto = $upload['path'] . "/" . $upload['file_name'];
            }
        } else {
            echo json_encode([
                'status' => false,
                'message' => 'Foto tidak boleh kosong',
                'code' => 401
            ]);
            die;
        }

        $this->db->trans_begin();

        $data = [
            'nama_tamu' => $nama,
            'nik' => $nik,
            'tanggal' => $tanggal,
            'jam' => $jam,
            'perihal' => $perihal,
            'pejabat_id' => $pejabat,
            'nohp' => $nohp,
            'foto' => $foto,
            'status' => 'Permintaan',
            'created_by' => $this->session->userdata('username')
        ];

        $this->kunjungan_model->save_data($data);

        if ($this->db->trans_status() == true) {
            $this->db->trans_commit();
            $result = [
                'status' => true,
                'message' => 'Data berhasil disimpan',
                'code' => 201
            ];
        } else {
            $this->db->trans_rollback();
            $result = [
                'status' => false,
                'message' => 'Data gagal disimpan',
                'code' => 405
            ];
        }

        echo json_encode($result);
    }

    public function update_data()
    {

        $id = $this->input->post('id');
        $nama = $this->input->post('nama');
        $nik = $this->input->post('nik');
        $tanggal = $this->input->post('tanggal');
        $jam = $this->input->post('jam');
        $perihal = $this->input->post('perihal');
        $pejabat = $this->input->post('pejabat');
        $nohp = $this->input->post('nohp');

        $this->db->trans_begin();

        $data = [
            'nama_tamu' => $nama,
            'nik' => $nik,
            'tanggal' => $tanggal,
            'jam' => $jam,
            'perihal' => $perihal,
            'pejabat_id' => $pejabat,
            'nohp' => $nohp,
        ];

        $this->kunjungan_model->update_data($data, $id);

        if ($this->db->trans_status() == true) {
            $this->db->trans_commit();
            $result = [
                'status' => true,
                'message' => 'Data berhasil disimpan',
                'code' => 201
            ];
        } else {
            $this->db->trans_rollback();
            $result = [
                'status' => false,
                'message' => 'Data gagal disimpan',
                'code' => 405
            ];
        }

        echo json_encode($result);
    }


    public function save_konfirmasi()
    {

        $id = $this->input->post('id');
        $status = $this->input->post('status');

        $this->db->trans_begin();

        $data = [
            'status' => $status,
        ];

        $this->kunjungan_model->update_data($data, $id);


        if ($this->db->trans_status() == true) {
            $this->db->trans_commit();
            $result = [
                'status' => true,
                'message' => 'Data berhasil disimpan',
                'code' => 201
            ];
        } else {
            $this->db->trans_rollback();
            $result = [
                'status' => false,
                'message' => 'Data gagal disimpan',
                'code' => 405
            ];
        }

        echo json_encode($result);
    }

    function delete_data()
    {

        $this->db->trans_begin();

        $id = $this->input->post('id');
        $this->kunjungan_model->delete_data($id);
        if ($this->db->trans_status() === true) {
            $this->db->trans_commit();
            $result = [
                'status' => true,
                'message' => 'Data berhasil dihapus'
            ];
        } else {
            $this->db->trans_rollback();
            $result = [
                'status' => false,
                'message' => 'Data gagal di hapus'
            ];
        }

        echo json_encode($result);
    }
}
