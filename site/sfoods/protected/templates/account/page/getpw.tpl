{%extends file="common/page/layout.tpl"%}
{%block name="content"%}
<div class="container sign-up">
    <div class="row">
        <div class="col-md-3">
        </div>
        <div class="col-md-6">
            <div class="signup">
                <h3>重置密码</h3>
                <div class="form-group">
                    <label>手机号</label>
                    <input type="text" placeholder="输入您的手机号码" />
                </div>
                <div class="form-group">
                    <label>验证码</label>
                    <input type="text" placeholder="输入收到的验证码" /> <a href="#" class="send-code">发送验证码</a>
                </div>
                <div class="signup-btn">下一步</div>
            </div>
        </div>
        <div class="col-md-3">
        </div>
    </div>
</div>
{%/block%}