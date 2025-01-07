<?php

class Profile_model extends CI_Model
{
    public $users = 'users';

    function getUsers($id = null)
    {
        $this->db->select('*');
        if ($id) {
            $this->db->where('id', $id);
        }
        return $this->db->get($this->users);
    }
    function saveUser($data)
    {

        return $this->db->insert($this->users, $data);
    }
    function updateUser($data, $id)
    {
        return $this->db->update($this->users, $data, ['id' => $id]);
    }
}
