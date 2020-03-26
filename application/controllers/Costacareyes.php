<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/**
 * Home page
 */
class Costacareyes extends MY_Controller {

	public function index()
	{
		$title = 'COSTA CAREYES';	
		$description = '';
		$keywords = '';
		$this->mViewData['title'] = $title;
		$this->mViewData['description'] = $description;
		$this->mViewData['keywords'] = $keywords;

		$this->render('page/costacareyes', 'full_width');
	}
}
