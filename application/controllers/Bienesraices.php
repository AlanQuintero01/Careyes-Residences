<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/**
 * Home page
 */
class Bienesraices extends MY_Controller {

	public function index()
	{
		$title = 'BIENES RAÍCES';	
		$description = '';
		$keywords = '';
		$this->mViewData['title'] = $title;
		$this->mViewData['description'] = $description;
		$this->mViewData['keywords'] = $keywords;

		$this->render('page/realestate', 'full_width');
	}
}
