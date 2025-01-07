<?php

class Model_menu extends CI_Model
{
    protected $menus = 'menus';

    function get_menu($id = null)
    {
        $this->db->select('id, parent_id, name, url, icon, level, order, role, is_active');
        if ($id) {
            $this->db->where('id', $id);
        }
        return $this->db->get($this->menus);
    }

    function get_parent_menu()
    {
        $level = intval($this->input->post('level'));

        $level = ($level === 0) ? $level : $level - 1;

        $this->db->select('name AS parent_name, id AS parent_id');
        $this->db->where('level', $level);
        return $this->db->get($this->menus);
    }

    function get_json_menus()
    {
        $this->load->library('datatables');
        $this->datatables->select("id, parent_id, `name`, url, icon, `level`, `order`, role, is_active,(CASE 
                                WHEN ab.parent_id = 0 THEN 'Master'
                                ELSE (
                                            SELECT ac.`name` 
                                            FROM menus ac 
                                            WHERE ac.id = ab.parent_id
                                        )
                            END) AS parent_name", false);
        $this->datatables->from($this->menus . ' ab');
        // $this->datatables->add_column('view', '<button type="button" class="btn btn-info btn-xs" onclick="editmenu($1)">Edit</button>  <a ype="button" class="btn btn-danger btn-xs" onclick="deletemenu($1)">Hapus</a>', 'id');
        return $this->datatables->generate();
    }

    function get_profile_menus()
    {
        $this->load->library('datatables');
        $this->datatables->select('UPPER(A.nama) AS menu, COUNT(P.id) AS jumlah');
        $this->datatables->join($this->menus, 'P.menu_id = A.id', 'right');
        $this->datatables->from($this->profile);
        $this->datatables->group_by('A.id');
        return $this->datatables->generate();
    }

    function save($data)
    {
        $this->db->set('created_by', $this->session->userdata('username'));
        return $this->db->insert($this->menus, $data);
    }

    function update($data, $id)
    {
        $this->db->set('updated_by', $this->session->userdata('username'));
        return $this->db->update($this->menus, $data, ['id' => $id]);
    }

    function delete($id)
    {
        return $this->db->delete($this->menus, ['id' => $id]);
    }
}
