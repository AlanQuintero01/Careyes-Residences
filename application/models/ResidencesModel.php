<?php 

class ResidencesModel extends MY_Model {

	public function get_residences_by_id($id){
        $this->db->select('*');
        $this->db->from('reservations');
        $this->db->where('id',$id);
        $consulta = $this->db->get();
        $resultado = $consulta->result();
        //echo $this->db->last_query();
        return $resultado;
    }
    public function get_reservations_estatus(){
        //$this->db->order_by('nombre','ASC');
        $this->db->where("estatus", 1);
        $query = $this->db->get('reservations');
        //echo $this->db->last_query();
        return $query->result();
    }
    public function get_elements_residences($id)
    {
        $query = $this->db->query('SELECT * FROM reservations WHERE id = "' . $id .'" ');
        //echo $this->db->last_query();
        return $query->result();
    }

}









