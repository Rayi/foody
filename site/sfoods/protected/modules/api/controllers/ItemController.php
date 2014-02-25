<?php
/**
 * 全部物件API 
 * AllController.php
 * @author T0ny<er@zhangabc.com>
 * @license http://www.zend.com/license/3_0.txt   PHP License 3.0
 * @date 2012-09-21 20:56:35
 * @version $Id$ 
 */

class ItemController extends Controller
{

    public function actionRecommend()
    {
        // $api_url = 'http://weekend.duapp.com/api.php';

        // $api_path = $api_url;

        // $content = $this->curl->get($api_path);
        
        // echo $content;
        $item_ars = Item::model()->findAll();
        $this->_return(1, '', $this->_toArray($item_ars));
    }
}
