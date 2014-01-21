{%extends file="common/page/layout.tpl"%}
{%block name="block_head_static"%}
    <!--[if lt IE 9]>
        <script src="/lib/js/html5.js"></script>
    <![endif]-->
    {%* 模板中加载静态资源 *%}
   
    {%require name="pms:static/lib/js/jquery-1.9.min.js"%}
    {%require name="pms:static/lib/js/highstock.js"%}
    {%require name="pms:static/lib/js/lib.js"%}
    {%require name="pms:static/lib/js/jquery.tmpl.js"%} 
    {%require name="pms:static/lib/css/bootstrap.css"%}
    {%require name="pms:static/lib/css/common.css"%}
    {%require name="pms:static/lib/css/ui.css"%}
    {%require name="pms:static/lib/css/font-awesome.min.css"%}


    {%require name="home:static/lib/css/jquery.easy-pie-chart.css"%}   
    {%require name="home:static/lib/js/jquery.easy-pie-chart.js"%}
    {%require name="home:static/lib/js/jquery.sparkline.js"%}

    {%script%}
    	var rank = require("home:widget/rank/rank.js");
    	rank.init();
    {%/script%}
{%/block%}
{%block name="content"%}
	<div id="loading_gif"><img src="/static/lib/img/loading.gif" alt="加载中" title="加载中" /></div>
	<div id="wrapper" class="fixed">
	    <div id="wrapper-inner">
	        
	         <div id="main-content">
	         	
	            {%widget name="home:widget/rank/rank.tpl"%}

	            
	        </div>
	    </div>
	</div>
	
{%require name='home:page/index.tpl'%}{%/block%}

