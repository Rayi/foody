<?php

/**
 * SiteController is the default controller to handle user requests.
 */
class HomeController extends Controller
{
	/**
	 * Index action is the default action in a controller.
	 */
	public function actionIndex()
	{
        $this->assign("name", "leiyi");

        $this->display('home/page/index.tpl');
	}

    /**
     * Index action is the default action in a controller.
     */
    public function actionList()
    {
        $this->assign("name", "leiyi");

        $this->display('home/page/list.tpl');
    }
}