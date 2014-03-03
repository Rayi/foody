{%extends file="common/page/layout.tpl"%}
{%block name="content"%}
<div class="container sign-up">
    <div class="row">
        <div class="col-md-4">
        </div>
        <div class="col-md-5">
            <div class="signup">
                <h3>登录</h3>
                <div class="form-group">
                    <label>手机号</label>
                    <input type="text" placeholder="输入您的手机号码" />
                </div>
                <div class="form-group">
                    <label>密码</label>
                    <input type="text" placeholder="输入你的帐号密码" />
                </div>
                <div class="signin-btn">登录</div><a class="signup-btn" href="/signup">注册</a>
            </div>
        </div>
        <div class="col-md-5">
        </div>
    </div>
</div>
{%/block%}