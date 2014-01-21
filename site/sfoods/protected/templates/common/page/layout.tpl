<!DOCTYPE html>
{%* 使用html插件替换普通html标签，同时注册JS组件化库 *%}
{%html framework="common:static/lib/js/mod.js"%}
    {%* 使用head插件替换head标签，主要为控制加载同步静态资源使用 *%}
	{%head%}
	    <meta charset="utf-8"/>
    	<meta content="DPS,FEX.webspeed and FEX.uxrp,性能与访问数据统计平台" name="description">
    	<title>DPS v1.0</title>
        {%require name="common:static/lib/css/layout.less"%}
        {%require name="common:static/lib/js/template.js"%}
        {%require name="common:static/lib/js/jquery.js"%}
        
    	{%block name="block_head_static"%}{%/block%}
	{%/head%}
	{%* 使用body插件替换body标签，主要为可控制加载JS资源 *%}
	{%body%}
        {%widget name="common:widget/header/header.tpl" userName=$userName%}
        {%widget name="common:widget/nav/nav.tpl"%}
        <div class="dps_main_container">
		    {%block name="content"%}{%/block%}
        </div>
        {%widget name="common:widget/gotoTop/gotoTop.tpl"%}
        {%widget name="common:widget/footer/footer.tpl"%}
        {%script%}
            var domainName = document.domain;
            window._hmt = window._hmt || [];
            var hm = document.createElement("script");
            hm.src = "//hm.baidu.com/hm.js?9b67804759bfe908a7ab00e9ac2a261f";
            if(domainName === 'dp.baidu.com') {
                var s = document.getElementsByTagName("script")[0]; 
                s.parentNode.insertBefore(hm, s);
            }
        {%/script%}

	{%require name='common:page/layout.tpl'%}{%/body%}
{%/html%}