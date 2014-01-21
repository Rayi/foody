{%extends file="common/page/layout.tpl"%}
{%block name="block_head_static"%}
	{%require name="access:static/lib/css/common.css"%}
{%/block%}
{%block name="content"%}
	{%$isAccess="on"%}
	{%widget name="back:widget/sidebar/sidebar.tpl"%}
	<div id="loading_gif">
		<img src="/static/lib/img/loading.gif" alt="加载中" title="加载中" />
	</div>
	<div id="wrapper">
	    <div id="wrapper-inner">
	        <div id="main-content">
	        	<h2 class="title">接入页面列表(仅为包含 性能、访问、点击 的页面)</h2>
	         	<div id="page-nav" class="page-nav"></div>
	        </div>
	    </div>
	</div>
{%require name='open:page/pv.tpl'%}{%/block%}