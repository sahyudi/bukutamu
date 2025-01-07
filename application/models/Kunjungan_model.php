<?php

class Kunjungan_model extends CI_Model
{

    protected $kunjungan = 'kunjungan';

    function get_kunjungan($id = null, $uuid = null)
    {
        $start_date = $this->input->get('start_date');
        $end_date = $this->input->get('end_date');
        $status_filter = $this->input->get('status_filter');
        $this->db->select('K.*, P.nama as nama_pejabat');
        if ($id) {
            $this->db->where('K.id', $id);
        }

        if ($status_filter) {
            $this->db->where('K.status', $status_filter);
        }

        if ($start_date != "" && $start_date != "") {
            $this->db->where("(K.tanggal >='$start_date' AND K.tanggal <= '$end_date')");
        }

        $this->db->join('users P', 'P.id = K.pejabat_id', 'left');
        $result = $this->db->get($this->kunjungan . ' K');
        return $result;
    }

    function save_data($data)
    {
        $this->db->set('created_by', $this->session->userdata('username'));
        return $this->db->insert($this->kunjungan, $data);
    }

    function update_data($data, $id)
    {
        // $this->db->set('updated_by', $this->session->userdata('username'));
        return $this->db->update($this->kunjungan, $data, ['id' => $id]);
    }

    function delete_data($id)
    {
        return $this->db->delete($this->kunjungan, ['id' => $id]);
    }
}
