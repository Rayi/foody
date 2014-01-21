{%extends file="common/page/layout.tpl"%}
{%block name="block_head_static"%}
    {%require name="pms:static/lib/css/font-awesome.min.css"%}
	{%require name="access:static/lib/css/common.css"%}
	{%require name="common:static/lib/js/highcharts.js"%}
	{%require name="common:static/lib/js/highcharts-more.js"%}
	{%require name="back:static/hourLogProgress/index.js"%}
{%/block%}
{%block name="content"%}
	{%$isProgress="on"%}
	{%widget name="back:widget/sidebar/sidebar.tpl"%}
	<div id="loading_gif">
		<img src="/static/lib/img/loading.gif" alt="加载中" title="加载中" />
	</div>
	<div id="wrapper">
	    <div id="wrapper-inner">
	        <div id="main-content">
	        	<h2 class="title">小时级任务进度</h2>
	         	<div id="log-process"></div>
	        </div>
	    </div>
	</div>
{%require name='back:page/hourLogProgress.tpl'%}{%/block%}