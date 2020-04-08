<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/**
 * Home page
 */
class Reservation extends MY_Controller {
	function __construct(){
		parent::__construct();
		$this->load->model('residencesModel','modredidences');
		$this->load->helper('url');
	}

	public function index()
	{
		$arrayactivos=$this->modredidences->get_reservations_estatus(1);
		$title = 'RESERVATION';	
		$description = '';
		$keywords = '';
		$this->mViewData['title'] = $title;
		$this->mViewData['description'] = $description;
		$this->mViewData['keywords'] = $keywords;
		$this->mViewData['arrayactivos'] = $arrayactivos;
		$this->render('page/reservation', 'full_width');
	}

	public function residences($id = null)
	{

		$arrayElementos = $this->modredidences->get_elements_residences($id);
        
		$title = $arrayElementos[0]->title;	
		$description = '';
		$keywords = '';


        $before = $arrayElementos[0]->id - 1;
        
        $after = $arrayElementos[0]->id  + 1;
       

       //validacion boton preview residencias 
        if ($before === 0) {
        	$display = "d-none";
        	$before = "";
			$this->mViewData['display'] = $display;
			$this->mViewData['before'] = $before;


        } else{
        	$display = "d-inline-block";
			$before = $before;
			$this->mViewData['display'] = $display;
			$this->mViewData['before'] = $before;

		}
        //validacion boton preview residencias

//validacion boton next residencias
		 if ($after === 13) {
        	$displayafter = "d-none";
        	$after = "";
			$this->mViewData['displayafter'] = $displayafter;
			$this->mViewData['after'] = $after;


        } else{
        	$displayafter = "d-inline-block";
			$after = $after;
			$this->mViewData['displayafter'] = $displayafter;
			$this->mViewData['after'] = $after;

		}
        //validacion boton next residencias

        

		if(count($arrayElementos) >= 1){
			$this->mViewData['title'] = $title;
			$this->mViewData['description'] = $description;
		$this->mViewData['keywords'] = $keywords;
			$this->mViewData['arrayelementos'] = $arrayElementos;
			$this->render('page/residences', 'full_width');

		}  

	}
}

