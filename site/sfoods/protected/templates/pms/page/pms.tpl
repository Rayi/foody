{%extends file="common/page/layout.tpl"%}
{%block name="block_head_static"%}
    <!--[if lt IE 9]>
        <script src="/lib/js/html5.js"></script>
    <![endif]-->
    {%* 模板中加载静态资源 *%}
   
    {%require name="pms:static/lib/js/jquery-1.9.min.js"%}
    {%require name="pms:static/lib/js/lib.js"%}
    {%require name="pms:static/lib/js/jquery.tmpl.js"%}
    {%require name="pms:static/lib/js/bootstrapSwitch.min.js"%}   
    {%require name="pms:static/lib/js/jquery.sparkline.js"%}
    {%require name="pms:static/lib/js/select2.min.js"%}
    {%require name="pms:static/lib/js/highstock.js"%}
    {%require name="pms:static/lib/js/main.js"%}
    {%require name="pms:static/lib/css/common.css"%}
    {%require name="pms:static/lib/css/font-awesome.min.css"%}
    {%require name="pms:static/lib/css/select2.css"%}
    

    {%script%}
    	$(function(){
    		var summaryTip = require("pms:widget/web/summary/summary.js");
    		var desc = require("pms:widget/web/desc/desc.js");
    		var profile = require("pms:widget/web/profile/profile.js");
    		var trend = require("pms:widget/web/trend/trend.js");
    		var portion = require("pms:widget/web/portion/portion.js");
    		summaryTip.initPageTip("pc",14,1);
    		desc.init(null);
    		profile.rendIndexPreview(14,1,"daily",$("#indexPreview"),"render");



			trend.init();
			var params = {
				"product" : 14,
				"page" :1,
				"start" : 20131201,
				"perf" : "net",
				"end" : 20131204
			};
			portion.rendPortionData(params,"test");
    	})
    	
    {%/script%}
{%/block%}
{%block name="content"%}
	<div id="wrapper" class="fixed">
	    <div id="wrapper-inner" class="pattern1">
	        
	         <div id="main-content">
	         	<div class="row-fluid">
					<div class="span12">
						<!-- 综合评价模块 start -->
						{%widget name="pms:widget/web/summary/summary.tpl"%}
						<!-- 综合评价模块 end -->

						<!-- 统计描述模块 start -->
				       	{%widget name="pms:widget/web/desc/desc.tpl"%}
			            <!-- 统计描述模块 end -->

			            <!-- 数据概况 start -->
				       	{%widget name="pms:widget/web/profile/profile.tpl"%}
			            <!-- 数据概况 end -->

			            <!-- 总体趋势 start -->
				       	{%widget name="pms:widget/web/trend/trend.tpl"%}
			            <!-- 总体趋势  end -->

			            <!-- 产品线分享 start -->
				       	{%widget name="pms:widget/web/share/share.tpl"%}
			            <!-- 产品线分享  end -->

			            <!-- 总体比例 start -->
				       	{%widget name="pms:widget/web/portion/portion.tpl"%}
			            <!-- 总体比例  end -->
					</div>
				</div>
	           
	        </div>
	    </div>
	</div>
	
{%require name='pms:page/pms.tpl'%}{%/block%}

