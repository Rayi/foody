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

    public function actionInfo()
    {
        $this->assign("name", "leiyi");

        $order_id = $this->getParam('order_id');
        $total = 0;

        $order = Orders::model()->findByPk($order_id);

        if($order) {

            if($order->status !== "0") {
                $this->message('该订单已提交！');
            }

            $this->assign('order_id', $order_id);
            $items = OrderItem::model()->findAllByAttributes(array(
                "order_id" => $order_id,
            ));
            $items = $this->_toArray($items);
            
            $ret = array();
            foreach($items as $item) {
                $item['total'] = $item['price'] * $item['count'];
                $ret[] = $item;
                $total += $item['total'];
            }
            $this->assign('items', $ret);
            $this->assign('total_price', $total);
        }

        $this->display('cart/page/order.tpl');
    }

    public function actionFinish()
    {
        $this->assign("name", "leiyi");
        
        $order_id = $this->getParam('order_id');
        $total = 0;

        $order = Orders::model()->findByPk($order_id);

        if($order) {
            if($order->status !== "1") {
                $this->message('此订单信息不正确！');
            }

            $this->assign('contact', $order->contact);
            $this->assign('phone', $order->phone);
            $this->assign('place', $order->place);

            $items = OrderItem::model()->findAllByAttributes(array(
                "order_id" => $order_id,
            ));
            $items = $this->_toArray($items);
            
            $ret = array();
            foreach($items as $item) {
                $item['total'] = $item['price'] * $item['count'];
                $ret[] = $item;
                $total += $item['total'];
            }
            $this->assign('items', $ret);
            $this->assign('total_price', $total);
        }

        $this->display('cart/page/finish.tpl');
    }
}