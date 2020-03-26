<?php
defined('BASEPATH') OR exit('No direct script access allowed');


$config['ci_bootstrap'] = array(

	// Site name
	'site_name' => 'CI Bootstrap 3',

	// Default page title prefix
	'page_title_prefix' => '',

	// Default page title
	'page_title' => '',

	// Default meta data
	'meta_data'	=> array(
		'author'		=> '',
		'description'	=> '',
		'keywords'		=> ''
	),

	// Default scripts to embed at page head or end
	'scripts' => array(
		'head'	=> array(
		),
		'foot'	=> array(
			'vendor/jquery/jquery.min.js',
			'assets/js/lib/framework.js?' . time(),
			'vendor/bootstrap/js/bootstrap.min.js',
			'assets/js/owl-carousel.js?' . time(),
			'vendor/bootstrap/js/bootstrap.bundle.min.js',
			'assets/js/careyes.js?' . time(),
			'assets/js/nav.js?' . time(),
			'vendor/magnific-popup/jquery.magnific-popup.min.js',

		),
	),

	// Default stylesheets to embed at page head
	'stylesheets' => array(
		'screen' => array(
			'assets/css/careyes.min.css?' . time(),
			'vendor/bootstrap/css/bootstrap.min.css',
			'vendor/fontawesome-free/css/all.min.css',
			'https://fonts.googleapis.com/css?family=Poppins&display=swap',
			'https://fonts.googleapis.com/css?family=Ibarra+Real+Nova&display=swap',

		)
	),

	// Default CSS class for <body> tag
	'body_class' => '',
	
	// Multilingual settings
	'languages' => array(
		'default'		=> 'en',
		'autoload'		=> array('general'),
		'available'		=> array(
			'en' => array(
				'label'	=> 'EN',
				'value'	=> 'english'
			),
			'es' => array(
				'label'	=> 'ES',
				'value' => 'spanish'
			)
		)
	),

	// Google Analytics User ID
	'ga_id' => '',

	// Menu items
	'menu' => array(
		// 'home' => array(
		// 	'name'		=> 'Home',
		// 	'url'		=> '',
		// ),
	),

	// Login page
	'login_url' => '',

	// Restricted pages
	'page_auth' => array(
	),

	// Email config
	'email' => array(
		'from_email'		=> '',
		'from_name'			=> '',
		'subject_prefix'	=> '',
		
		// Mailgun HTTP API
		'mailgun_api'		=> array(
			'domain'			=> '',
			'private_api_key'	=> ''
		),
	),

	// Debug tools
	'debug' => array(
		'view_data'	=> FALSE,
		'profiler'	=> FALSE
	),
);

/*
| -------------------------------------------------------------------------
| Override values from /application/config/config.php
| -------------------------------------------------------------------------
*/
$config['sess_cookie_name'] = 'ci_session_frontend';