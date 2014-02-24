<?php

// This is the main Web application configuration. Any writable
// application properties can be configured here.
return array(
	'basePath'=>dirname(__FILE__).DIRECTORY_SEPARATOR.'..',
	'name'=>'Yii Framework: Phone Book Demo',

	// autoloading model and component classes
	'import'=>array(
		'application.models.*',
		'application.components.*',
		'application.plugin.*',
		'application.extensions.*',
		'application.extensions.smarty.sysplugins.*',
	),

	// application components
	'components'=>array(
		'db'=>array(
			'connectionString'=>'sqlite:protected/data/phonebook.db',
		),

		'smarty'=>array(
			'class'=>'application.extensions.CSmarty',
		),

		'urlManager'=>array(
			'urlFormat'=>'path',
			'rules'=>array(
				'<controller:\w+>' => '<controller>/index',
				'<controller:\w+>/view/<id:\d+>' => '<controller>/view',
				'<controller:\w+>/edit/<id:\d+>' => '<controller>/edit',
				'<controller:\w+>/new' => '<controller>/new',
				'user/<uid:\d+>' => 'user',
				'user/<name:\w+>' => 'user',
				'image/view/<id:\d+>/<w:\d+>/<h:\d+>' => 'image/view',
				'image/view/<id:\d+>/<w:\d+>' => 'image/view',
				'<controller:\w+>/<action:\w+>' => '<controller>/<action>',
				'' => '',
			),
		),
	),
);