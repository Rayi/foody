{%extends file="common/page/layout.tpl"%}
{%block name="block_head_static"%}
    {%require name="common:static/lib/css/button.less"%}
    {%require name="common:static/lib/css/form.less"%}
    {%require name="common:static/lib/css/autocomplete.less"%}
    {%require name="authority:static/manage/manage.less"%}
{%/block%}
{%block name="content"%}
    <section>
        <div class="form-section">
            <div class="form-row">
                <div class="row-header">
                    功能选择：
                </div>
                <div class="row-content">
                    <label><input type="radio" name="switch" checked="checked" func="authAdd">添加用户权限</label>
                    <label><input type="radio" name="switch" func="authDel" >删除用户权限</label>
                </div>
            </div>
        </div>
        <div class="form-section" id="authAdd">
            <div class="form-row">
                <div class="row-header" style="border:none;">
                    选择要赋予权限的产品线：
                </div>
                <div class="row-content">
                    {%foreach $products as $pid=>$value %}
                        <label class="product-line-label info">
                            <input type="checkbox" value="{%$pid%}" />{%$value['productName']%}
                        </label>
                    {%/foreach%}
                </div>
            </div>
            <div class="form-row">
                <div class="row-header" style="border:none;">
                    输入要赋予权限的用户：<input type="text" class="autocomplete-main addUser" placeholder="输入用户邮箱前缀" />
                </div>
                <div class="row-content">
                    <div class="userList">
                        
                    </div>
                    <div class="clear"></div>
                </div>
            </div>
            <div class="bottom-control">
                <a class="btn" href="#" data-cmd="authAdd">添加权限</a>
            </div>
        </div>
        <div class="form-section" id="authDel" style="display:none;">
            <div class="form-row">
                <div class="row-header" style="border:none;">
                    输入要删除权限的用户：<input type="text" class="autocomplete-main queryUser" placeholder="输入用户邮箱前缀" />
                </div>
                <div class="row-content">
                    <div class="userInfo" style="min-height: 50px;">
                        
                    </div>
                </div>
            </div>
        </div>
    </section>
    {%require name="common:static/lib/js/autocomplete.js"%}
    {%require name="authority:static/manage/manage.js"%}
{%require name='authority:page/manage.tpl'%}{%/block%}