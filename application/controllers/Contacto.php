<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Contacto extends MY_Controller {
	function __construct(){
	parent::__construct();
	$this->load->helper('url');
	$this->load->model('contactomodel','modcontacto');
}

	public function index()
	{
		$title = 'CONTACTO';	
		$description = '';
		$keywords = '';
		$this->mViewData['title'] = $title;
		$this->mViewData['description'] = $description;
		$this->mViewData['keywords'] = $keywords;

		$this->render('page/contact', 'full_width');
	}

	public function proceso(){
		$data = array(
			'email' =>$this->input->post('email') ,

		 );
		// echo('<pre>');
		// echo $data['name'];
		// die;
		$this->modcontacto->savecontac($data);
		redirect('gracias');
	}
}
