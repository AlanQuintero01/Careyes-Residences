<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Gracias extends MY_Controller {

	public function index()
	{
		$title = 'EL CAREYES';	
		$description = '';
		$keywords = '';
		$this->mViewData['title'] = $title;
		$this->mViewData['description'] = $description;
		$this->mViewData['keywords'] = $keywords;
		$this->render('page/thanks', 'full_width');
	}
}
