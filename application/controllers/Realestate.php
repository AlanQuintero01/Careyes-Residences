<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/**
 * Home page
 */
class Realestate extends MY_Controller {

	public function index()
	{
		$title = 'REAL ESTATE';	
		$description = '';
		$keywords = '';
		$this->mViewData['title'] = $title;
		$this->mViewData['description'] = $description;
		$this->mViewData['keywords'] = $keywords;

		$this->render('page/realestate', 'full_width');
	}
}
