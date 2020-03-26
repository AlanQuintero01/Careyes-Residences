<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/**
 * Home page
 */
class Careyes extends MY_Controller {

	public function index()
	{
		$title = 'EL CAREYES';	
		$description = '';
		$keywords = '';
		$this->mViewData['title'] = $title;
		$this->mViewData['description'] = $description;
		$this->mViewData['keywords'] = $keywords;
		$this->render('page/careyes', 'full_width');
	}
}
