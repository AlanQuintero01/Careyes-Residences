<?php

class Contactomodel extends CI_Model
{
	
    public function savecontac($data)
	{
		$this->db->insert('newsletter',$data);
		return $this->db->insert_id();
	}
}