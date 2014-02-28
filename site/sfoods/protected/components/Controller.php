<?php
/**
 * Controller is the customized base controller class.
 * All controller classes for this application should extend from this base class.
 */
class Controller extends CController
{
	/**
	 * @var string the default layout for the controller view. Defaults to 'column1',
	 * meaning using a single column layout. See 'protected/views/layouts/column1.php'.
	 */
	public $layout='column1';
	/**
	 * @var array context menu items. This property will be assigned to {@link CMenu::items}.
	 */
	public $menu=array();
	/**
	 * @var array the breadcrumbs of the current page. The value of this property will
	 * be assigned to {@link CBreadcrumbs::links}. Please refer to {@link CBreadcrumbs::links}
	 * for more details on how to specify this property.
	 */
	public $breadcrumbs=array();

	protected $request=null;
	protected $curl = null;

    public $module_id = '';


	public function init()
    {
    	$this->request = Yii::app()->request;
    	$this->curl = new FetchUrl();


    	$controller = explode('/',Yii::app()->request->getParam('r'));
        $controller_id = Yii::app()->controller->id;
        $action_id = isset(Yii::app()->controller->action)?Yii::app()->controller->action->id:"";
        $module_id = $controller_id;

        
    }

    public function filterAdminOnly($filterChain){
        $filterChain->run();
    }

    protected function beforeAction($action){

        $controller = explode('/',Yii::app()->request->getParam('r'));
        $controller_id = Yii::app()->controller->id;
        $action_id = isset(Yii::app()->controller->action)?Yii::app()->controller->action->id:"";

        $module_id = $controller_id;
        //$this->_dump($controller_id, $action_id, $action);

        if($action_id !== ""){
            $module_id = $controller_id.'.'.$action_id;
        }

        $this->assign('module_id', $module_id);

        // this must return true if want continue action
        return true;
    }

	/**
	 * Smarty assign()方法
	 *
	 */
	public function assign($key, $value) {
		Yii::app()->smarty->assign($key, $value);
	}

	/**
	 * Smarty display()方法
	 *
	 */
	public function display($view) {
		Yii::app()->smarty->display($view);
	}




	public function _return($status, $msg = '', $data = array()) {
        $callback = $this->_getParam('callback', '');
        if($callback !== "") {
            echo $callback.'('.json_encode(array(
                "status" => $status,
                "msg" => $msg,
                "data" => $data,
            )).');';
        } else {
            echo json_encode(array(
                "status" => $status,
                "msg" => $msg,
                "data" => $data,
            ));
        }
        exit();
    }

    public function error($errorCode = 400, $msg = '') {
        $this->_return(FAILURE, $msg, array('errCode'=>$errorCode));
    }

    public function success($errorCode = 400, $msg = '') {
        $this->_return(SUCCESS, $msg, array('errCode'=>$errorCode));
    }


    public function message($msg = '') {
        $this->assign('msg', $msg);
        $this->display('common/page/message.tpl');
    }

    public function _toArray($activeRecord) {
        $ret = array();

        if(is_object($activeRecord)) {
            $item = array();
            foreach($activeRecord as $k => $v) {
                $item[$k] = $v;
            }
            $ret = $item;
        } else {
            if(is_array($activeRecord)) {
                foreach($activeRecord as $ar) {
                    $item = array();
                    foreach($ar as $k => $v) {
                        $item[$k] = $v;
                    }
                    $ret[] = $item;
                }
            }
        }
        return $ret;
    }

    public function toArray($activeRecord) {
        return $this->_toArray($activeRecord);
    }

    public function _dump($data = array()){
        if(func_num_args() > 1) {
            $data = func_get_args();
        }
        echo "<pre>";
        var_dump($data);
        echo '</pre>';
    }

    public function dump($data = array()){
        $this->_dump($data);
    }

    protected function _getParam($key = "", $default = ""){
        
        if($key == "") {
            return "";
        }

        $value = $this->request->getParam($key);
        if(is_null($value) || $value === "") {
            return $default;
        }
        return is_array($value)?$value:trim($value);
    }

    protected function getParam($key = "", $default = ""){
        
        return $this->_getParam($key, $default);
    }
}