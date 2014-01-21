<?php /*%%SmartyHeaderCode:100346024552ddeb3955a5f1-57753703%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '6513ef74c7f97337f7699854d0079cafef7fb263' => 
    array (
      0 => '/Users/cnrayi/Github/foody/site/sfoods/protected/templates/pms/page/index.tpl',
      1 => 1388466366,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '100346024552ddeb3955a5f1-57753703',
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_52de90a8ece715_05138330',
  'has_nocache_code' => false,
  'cache_lifetime' => 0,
),true); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52de90a8ece715_05138330')) {function content_52de90a8ece715_05138330($_smarty_tpl) {?>{%extends file="common/page/layout.tpl"%}
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
	
{%require name='pms:page/index.tpl'%}{%/block%}

<?php }} ?>