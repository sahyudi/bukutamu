<?php

class Model_role extends CI_Model
{
    protected $role = 'role';
    protected $users = 'users';



    function get_role($id = null)
    {
        $this->db->select('id, name');
        if ($id) {
            $this->db->where('id', $id);
        }
        return $this->db->get($this->role);
    }

    function get_json_role()
    {
        $this->load->library('datatables');
        $this->datatables->select('id, UPPER(name) AS nama');
        $this->datatables->from($this->role);
        // $this->datatables->where('id !=', 1);
        $this->datatables->add_column('view', '<button type="button" class="btn btn-info btn-xs" onclick="editrole($1)">Edit</button>  <a ype="button" class="btn btn-danger btn-xs" onclick="deleterole($1)">Hapus</a>', 'id');
        return $this->datatables->generate();
    }

    function get_user_roles()
    {
        $this->load->library('datatables');
        $this->datatables->select("UPPER(R.name) AS role, COUNT(U.id) AS jumlah", false);
        $this->datatables->join($this->role . ' R', 'U.role_id = R.id', 'right');
        $this->datatables->from($this->users . ' U');
        $this->datatables->group_by('R.id');
        return $this->datatables->generate();
    }

    function save($data)
    {
        $this->db->set('created_by', $this->session->userdata('username'));
        return $this->db->insert($this->role, $data);
    }

    function update($data, $id)
    {
        $this->db->set('updated_by', $this->session->userdata('username'));
        return $this->db->update($this->role, $data, ['id' => $id]);
    }

    function delete($id)
    {
        return $this->db->delete($this->role, ['id' => $id]);
    }
}
