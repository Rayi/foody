{%extends file="common/page/layout.tpl"%}
{%block name="block_head_static"%}
    {%require name="common:static/lib/css/button.less"%}
    {%require name="common:static/lib/css/form.less"%}
{%/block%}
{%block name="content"%}
    <div class="cont-body">
        <div class="info-box">
            {%if $noProduct %}
                <p class="error">没有找到您要访问的产品线！</p>
            {%else%}
                {%if $productName %}
                    <p class="error">您无权权限访问【{%$productName%}】产品线的数据页面！</p>
                    <p><a href="/authority/request" class="btn">申请权限</a></p>
                {%else%}
                    <p class="error">您无权权限访问该页面！</p>
                {%/if%}
            {%/if%}
        </div>
    </div>
{%require name='authority:page/error.tpl'%}{%/block%}