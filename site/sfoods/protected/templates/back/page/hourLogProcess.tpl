{%extends file="common/page/layout.tpl"%}
{%block name="block_head_static"%}
    {%require name="pms:static/lib/css/font-awesome.min.css"%}
	{%require name="access:static/lib/css/common.css"%}
	{%require name="back:static/accessPages/index.js"%}
{%/block%}
{%block name="content"%}
	{%widget name="back:widget/sidebar/sidebar.tpl"%}
	<div id="loading_gif">
		<img src="/static/lib/img/loading.gif" alt="加载中" title="加载中" />
	</div>
	<div id="wrapper">
	    <div id="wrapper-inner">
	        <div id="main-content">
	        	<h2 class="title">接入页面列表</h2>
	         	<div id="page-nav" class="page-nav"></div>
	        </div>
	    </div>
	</div>
{%require name='back:page/hourLogProcess.tpl'%}{%/block%}