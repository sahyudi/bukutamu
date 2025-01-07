<?php
defined('BASEPATH') or exit('No direct script access allowed');

class User extends CI_Controller
{

    public function __construct()
    {
        parent::__construct();
        isLogin();
        $this->load->model('user_model');
    }

    public function index()
    {

        $data = [
            'active'    => 'user',
            'title'     => "Users",
            'users'     => [],
            'content'   => 'content/users/index'
        ];
        $this->load->view('template/top/main', $data);
    }

    function get_users()
    {

        $result = $this->user_model->get_users()->result();
        echo json_encode($result);
    }


    function edit_user()
    {
        $id = $this->input->post('id');
        $result = $this->user_model->get_users($id, true)->row();
        // showme($this->db->last_query());
        echo json_encode($result);
    }

    /**
     * New User
     */

    public function reset_password()
    {
        $id = $this->input->post('user_id');
        $password = $this->input->post('password');
        $confirm_password = $this->input->post('confirm_password');

        if ($password != $confirm_password) {
            $result = [
                'status' => false,
                'message' => 'Password konfirmasi tidak sama',
                'code' => 401
            ];
            echo json_encode($result);
            exit;
        }

        $this->db->trans_begin();

        $data = [
            'password' => password_hash($password, PASSWORD_DEFAULT),
        ];

        $this->user_model->update_user($data, $id);


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

    function get_user()
    {

        $result = $this->user_model->get_users()->result();
        echo json_encode($result);
    }

    public function save_user()
    {

        $username = strtolower(trim($this->input->post('username')));
        $name = $this->input->post('name');
        $nohp = $this->input->post('nohp');
        $is_active = $this->input->post('is_active');
        $password = $this->input->post('password');
        $confirm_password = $this->input->post('confirm_password');
        $jabatan = $this->input->post('jabatan');

        $checkUsername = $this->user_model->checkUsername($username)->row();

        if ($checkUsername) {
            $result = [
                'status' => false,
                'message' => 'username ' . $username . ' sudah digunakan',
                'code' => 400
            ];
            echo json_encode($result);
            exit;
        }
        if ($password != $confirm_password) {
            $result = [
                'status' => false,
                'message' => 'Password konfirmasi tidak sama',
                'code' => 401
            ];
            echo json_encode($result);
            exit;
        }

        $this->db->trans_begin();

        $data = [
            'uuid' => $this->getUuid(),
            'nama' => $name,
            'username' => $username,
            'nohp' => $nohp,
            'password' => password_hash($password, PASSWORD_DEFAULT),
            'jabatan' => $jabatan,
            'is_active' => $is_active,
            'created_by' => $this->session->userdata('username')
        ];

        $this->user_model->save_user($data);


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

    public function update_user()
    {

        $id = $this->input->post('id');
        $name = $this->input->post('name');
        $nohp = $this->input->post('nohp');
        $jabatan = $this->input->post('jabatan');
        $is_active = $this->input->post('is_active');

        $this->db->trans_begin();

        $data = [
            'nama' => $name,
            'nohp' => $nohp,
            'jabatan' => $jabatan,
            'is_active' => $is_active
        ];

        $this->user_model->update_user($data, $id);


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

    function delete_user()
    {

        $this->db->trans_begin();

        $id = $this->input->post('id');
        $this->user_model->softDeleteUser($id);
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
