<?php

/**
 * SiteController is the default controller to handle user requests.
 */
class AccountController extends Controller
{
	/**
	 * Index action is the default action in a controller.
	 */
	public function actionIndex()
	{
        $this->assign("name", "leiyi");

        $this->display('account/page/index.tpl');
	}

    public function actionSignup()
    {
        $this->assign("name", "leiyi");

        $this->display('account/page/signup.tpl');
    }

    public function actionSignin()
    {
        $this->assign("name", "leiyi");

        $this->display('account/page/signin.tpl');
    }

    public function actionGetpw()
    {
        $this->assign("name", "leiyi");

        $this->display('account/page/getpw.tpl');
    }

    public function actionProfile()
    {
        $this->assign("name", "leiyi");

        if(is_null($this->user)) {
            //$this->message('请先登录后再访问！');
            $this->request->redirect('/signup');
            exit;
        }
        $orders = Orders::model()->findAllByAttributes(array(
            "status" => array(1,2,3,4),
        ));
        $this->assign('orders', $orders);
        $this->display('account/page/profile.tpl');
    }
}