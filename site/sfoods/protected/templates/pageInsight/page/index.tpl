{%extends file="common/page/layout.tpl"%}
{%block name="block_head_static"%}
    {%require name="demo:static/index/index.less"%}
{%/block%}
{%block name="content"%}
    <div id="less">Hello world，我是用less写的样式！</div>
    <div id="pages"></div>
    {%require name="demo:static/index/index.js"%}
{%require name='pageInsight:page/index.tpl'%}{%/block%}