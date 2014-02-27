{%extends file="common/page/layout.tpl"%}
{%block name="content"%}
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <div class="mycart">
                <h3>核对订单信息</h3>

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
                    <dt>订餐人信息 [<span id="consignee-action"><a href="" data-cmd="edit-consignee">修改</a></span>]</dt>
                    <dd id="consignee">
                    </dd>
                </dl>
                <script type="text/tpl" id="consignee-edit-tpl">
                    <p><label for="" style="display:inline-block;width:60px;">联系人：</label> <input id="consignee-contact" type="text" value="${contact}" style="width:100px" /> </p>
                    <p><label for="" style="display:inline-block;width:60px;">手机号：</label> <input id="consignee-phone" type="text" value="${phone}" style="width:100px"  /></p>
                    <p><label for="" style="display:inline-block;width:60px;">送餐地址：</label> <input id="consignee-place" type="text" value="${place}" style="width:400px"  /></p>
                    <p><a href="" data-cmd="save-consignee" class="btn btn-success">保存订餐人信息</a></p>
                </script>
                <script type="text/tpl" id="consignee-tpl">
                    ${contact} ${phone} <br />
                    ${place}
                </script>

                <dl>
                    <dt>发票信息</dt>
                    <dd>普通餐饮类发票</dd>
                </dl>
                
                
                
                
                <div class="total">
                    总计： ￥{%$total_price%}.00 元

                    <div class="confirm-btn" data-cmd="finish-order">提交订单</div>
                </div>
                
            </div>
        </div>
    </div>
</div>
{%/block%}