<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/**
 * Home page
 */
class Contact extends MY_Controller {

	public function index()
	{
		$title = 'CONTACT';	
		$description = '';
		$keywords = '';
		$this->mViewData['title'] = $title;
		$this->mViewData['description'] = $description;
		$this->mViewData['keywords'] = $keywords;

		$this->render('page/contact', 'full_width');
	}
}
