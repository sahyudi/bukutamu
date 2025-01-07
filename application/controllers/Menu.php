<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Menu extends CI_Controller
{


    public function __construct()
    {
        parent::__construct();
        isLogin();
        $this->load->model('model_menu');
    }

    public function list_data()
    {
        // check_page('app/menus', $this->session->userdata('id'), $this->session->userdata('role_id'), 'read');
        $data = array(
            'active'    => 'app/menu',
            'title'     => "Data Menu",
            'content'   => 'content/menu/index'
        );

        $this->load->view('template/top/main', $data);
    }

    function save_menu()
    {
        // check_page('app/menus', $this->session->userdata('id'), $this->session->userdata('role_id'), 'create');


        $this->db->trans_begin();
        $id = $this->input->post('id');
        $parent = htmlentities($this->input->post('parent'));
        $name = htmlentities($this->input->post('name'));
        $url = htmlentities($this->input->post('url'));
        $icon = htmlentities($this->input->post('icon'));
        $level = htmlentities($this->input->post('level'));
        $order = htmlentities($this->input->post('order'));
        $role = $this->input->post('role[]');
        $is_active = htmlentities($this->input->post('is_active'));


        $data = [
            'name' => $name,
            'parent_id' => $parent,
            'url' => $url,
            'icon' => $icon,
            'level' => $level,
            'order' => $order,
            'role' => json_encode($role),
            // 'is_active'
        ];

        if ($id) {
            $this->model_menu->update($data, $id);
        } else {
            $this->model_menu->save($data);
        }

        if ($this->db->trans_status() === true) {
            $this->db->trans_commit();
            $return = [
                'status' => true,
                'message' => 'Data berhasil disimpan',
                'data' => []
            ];
        } else {
            $this->db->trans_rollback();
            $return = [
                'status' => false,
                'message' => 'Data gagal disimpan',
                // 'data' => []
            ];
        }

        echo json_encode($return);
    }


    function get_json_parent()
    {
        $result = $this->model_menu->get_parent_menu()->result();
        echo json_encode($result);
    }

    function get_json_menus()
    {
        echo $this->model_menu->get_json_menus();
    }

    function get_profile_menus()
    {
        echo $this->model_menu->get_profile_menus();
    }

    function delete_menu()
    {
        // check_page('app/menu', $this->session->userdata('id'), $this->session->userdata('role_id'), 'delete');

        $this->db->trans_begin();
        $id = $this->input->post('id');

        $this->model_menu->delete($id);
        if ($this->db->trans_status() === true) {
            $this->db->trans_commit();
            $return = [
                'status' => true,
                'message' => 'Data berhasil dihapus',
                'data' => []
            ];
        } else {
            $this->db->trans_rollback();
            $return = [
                'status' => false,
                'message' => 'Data gagal dihapus',
                // 'data' => []
            ];
        }

        echo json_encode($return);
    }

    function get_menu()
    {
        $id = $this->input->post('id');
        if ($id) {
            $result = $this->model_menu->get_menu($id)->row();

            if ($result) {
                $return = [
                    'status' => true,
                    'message' => 'Data ditemukan',
                    'data' => $result
                ];
            } else {
                $return = [
                    'status' => false,
                    'message' => 'Data tidak ditemukan',
                    // 'data' => []
                ];
            }
        } else {
            $return = [
                'status' => false,
                'message' => 'Data belum dipilih',
                // 'data' => []
            ];
        }

        echo json_encode($return);
    }


    public function role_access($id)
    {
        $data = array(
            'active'    => 'app/menu',
            'title'     => "Role Access",
            'role'     => $this->model_role->get_role($id)->row(),
            'content'   => 'role/role_access'
        );
        // var_dump($data);
        $this->load->view('template/top/main', $data);
    }

    function save_role()
    {
        $this->db->trans_begin();
        $id = $this->input->post('id');
        $nama = htmlentities($this->input->post('nama'));


        $data = [
            'name' => $nama
        ];


        if ($id) {
            $this->model_role->update($data, $id);
        } else {
            $this->model_role->save($data);
        }

        if ($this->db->trans_status() === true) {
            $this->db->trans_commit();
            $return = [
                'status' => true,
                'message' => 'Data berhasil disimpan',
                'data' => []
            ];
        } else {
            $this->db->trans_rollback();
            $return = [
                'status' => false,
                'message' => 'Data gagal disimpan',
                // 'data' => []
            ];
        }

        echo json_encode($return);
    }
}
