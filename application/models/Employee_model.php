<?php

class Employee_model extends CI_Model
{

    public $role = 'role';
    public $department = 'department';
    public $users = 'users';
    public $user_menu = 'user_menu';
    public $branchs = 'branchs';
    /**
     * Form validation rules
     */
    public function rules()
    {
        return [
            [
                'field' => 'username',
                'label' => 'Username',
                'rules' => 'required|trim|is_unique[users.username]'
            ],
            [
                'field' => 'name',
                'label' => 'Nama',
                'rules' => 'required'
            ],
            [
                'field' => 'nohp',
                'label' => 'No. HP',
                'rules' => 'required'
            ],
            [
                'field' => 'is_active',
                'label' => 'Status',
                'rules' => 'required'
            ],
        ];
    }

    function getEmployee($id = null, $uuid = true)
    {
        $this->db->select('U.id, U.uuid, U.is_active, U.nohp, U.role_id, U.username, U.fullname AS name, G.name AS role_name, B.branch_name, U.branch_id');
        if ($id) {
            if ($uuid) {
                $this->db->where('U.uuid', $id);
            } else {
                $this->db->where('U.id', $id);
            }
        }
        $this->db->join($this->role . ' G', 'U.role_id = G.id', 'left');
        $this->db->join($this->branchs . ' B', 'U.branch_id = B.id', 'left');
        $this->db->where_not_in('U.role_id', [1]);
        $this->db->where('U.is_deleted', 'N');
        $result = $this->db->get($this->users . ' U');
        return $result;
    }

    function checkUsername($username)
    {
        $this->db->where('is_deleted', 'N');
        $this->db->where('username', $username);
        return $this->db->get($this->users);
    }


    function getrole($id = null)
    {
        if ($id) {
            $this->db->where('id', $id);
        }
        $result = $this->db->get('role');
        return $result;
    }


    function saveEmployee($data)
    {
        $this->db->set('created_by', $this->session->userdata('username'));
        return $this->db->insert($this->users, $data);
    }

    function updateEmployee($data, $id)
    {
        $this->db->set('updated_by', $this->session->userdata('username'));
        return $this->db->update($this->users, $data, ['id' => $id]);
    }


    function softDeleteEmployee($id)
    {
        $data = [
            'is_deleted' => 'Y',
            'deleted_by' => $this->session->userdata('username'),
        ];
        $this->db->set('deleted_at', "current_timestamp", false);
        return $this->db->update($this->users, $data, ['id' => $id]);
    }

    function deleteEmployee($id)
    {

        $query = $this->db->delete($this->users, ['id' => $id]);
        return $query;
    }

    function getRoleUsers($userId)
    {
        if ($userId) {

            $query = "SELECT 
                        GM.id,
                        M.`name` AS menu_name,
                        M.icon,
                        M.role,
                        G.`name` AS username,
                        GM.role_access
                    FROM user_menu GM
                    JOIN menus M ON GM.menu_id = M.id
                    JOIN users G ON GM.user_id = G.id 
                    WHERE GM.user_id = $userId";
        } else {
            $query = "SELECT 
                        GM.id,
                        M.`name` AS menu_name,
                        M.icon,
                        M.role,
                        G.`name` AS username,
                        GM.role_access
                    FROM user_menu GM
                    JOIN menus M ON GM.menu_id = M.id
                    JOIN users G ON GM.user_id = G.id";
        }

        return $this->db->query($query);
    }

    function saveUserRole($data)
    {
        return $this->db->insert($this->user_menu, $data);
    }

    function updateUserRole($data, $id)
    {
        return $this->db->update($this->user_menu, $data, ['id' => $id]);
    }

    function deleteRoleUser($id)
    {
        return $this->db->delete($this->user_menu, ['id' => $id]);
    }
}
