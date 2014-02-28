    <div class="container">
        <div class="row">
            <div class="header col-md-12">
                <div class="logo"></div>
                <div class="user-profile">
                    <!-- 中午好，请先<a href="">登录</a>或<a href="">注册</a>再选餐吧！ -->
                    {%if is_null($user) %}
                        欢迎来到南方味道! <a href="">登录</a>或<a href="">注册</a>后能享受到更好的服务哦！
                    {%else%}
                        {%$user['name']%}，欢迎来到南方味道! | <a href="/profile">个人中心</a> | <a href="/cart">我的餐车</a>
                    {%/if%}
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-md-12 navigation">
                <a href="/">首页</a>
                <a href="/list">餐品</a>
                <a href="/profile">会员</a>
                <a href="/about">关于</a>

                <div class="my-cart-list">
                    <a href="/cart">去餐车结算</a>
                    <span class="caret caret-right"></span>
                </div>
            </div>
        </div>
    </div>