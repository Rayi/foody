{%extends file="common/page/layout.tpl"%}
{%block name="block_head_static"%}
    {%require name="common:static/lib/css/button.less"%}
    {%require name="common:static/lib/css/form.less"%}
{%/block%}
{%block name="content"%}
    <section>
        <table class="summary-sheet" style="margin-top:0px;">
            <tbody>
            <tr class="summary-title">
                <td>Hi! </td>
                <td>您的角色</td>
                <td>有权限的产品线数</td>
            </tr>
            <tr>
                <td>
                    <p>{%$user['name']%}</p>
                </td>
                <td>
                    <p>
                        {%if $user['isAdmin'] %}网站管理员
                        {%elseif $user['isProductAdmin'] %}产品线接口人
                        {%else %}普通用户
                        {%/if%}
                    </p>
                </td>
                <td>
                    <p class="value">
                        {%if $user['isAdmin'] %}ALL
                        {%elseif $user['permissionProductId'] %}{%count($user['permissionProductId'])%}
                        {%else%}0
                        {%/if%}
                    </p>
                </td>
            </tr>
            </tbody>
        </table>
        
        {%* smarty注释
            <!-- {%if $requests %}
                <div class="info-box error">
                    <h4>您之前提交的申请还有 {%count($requests)%} 个未审批结束！</h4>
                    <div class="warn" style="margin:15px 0 0;">
                    <p>如果您的申请长时间无人回应，您可以联系相关接口人:</p>
                    {%foreach $requests as $index=>$request %}
                        {%if $contacts[$request]%}
                            <p>产品线【{%$products[$request]['product_name']%}】接口人: {%implode($contacts[$request]['users'] , ', ')%}</p>
                        {%else%}
                            <p>产品线【{%$products[$request]['product_name']%}】接口人: 暂无，请联系管理员！</p>
                        {%/if%}
                    {%/foreach%}
                    </div>
                </div>
            {%/if%}

            <div class="form-section">
                <div class="form-row">
                    <div class="row-header">
                        您已申请的产品线(<span class="success">绿色表示[已通过]</span>，<span class="info">蓝色表示[审核中]</span>):
                    </div>
                    <div class="row-content">
                        {%foreach $user['permissionProductId'] as $index=>$pid %}
                            <label class="product-line-label success">{%$products[$pid]['product_name']%}</label>
                        {%/foreach%}
                        {%if $requests %}
                            {%foreach $requests as $index=>$pid %}
                                <label class="product-line-label info">{%$products[$pid]['product_name']%}</label>
                            {%/foreach%}
                        {%/if%}
                    </div>
                </div>
                <div class="form-row">
                    <div class="row-header">
                        您可以申请的产品线(必选，<span class="error">单次申请请不超过10条</span>):
                    </div>
                    <div class="row-content">
                        {%foreach $products as $pid=>$value %}
                            {%if (!$requests||!in_array($pid, $requests))&&(!$user['permissionProductId']||!in_array($pid, $user['permissionProductId']))%}
                                <label class="product-line-label"><input type="checkbox" value="{%$value['product_id']%}" />{%$value['product_name']%}</label>
                            {%/if%}
                        {%/foreach%}
                    </div>
                </div>

                <div class="form-row">
                    <div class="row-header">
                        请填写申请理由(必填):
                    </div>
                    <div class="row-content">
                        <textarea id="request-memo" placeholder="如：我是XX部门FE，申请权限用于查看数据!"></textarea>
                    </div>
                </div>
            </div>
            <div class="bottom-control">
                <div class="btn-group btn-radio">
                    <a class="btn" href="#" data-cmd="request">提交申请</a>
                </div>
            </div> -->
        *%}

        <div class="form-section">
            <div class="form-row">
                <div class="row-header">
                    您已有权限的产品线:
                </div>
                <div class="row-content">
                    {%if $user['permissionProductId'] %}
                        {%foreach $user['permissionProductId'] as $index=>$pid %}
                            <label class="product-line-label success">{%$products[$pid]['product_name']%}</label>
                        {%/foreach%}
                    {%else%}
                            <label class="product-line-label error">无</label>
                    {%/if%}
                </div>
            </div>
            <div class="form-row">
                <div class="row-header">
                    产品线接口人列表(<span class="error"> 请线下联系产品线的对应接口人以添加权限，无接口人请联系管理员！</span>):
                </div>
                <div class="row-content">
                    {%foreach $contacts as $pid=>$value %}
                        {%$class="info"%}
                        {%if $user['permissionProductId']&&in_array($pid, $user['permissionProductId'])%}
                            {%$class="success"%}
                        {%/if%}
                        <label class="product-line-label {%$class%}" style="width:100%; padding:5px 0;">
                            <label style="display: inline-block;width:150px;">【{%$value['productName']%}】:</label>
                            {%if $value['users']&&count($value['users'])>0%} 
                                {%implode($value['users'], ', ')%}
                            {%else%}无
                            {%/if%}
                        </label>
                    {%/foreach%}
                </div>
            </div>
        </div>

    </section>
    {%require name="authority:static/request/request.js"%}
{%require name='authority:page/request.tpl'%}{%/block%}