<?php

use phpDocumentor\Reflection\Types\This;

defined('BASEPATH') or exit('No direct script access allowed');

class Profile extends CI_Controller
{

    // protected $username = decode($_SESSION['username']);

    public function __construct()
    {
        parent::__construct();
        isLogin();
        $this->load->model('profile_model');
    }

    public function index()
    {
        $user = $this->profile_model->getUsers($this->session->userdata('id'))->row();
        // showme($user);
        $mainData = array(
            'active'    => 'Profile',
            'title'     => "Data Profile",
            'content'   => 'content/profile/index',
            'user'      => $user
        );
        $this->load->view('template/top/main', $mainData);
    }

    public function changePassword()
    {
        $mainData = array(
            'active'    => 'profile',
            'title'     => "Ganti Password",
            'content'   => 'content/profile/change_password'
        );
        $this->load->view('template/top/main', $mainData);
    }

    function newPassword()
    {
        $old_password = $this->input->post('old_password');
        $new_password = $this->input->post('new_password');
        $confirm_password = $this->input->post('confirm_password');

        $user = $this->db->get_where('users', ['username' => $this->session->userdata('username')])->row();
        if ($user) {
            if (password_verify($old_password, $user->password)) {
                $data = [
                    'password' => password_hash($new_password, PASSWORD_DEFAULT),
                ];
                $this->db->update('users', $data, ['username' => $user->username]);

                if ($this->db->trans_status() == true) {
                    $this->db->trans_commit();
                    $result = [
                        'status' => true,
                        'message' => 'Password berhasil diganti',
                    ];
                } else {
                    $this->db->trans_rollback();
                    $result = [
                        'status' => false,
                        'message' => 'failed',
                        'message' => 'Password gagal diganti',
                    ];
                }
            } else {
                $result = [
                    'status' => false,
                    'message' => 'failed',
                    'info' => 'Password lama anda salah',
                ];
            }
        }


        echo json_encode($result);
    }
    function saveProfile()
    {
        $this->db->trans_begin();
        $id = $this->session->userdata('id');

        $data = [
            'fullname' => htmlspecialchars($this->input->post('nama')),
        ];

        if ($id) {
            $this->profile_model->updateUser($data, $id);
        } else {
            $this->profile_model->saveUser($data);
        }

        if ($this->db->trans_status() === true) {
            $this->db->trans_commit();
            $result = [
                'status' => true,
                'message' => 'Profile berhasil diperbarui',
            ];
        } else {
            $this->db->trans_rollback();
            $result = [
                'status' => false,
                'message' => 'Profile gagal diperbarui',
            ];
        }

        echo json_encode($result);
    }

    function editProfile()
    {
        $result = $this->db->get_where('users', ['username' => $this->session->userdata('username')])->row();
        echo json_encode($result);
    }


    function deletePrice()
    {
        $this->db->trans_begin();

        $id = $this->input->post('id');
        $this->price_model->deletePrice($id);
        if ($this->db->trans_status() === true) {
            $this->db->trans_commit();
            $result = [
                'status' => true,
                'message' => 'success',
                'info' => 'Produk berhasil dihapus',
            ];
        } else {
            $this->db->trans_rollback();
            $result = [
                'status' => false,
                'message' => 'failed',
                'info' => 'Produk gagal dihapus',
            ];
        }

        echo json_encode($result);
    }
}
