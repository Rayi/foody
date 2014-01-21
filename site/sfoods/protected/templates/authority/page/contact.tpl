{%extends file="common/page/layout.tpl"%}
{%block name="block_head_static"%}
    {%require name="common:static/lib/css/button.less"%}
    {%require name="common:static/lib/css/form.less"%}
    {%require name="common:static/lib/css/table.less"%}
    {%require name="common:static/lib/css/autocomplete.less"%}
    {%require name="authority:static/contact/contact.less"%}
{%/block%}
{%block name="content"%}
    <table class="data-sheet">
        <thead>
            <tr>
                <th style="width:200px;">产品线</th>
                <th>接口人</th>
            </tr>
        </thead>
        <tbody>
        {%foreach $contacts as $pid=>$value%}
            <tr>
                <td>{%$value['productName']%}</td>
                <td style="font-size:12px; line-height:20px; text-align:left;">
                    {%if $value['users']&&count($value['users'])>0 %}
                        {%foreach $value['users'] as $i=>$user %}
                            <div class="userItem">
                                    {%$value['users'][$i]%}
                                <span class="del" data-pid="{%$pid%}" data-uid="{%$value['uids'][$i]%}" data-cmd="delContact"></span>
                            </div>
                        {%/foreach%}
                    {%/if%}
                    <span class="add-user-btn" data-cmd="showAdd" title="添加接口人">+ 添加接口人</span>
                    <input type="text" style="width:200px; display:none;" class="autocomplete-main" placeholder="输入用户邮箱前缀" data-pid="{%$pid%}" />
                    <div class="clear"></div>
                </td>
            </tr>
        {%/foreach%}
        </tbody>
    </table>
    {%require name="common:static/lib/js/autocomplete.js"%}
    {%require name="authority:static/contact/contact.js"%}
{%require name='authority:page/contact.tpl'%}{%/block%}