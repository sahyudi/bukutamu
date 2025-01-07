<?php

class User_model extends CI_Model
{

    protected $users = 'users';

    function get_users($id = null, $uuid = true)
    {
        $this->db->select('*');
        if ($id) {
            if ($uuid) {
                $this->db->where('U.uuid', $id);
            } else {
                $this->db->where('U.id', $id);
            }
        }
        $result = $this->db->get($this->users . ' U');
        return $result;
    }


    function getUsers($id = null)
    {
        $this->db->select('*');
        if ($id) {
            $this->db->where('U.id', $id);
        }
        $result = $this->db->get($this->users . ' U');
        return $result;
    }

    function getPejabat()
    {
        $this->db->select('*');
        $this->db->where_not_in('U.jabatan', ['Admin', 'staff']);
        $result = $this->db->get($this->users . ' U')->result();
        return $result;
    }

    function getrole($id = null)
    {
        if ($id) {
            $this->db->where('id', $id);
        }
        $result = $this->db->get('role');
        return $result;
    }

    function checkUsername($username)
    {
        $this->db->where('username', $username);
        return $this->db->get($this->users);
    }

    function save_user($data)
    {
        $this->db->set('created_at', $this->session->userdata('username'));
        return $this->db->insert($this->users, $data);
    }

    function update_user($data, $id)
    {
        $this->db->set('updated_at', $this->session->userdata('username'));
        return $this->db->update($this->users, $data, ['id' => $id]);
    }

    function delete_user($id)
    {
        return $this->db->delete($this->users, ['id' => $id]);
    }
}
