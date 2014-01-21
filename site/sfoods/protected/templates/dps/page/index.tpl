{%extends file="common/page/layout.tpl"%}
{%block name="block_head_static"%}
    <!--[if lt IE 9]>
        <script src="/lib/js/html5.js"></script>
    <![endif]-->
    {%* 模板中加载静态资源 *%}
   
    {%require name="pms:static/lib/js/jquery-1.9.min.js"%}
    {%require name="pms:static/lib/js/lib.js"%}
    {%require name="pms:static/lib/js/jquery.tmpl.js"%}   、
    {%require name="pms:static/lib/css/jquery.easy-pie-chart.css"%}   
    {%require name="pms:static/lib/js/jquery.easy-pie-chart.js"%}
    {%require name="pms:static/lib/js/jquery.sparkline.js"%}
    {%require name="pms:static/lib/css/bootstrap.css"%}
    {%require name="pms:static/lib/css/common.css"%}
    {%require name="pms:static/lib/css/ui.css"%}
    {%require name="pms:static/lib/css/font-awesome.min.css"%}

    {%script%}
    	var rank = require("pms:widget/rank/rank.js");
    	rank.init();
    {%/script%}
{%/block%}
{%block name="content"%}
	<div id="wrapper" class="fixed">
	    <div id="wrapper-inner" class="pattern1">
	        
	         <div id="main-content">
	         	
	            {%widget name="pms:widget/rank/rank.tpl"%}
	            

	            

	            
	        </div>
	    </div>
	</div>
	
{%require name='dps:page/index.tpl'%}{%/block%}

