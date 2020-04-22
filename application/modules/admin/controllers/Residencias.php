<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Residencias extends Admin_Controller {
		function __construct(){
		parent::__construct();
		$this->load->library('form_builder');
	}

	public function index()
	{
		$residencias = $this->generate_crud('reservations');
		$residencias->change_field_type('estatus','hidden',1);
		$residencias->change_field_type('created_at','hidden',date('Y-m-d H:i:s'));
		$residencias->set_field_upload('path_image', 'assets/uploads/residences');
		$residencias->set_field_upload('movil_image', 'assets/uploads/residences');
		$residencias->set_field_upload('image_icon1', 'assets/uploads/iconos');
		$residencias->set_field_upload('image_icon2', 'assets/uploads/iconos');
		$residencias->set_field_upload('image_icon3', 'assets/uploads/iconos');
		$residencias->set_field_upload('image_icon4', 'assets/uploads/iconos');
		$residencias->set_field_upload('detailImage', 'assets/uploads/residences');
		$residencias->set_field_upload('imageFistResidence', 'assets/uploads/residences');
		$residencias->set_field_upload('imageSecondResidence', 'assets/uploads/residences');
		$residencias->set_field_upload('imageThirdResidence', 'assets/uploads/residences');


		$this->render_crud();

	}
}
