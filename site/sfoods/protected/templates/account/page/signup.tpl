{%extends file="common/page/layout.tpl"%}
{%block name="content"%}
<div class="container sign-up">
    <div class="row">
        <div class="col-md-3">
        </div>
        <div class="col-md-6">
            <div class="signup">
                <h3>快速注册</h3>
                <div class="form-group">
                    <label>手机号</label>
                    <input type="text" placeholder="输入您的手机号码" />
                </div>
                <div class="form-group">
                    <label>密码</label>
                    <input type="text" placeholder="输入你的帐号密码" />
                </div>
                <div class="form-group">
                    <label>验证码</label>
                    <input type="text" placeholder="输入收到的验证码" /> <a href="#" class="send-code">发送验证码</a>
                </div>
                <div class="signup-btn confirm-signup">注册帐号</div> <a href="/signin" class="goto-signin">已有帐号，立刻登录</a>
            </div>
        </div>
        <div class="col-md-3">
        </div>
    </div>
</div>
{%/block%}