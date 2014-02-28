<?php

/**
 * SiteController is the default controller to handle user requests.
 */
class OrderController extends Controller
{
	/**
	 * Index action is the default action in a controller.
	 */
	public function actionDetail()
	{
        $this->assign("name", "leiyi");

        $total = 0;
        $order_id = $this->getParam('order_id');

        $order = Orders::model()->findByPk($order_id);

        if(is_null($order)) {
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
        $this->assign('order', $order);
        $this->assign('items', $ret);
        $this->assign('total_price', $total);

        $this->display('order/page/detail.tpl');
	}
}