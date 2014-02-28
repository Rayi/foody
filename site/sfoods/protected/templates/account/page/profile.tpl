{%extends file="common/page/layout.tpl"%}
{%block name="content"%}
<div class="container profile">
    <div class="row">
        <div class="col-md-6">
            <div class="signup">
                <h3>我的信息</h3>
                <div class="form-group">
                    <label>姓名</label>
                    <input type="text" placeholder="{%$user['name']%}" /> <a href="#" class="send-code">修改</a>
                </div>
                <div class="form-group">
                    <label>密码</label>
                    <input type="text" placeholder="*******" /> <a href="#" class="send-code">修改</a>
                </div>
                <div class="form-group">
                    <label>手机号</label>
                    <input type="text" placeholder="{%$user['phone']%}" />
                </div>
                {%foreach $user['contacts'] as $index=>$contact %}
                <div class="form-group">
                    <label>地址{%$index+1%}</label>
                    <input type="text" placeholder="" value="{%$contact['place']%}" /> <a href="#" class="send-code" data-id="{%$contact['id']%}" data-cmd="edit-contact">修改</a> <a href="#" class="send-code" data-id="{%$contact['id']%}" data-cmd="remove-contact">删除</a>
                </div>
                {%/foreach%}
                <div class="signup-btn">添加新地址</div>
            </div>
        </div>
        <div class="col-md-6">
            <div class="signup">
                <h3>历史订单</h3>
                <select>
                    <option value="">最近1个月</option>
                    <option value="">最近3个月</option>
                    <option value="">全部</option>
                </select>
                <table class="data-sheet">
                    <thead>
                        <tr>
                            <th>日期</th>
                            <th>状态</th>
                            <th>订单号</th>
                            <th>订单金额</th>
                            <th>操作</th>
                        </tr>
                    </thead>
                    <tbody>
                        {%foreach $orders as $index=>$order %}
                        <tr>
                            <td>{%$order['created_time']%}</td>
                            <td>{%Lang::get('orderStatus', 1)%}</td>
                            <td>{%$order['id']%}</td>
                            <td>￥{%$order['total']%}.00</td>
                            <td>
                                <a href="/order/detail?order_id={%$order['id']%}">查看</a>|<a href="#">晒单</a>
                            </td>
                        </tr>
                        {%/foreach%}
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
{%/block%}