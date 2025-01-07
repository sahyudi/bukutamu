<?php

class Product_model extends CI_Model
{
    protected $products = 'products';
    protected $product_transfers = "product_transfers";


    function get($id = null)
    {
        $this->db->select("*");
        if ($id) {
            $this->db->where('id', $id);
        }
        $this->db->where('deleted_at IS NULL');
        $this->db->order_by('product_name', 'ASC');
        return $this->db->get($this->products);
    }


    function get_sale()
    {
        $product_id = $this->input->post('product_id');
        $this->db->select("*", false);
        $this->db->from($this->products);
        $this->db->where_not_in('id', $product_id);
        $this->db->where('deleted_at IS NULL');
        $this->db->order_by('product_name', 'ASC');
        return $this->db->get();
    }

    function save($data)
    {
        $this->db->set('created_by', $this->session->userdata('username'));
        return $this->db->insert($this->products, $data);
    }

    function softDelete($id)
    {
        $data = [
            'deleted_by' => $this->session->userdata('username'),
        ];
        $this->db->set('deleted_at', "current_timestamp", false);
        return $this->db->update($this->products, $data, ['id' => $id]);
    }


    function update($data, $id)
    {
        $this->db->set('updated_by', $this->session->userdata('username'));
        return $this->db->update($this->products, $data, ['id' => $id]);
    }



    function get_product_sale()
    {
        $product_id = $this->input->post('product_id');
        $this->db->select("id, id as product_id, product_name, description, description as product_description");
        $this->db->where_not_in('id', $product_id);
        $this->db->where('deleted_at IS NULL');
        return $this->db->get($this->products);
    }

    function get_product_sale_detail($product_id)
    {
        $this->db->select("id, id as product_id, product_name, description, description as product_description");
        $this->db->where('id', $product_id);
        $this->db->where('deleted_at IS NULL');
        return $this->db->get($this->products)->row();
    }
}
