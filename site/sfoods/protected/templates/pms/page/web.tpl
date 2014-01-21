{%extends file="common/page/layout.tpl"%}
{%block name="block_head_static"%}
    <!--[if lt IE 9]>
        <script src="/lib/js/html5.js"></script>
    <![endif]-->
    {%* 模板中加载静态资源 *%}
   
    {%require name="pms:static/lib/js/lib.js"%}
    {%require name="pms:static/lib/js/highstock.js"%}
    {%require name="pms:static/lib/js/jquery.tmpl.js"%}
    {%require name="pms:static/lib/js/bootstrapSwitch.min.js"%}   
    {%require name="pms:static/lib/js/jquery.sparkline.js"%}
    {%require name="pms:static/lib/js/select2.min.js"%}

    {%require name="pms:static/lib/js/gri.dateRange.js"%}
    {%require name="pms:static/lib/css/gri.controls.css"%}
    
    {%require name="pms:static/lib/js/main.js"%}
    {%require name="pms:static/lib/js/PMS_Service.js"%}
    {%require name="pms:static/lib/css/common.css"%}
    {%require name="pms:static/lib/css/font-awesome.min.css"%}
    {%require name="pms:static/lib/css/select2.css"%}
    {%require name="pms:static/web/web.js"%}



{%/block%}
{%block name="content"%}
	<div id="loading_gif"><img src="/static/pms/lib/img/loading.gif" alt="加载中" title="加载中" /></div>

    <div id="module-popup">
    </div>
    <div id="pop_wrap">
    </div>
	<div id="wrapper" class="fixed">
	    <div id="wrapper-inner">

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

                        <!-- 多维及辅助信息 start -->
                        {%widget name="pms:widget/web/dimen/dimen.tpl"%}
                        <!-- 多维及辅助信息 end -->


					</div>
				</div>
	           
	        </div>
	    </div>
	</div>
	
{%require name='pms:page/web.tpl'%}{%/block%}

