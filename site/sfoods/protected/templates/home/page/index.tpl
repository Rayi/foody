{%extends file="common/page/layout.tpl"%}
{%block name="content"%}
<div class="container">
    <div class="row">
        <!-- <div class="sidemenu col-md-1">
            <h3>本周推荐</h3>
            <dl>
                <dt>星期一</dt>
                <dd><a href="">青椒肉丝</a><a href="">小炒香肠</a></dd>
                <dt>星期二</dt>
                <dd><a href="">青椒肉丝</a><a href="">小炒香肠</a></dd>
                <dt>星期三</dt>
                <dd><a href="">青椒肉丝</a><a href="">小炒香肠</a></dd>
                <dt>星期四</dt>
                <dd><a href="">青椒肉丝</a><a href="">小炒香肠</a></dd>
                <dt>星期五</dt>
                <dd><a href="">青椒肉丝</a><a href="">小炒香肠</a></dd>
            </dl>
        </div> -->
        <div class="col-md-3">
            <div class="special">
                <h3>今日特价</h3>
                <p>炝炒瓜尖：使用南瓜藤上最新鲜的部分，
        配以蒜蓉，辣椒等调料，味道清新，不
        油腻，很适合喜欢吃素菜的人。</p>
                <p class="thumb"><img src="/static/images/tmp/sigua.jpg" alt="炝炒瓜尖"></p>
                <div class="add-to-cart">数量有限，现在就订一份</div>
            </div>
        </div>

        <div class="recommend col-md-5">
            <h3>今日推荐</h3>
            <div style="width:458px; float:left;">
                <div class="banner">
                    <ul>
                        <li><a href="#"><img src="/static/images/tmp/slide_01.jpg" style="width:458px;" alt="推荐菜品-红烧肉" /></a></li>
                        <li><a href="#"><img src="/static/images/tmp/slide_02.jpg" style="width:458px;" alt="推荐菜品-油焖大虾" /></a></li>
                        <li><a href="#"><img src="/static/images/tmp/slide_03.jpg" style="width:458px;" alt="推荐菜品-老妈洋芋" /></a></li>
                    </ul>
                </div>
            </div>
        </div>

        <div class="col-md-4">
            <div class="cart">
                <h3>我的餐车</h3>
                <ul id="home-cart-list">
                </ul>
                <div class="total">
                    <p><span>总计: <strong id="home-total-price">68.00</strong>元</span></p>
                    <div><input class="cart-charge" type="button" value="选好了，去结算！" onclick="document.location = '/cart/'" /></div>
                </div>
                <script type="text/tpl" id="cart-list-tpl">
                {@if list.length === 0}
                    <li> 购物车里还没有食物，赶紧选购吧！</li>
                {@/if}
                {@each list as item,index}
                <li data-id="${item.id}">
                    <span class="name">${item.name}</span>
                    <span class="price">￥${item.price}.00</span> x <span class="item-count">${item.count}</span> <span data-cmd="item-sub" class="btn btn-default">-</span><span data-cmd="item-add" class="btn btn-default">+</span>
                </li>
                {@/each}
                </script>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12">
            <div class="foods">
                <div class="submenu">
                    <a href="" class="actived">精选套餐</a>
                    <a href="">盖饭|炒饭</a>
                    <a href="">小菜饮品</a>
                </div>
                <div class="food-list" id="food-list">
                    <!-- <div class="food-item new-item">
                        <div class="inner">
                            <img src="/static/images/tmp/f_01.jpg" />
                            <h4>小炒香干</h4>
                            <p class="price">￥18.00 / 份</p>
                            <p>套餐包括：<br />小炒香干+配菜+开胃菜+蒸蛋+靓汤</p>
                            <div class="add-to-cart">加入餐车</div>
                        </div>
                        
                    </div>
                    <div class="food-item new-item">
                        <div class="inner">
                            <img src="/static/images/tmp/f_01.jpg" />
                            <h4>小炒香干</h4>
                            <p class="price">￥18.00 / 份</p>
                            <p>套餐包括：<br />小炒香干+配菜+开胃菜+蒸蛋+靓汤</p>
                            <div class="add-to-cart">加入餐车</div>
                        </div>
                        
                    </div>
                    <div class="food-item new-item">
                        <div class="inner">
                            <img src="/static/images/tmp/f_01.jpg" />
                            <h4>小炒香干</h4>
                            <p class="price">￥18.00 / 份</p>
                            <p>套餐包括：<br />小炒香干+配菜+开胃菜+蒸蛋+靓汤</p>
                            <div class="add-to-cart">加入餐车</div>
                        </div>
                        
                    </div>
                    <div class="food-item new-item">
                        <div class="inner">
                            <img src="/static/images/tmp/f_01.jpg" />
                            <h4>小炒香干</h4>
                            <p class="price">￥18.00 / 份</p>
                            <p>套餐包括：<br />小炒香干+配菜+开胃菜+蒸蛋+靓汤</p>
                            <div class="add-to-cart">加入餐车</div>
                        </div>
                    </div> -->
                </div>
            </div>
        </div>
    </div>
</div>
{%/block%}