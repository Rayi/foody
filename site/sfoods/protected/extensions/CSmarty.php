<?php
/**
 * 扩展增加smarty模板 
 *
 * @author Hema
 * @link http://www.ttall.net/
 * @copyright Copyright © 2012-2015  ttall.net
 * @license http://www.ttall.net/license/
 */
require_once (Yii::getPathOfAlias('application.extensions.smarty') . DIRECTORY_SEPARATOR . 'Smarty.class.php');
define('SMARTY_VIEW_DIR', Yii::getPathOfAlias('application'));

class CSmarty extends Smarty {
    const DIR_SEP = DIRECTORY_SEPARATOR;
    function __construct() {
        parent::__construct();

        $this -> template_dir = SMARTY_VIEW_DIR. self::DIR_SEP . 'templates';
        $this -> compile_dir = SMARTY_VIEW_DIR . self::DIR_SEP . 'template_c';
        $this -> cache_dir = SMARTY_VIEW_DIR . self::DIR_SEP . 'cache';
        $this -> config_dir = SMARTY_VIEW_DIR . self::DIR_SEP . 'smarty_config';

        //$this->plugins_dir = array("./plugin/");
        $this->left_delimiter = "{%";
        $this->right_delimiter = "%}";


        $this->cache_dir = "cache";
        $this->caching = false;
        $this->cache_lifetime = '60';
    }
    function init() {
    }
}