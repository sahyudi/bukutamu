<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Role extends CI_Controller
{


    public function __construct()
    {
        parent::__construct();
        isLogin();
        $this->load->model('model_role');
    }

    public function index()
    {
        check_page('role', $this->session->userdata('id'), $this->session->userdata('role_id'), 'read');

        $data = array(
            'active'    => 'role',
            'title'     => "Role",
            'content'   => 'content/role/index'
        );
        $this->load->view('template/top/main', $data);
    }

    public function role_access($id)
    {
        $data = array(
            'active'    => 'role',
            'title'     => "Role Access",
            'role'     => $this->model_role->get_role($id)->row(),
            'content'   => 'content/role/role_access'
        );
        // showme($data['role']);
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

    function get_json_role()
    {
        echo $this->model_role->get_json_role();
    }

    function get_user_roles()
    {
        echo $this->model_role->get_user_roles();
    }

    function delete_role()
    {
        $this->db->trans_begin();
        $id = $this->input->post('id');

        $this->model_role->delete($id);
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

    function get_role()
    {
        $id = $this->input->post('id');
        if ($id) {
            $result = $this->model_role->get_role($id)->row();

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
            $result = $this->model_role->get_role()->result();
            $return = [
                'status' => true,
                'message' => 'Data belum dipilih',
                'data' => $result
            ];
        }

        echo json_encode($return);
    }

    function save_role_access()
    {
        // check_page('group', $this->session->userdata('id'), $this->session->userdata('role_id'), 'create');

        $this->db->trans_begin();

        $id = $this->input->post('id');
        $groupId = $this->input->post('role');
        $menu_id = $this->input->post('menu_id[]');
        $data = [];
        $this->db->delete('role_menu', ['group_id' => $groupId]);
        for ($i = 0; $i < count($menu_id); $i++) {
            $role = $this->input->post('role_' . $menu_id[$i]);
            if ($role) {
                $data[] = [
                    'group_id' => $groupId,
                    'menu_id' => $menu_id[$i],
                    'role_access' => ($role) ? json_encode($role) : '',
                    'updated_by' => $this->session->userdata('username'),
                    'created_by' => $this->session->userdata('username'),
                ];
            }
        }
        if ($data) {
            $this->db->insert_batch('role_menu', $data);
        }

        if ($this->db->trans_status() === FALSE) {
            $this->db->trans_rollback();
            $result = [
                'status' => false,
                'message' => 'Role access gagal disimpan',
            ];
        } else {
            $this->db->trans_commit();

            $result = [
                'status' => true,
                'message' => 'Role access berhasil disimpan',
            ];
        }

        echo json_encode($result);
    }
}
