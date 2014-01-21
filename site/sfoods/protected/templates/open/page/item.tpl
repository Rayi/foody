{%extends file="common/page/layout.tpl"%}
{%block name="block_head_static"%}
	{%require name="pms:static/lib/css/common.css"%}
	{%require name="pms:static/lib/css/ui.css"%}
	{%require name="home:widget/rank/rank.css"%}
	{%require name="pms:static/lib/css/font-awesome.min.css"%}
	{%require name="open:static/item/index.less"%}
	{%require name="common:static/lib/js/jquery.sparkline.js"%}
	{%require name="open:static/item/index.js"%}
{%/block%}
{%block name="content"%}
	<!-- <h3 class="general_title"> 数据指标对比 </h3> -->
	<div class="data-item">
		<span>数据项： </span>
		<div class="ui_buttons" data-cmd="change-item">
            <button class="button current" data-param="pv">PV 一周趋势</button>
            <button class="button" data-param="refer">来源 分布</button>
            <button class="button" data-param="visit">最热访问 时段</button>
            <button class="button" data-param="ie6">IE6 占比</button>
           	<button class="button" data-param="chrome">Chrome 占比</button>
           	<button class="button" data-param="ios">iOS 占比</button>
           	<button class="button" data-param="android">Android 占比</button>
           	<button class="button" data-param="tablet">平板 占比</button>
           	<button class="button" data-param="mobile">手机 占比</button>
           	<button class="button" data-param="log">登录 占比</button>
           	<button class="button" data-param="2g">2G 占比</button>
           	<button class="button" data-param="3g">3G 占比</button>
	    </div>
	</div>
	<hr>
	<div id="perf_wrap" class="row-fluid"></div>
{%require name='open:page/item.tpl'%}{%/block%}