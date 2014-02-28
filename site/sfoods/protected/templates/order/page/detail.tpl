{%extends file="common/page/layout.tpl"%}
{%block name="content"%}
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <div class="mycart">
                <h3>订单号: {%$order['id']%}</h3>
                <p class="text-muted">下单日期: {%$order['created_time']%}</p>
                <dl>
                    <dt>餐品信息</dt>
                    <dd>
                        <table class="data-sheet">
                            <thead>
                                <tr>
                                    <th>餐品</th>
                                    <th>单品价格</th>
                                    <th>数量</th>
                                    <th style="width:80px">总计</th>
                                </tr>
                            </thead>
                            <tbody>
                                {%foreach $items as $food %}
                                <tr>
                               
                                    <td>{%$food['name']%}</td>
                                    <td>￥{%$food['price']%}.00</td>
                                    <td>{%$food['count']%}</td>
                                    <td>
                                        ￥{%$food['total']%}
                                    </td>
                                </tr>
                                {%/foreach%}
                            </tbody>
                        </table>
                        <div class="summary">
                            餐品价格总计： ￥{%$total_price%}.00 元<br />
                            送餐费： ￥0.00 元
                        </div>
                    </dd>
                </dl>

                <dl>
                    <dt>订餐人信息</dt>
                    <dd id="consignee">
                        {%$order['contact']%}  {%$order['phone']%} <br />
                        {%$order['place']%}
                    </dd>
                </dl>

                <dl>
                    <dt>发票信息</dt>
                    <dd>普通餐饮类发票</dd>
                </dl>
                
                
                
                
                <div class="total">
                    总计： ￥{%$total_price%}.00 元
                </div>
                <input type="hidden" id="order-id" value="{%$order_id%}" />
            </div>
        </div>
    </div>
</div>
{%/block%}