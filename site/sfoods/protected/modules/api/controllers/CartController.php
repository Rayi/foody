<?php
/**
 * 全部物件API 
 * AllController.php
 * @author T0ny<er@zhangabc.com>
 * @license http://www.zend.com/license/3_0.txt   PHP License 3.0
 * @date 2012-09-21 20:56:35
 * @version $Id$ 
 */

class CartController extends Controller
{

    public function actionOrder()
    {   
        $err = 0;
        $total = 0;
        $cookies = Yii::app()->request->cookies->cookies;
        $items = $cookies['cart_item']->value;

        try {
            $items = json_decode($items);
        }catch(Exception $e) {
            $items = array();
        }

        if(count($items) < 1) {
            $this->error(400, '无法获取到购物车数据!');
        }
        //$this->dump($cookies);

        $order = new Orders();
        $order->status = 0; // 0表示初创建 1表示信息已提交等待确认 2表示确认等待派送 3表示派送完毕已收款 40表示订单无效 41表示用户主动取消 60表示恶意订单 
        $order->creator = 'rayi';
        $order->total = 0;
        $order->items = '{}';
        $order->credit_items = '{}';
        $order->place = 3;
        $order->phone =  '13800138000';
        $order->contact ='雷毅';
        $order->memo = '{}';

        $success = $order->save();

        if($success !== true) {
            $this->error(401, '添加订单失败!');
        }
        
        

        foreach($items as $itemId => $count) {
            $item = Item::model()->findByPk($itemId);
            if(!is_null($item)) {
                //$this->dump($item);
                $orderItem = new OrderItem();
                $orderItem->order_id = $order->id;
                $orderItem->item_id = $itemId;
                $orderItem->name = $item->name;
                $orderItem->price = $item->price;
                $orderItem->count = $count;
                $success = $orderItem->save();
                if($success !== true) {
                    $err ++;
                }
                $total += $item->price*$count;
            }
        }
        $order->total = $total;
        $order->update();

        $this->_return(SUCCESS, '', $order->id);
    }

    public function actionSubmit()
    {   
        $err = 0;
        $total = 0;

        $order_id = $this->getParam('orderId');
        $contact = $this->getParam('contact');
        $phone = $this->getParam('phone');
        $place = $this->getParam('place');

        $order = Orders::model()->findByPk($order_id);

        if($order) {
            $order->contact = $contact;
            $order->phone = $phone;
            $order->place = $place;
            $order->status = 1;
            $order->update();

            $this->_return(SUCCESS, '', $this->toArray($order));
        }
    }
}
