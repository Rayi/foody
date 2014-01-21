<?php

/**
 * SiteController is the default controller to handle user requests.
 */
class SiteController extends Controller
{
	/**
	 * Index action is the default action in a controller.
	 */
	public function actionIndex()
	{
        $this->assign("name", "leiyi");

		echo 'Hello World';
        $this->display('pms/page/index.tpl');
	}
}