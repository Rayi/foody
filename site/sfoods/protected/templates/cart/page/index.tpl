{%extends file="common/page/layout.tpl"%}
{%block name="content"%}
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <div class="mycart">
                <h3>我的餐车</h3>
                <div id="cart-sheet">
    
                </div>
                <script type="text/tpl" id="cart-sheet-tpl">
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
                            {@if list.length === 0}
                                <tr class="data-row">
                                    <td colspan="4" class="text-center">
                                        餐车里没有菜品，快去选购吧！
                                    </td>
                                </tr>
                            {@/if}
                            {@each list as item, index}
                            <tr class="data-row" data-id="${item.id}">
                                <td>${item.name}</td>
                                <td>￥${item.price}.00</td>
                                <td><span data-cmd="item-sub" class="btn btn-default">-</span> <input class="item-count text-center" type="text" value="${item.count}" style="width:40px" /> <span data-cmd="item-add" class="btn btn-default">+</span></td>
                                <td>
                                    <a data-cmd="remove-item" href="">删除</a>
                                </td>
                            </tr>
                            {@/each}
                        </tbody>
                    </table>
                    <div class="summary">
                        餐品价格总计： ￥${total}元<br />
                    </div>
                    <div class="total">
                        总计： ￥${total} 元

                        <div class="confirm-btn" data-cmd="create-order">下一步</div>
                    </div>
                </script>
            </div>
        </div>
    </div>
</div>
{%/block%}