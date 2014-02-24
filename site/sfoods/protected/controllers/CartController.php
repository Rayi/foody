<?php

/**
 * SiteController is the default controller to handle user requests.
 */
class CartController extends Controller
{
	/**
	 * Index action is the default action in a controller.
	 */
	public function actionIndex()
	{
        $this->assign("name", "leiyi");

        $this->display('cart/page/index.tpl');
	}

    public function actionOrder()
    {
        $this->assign("name", "leiyi");

        $this->display('cart/page/order.tpl');
    }
}