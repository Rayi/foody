{%extends file="common/page/layout.tpl"%}
{%block name="content"%}
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <div class="mycart">
                <h3>核对订单信息</h3>
                <dl>
                    <dt>订餐人信息</dt>
                    <dd>张先生 </dd>
                    <dd>手机号： 13910081008</dd>
                    <dd>送餐地址： 北京市海淀区东北旺西路8号中关村软件园2期文思海辉大厦</dd>
                </dl>

                <dl>
                    <dt>发票信息</dt>
                    <dd>普通餐饮类发票</dd>
                </dl>
                
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
                                <tr>
                                    <td>红烧肉套餐</td>
                                    <td>￥20.00</td>
                                    <td>1</td>
                                    <td>
                                        ￥20.00
                                    </td>
                                </tr>
                                <tr>
                                    <td>麻婆豆腐套餐</td>
                                    <td>￥20.00</td>
                                    <td>2</td>
                                    <td>
                                        ￥40.00
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                        <div class="summary">
                            餐品价格总计： ￥238.00 元<br />
                            送餐费： ￥5.00 元
                        </div>
                    </dd>
                </dl>
                
                
                <div class="total">
                    总计： ￥243.00 元

                    <div class="confirm-btn">提交订单</div>
                </div>
                
            </div>
        </div>
    </div>
</div>
{%/block%}