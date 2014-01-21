{%extends file="fiscommon/page/layout.tpl"%}
{%block name="block_head_static"%}
    <!--[if lt IE 9]>
        <script src="/lib/js/html5.js"></script>
    <![endif]-->
    {%* 模板中加载静态资源 *%}
    {%require name="fishome:static/lib/css/bootstrap.css"%}
    {%require name="fishome:static/lib/css/bootstrap-responsive.css"%}
    {%require name="fishome:static/lib/js/jquery-1.10.1.js"%}
{%/block%}
{%block name="content"%}
    <div id="wrapper">
        <div id="sidebar">
            {%* 通过widget插件加载模块化页面片段，name属性对应文件路径,模块名:文件目录路径 *%}
            {%widget
                name="fiscommon:widget/sidebar/sidebar.tpl"
                data=$docs
            %}
        </div>
        <div id="container">
            {%widget name="fishome:widget/slogan/slogan.tpl"%}
            {%foreach $docs as $index=>$doc%}
                {%widget
                    name="fishome:widget/section/section.tpl"
                    call="section"
                    data=$doc index=$index
                %}
            {%/foreach%}
        </div>
    </div>
    {%require name="fishome:static/index/index.css"%}
    {%* 通过script插件收集JS片段 *%}
    {%script%}var _bdhmProtocol = (("https:" == document.location.protocol) ? " https://" : " http://");
document.write(unescape("%3Cscript src='" + _bdhmProtocol + "hm.baidu.com/h.js%3F70b541fe48dd916f7163051b0ce5a0e3' type='text/javascript'%3E%3C/script%3E"));{%/script%}
{%require name='fishome:page/index.tpl'%}{%/block%}