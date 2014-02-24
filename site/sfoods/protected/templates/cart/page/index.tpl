{%extends file="common/page/layout.tpl"%}
{%block name="content"%}
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <div class="mycart">
                <h3>我的餐车</h3>
                <table class="data-sheet">
                    <thead>
                        <tr>
                            <th>餐品</th>
                            <th>价格</th>
                            <th>数量</th>
                            <th>操作</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>红烧肉套餐</td>
                            <td>￥20.00</td>
                            <td><input type="text" value="1" /></td>
                            <td>
                                <a href="">删除</a>
                            </td>
                        </tr>
                        <tr>
                            <td>麻婆豆腐套餐</td>
                            <td>￥20.00</td>
                            <td><input type="text" value="1" /></td>
                            <td>
                                <a href="">删除</a>
                            </td>
                        </tr>
                        <tr>
                            <td>肉末酥红豆(单点)</td>
                            <td>￥20.00</td>
                            <td><input type="text" value="1" /></td>
                            <td>
                                <a href="">删除</a>
                            </td>
                        </tr>
                        <tr>
                            <td>青椒肉丝套餐</td>
                            <td>￥20.00</td>
                            <td><input type="text" value="1" /></td>
                            <td>
                                <a href="">删除</a>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <div class="summary">
                    餐品价格总计： ￥238.00 元<br />
                    送餐费： ￥5.00 元
                </div>
                <div class="total">
                    总计： ￥243.00 元

                    <div class="confirm-btn">确认信息</div>
                </div>
            </div>
        </div>
    </div>
</div>
{%/block%}