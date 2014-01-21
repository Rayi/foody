{%extends file="common/page/layout.tpl"%}
{%block name="block_head_static"%}
    <!--[if lt IE 9]>
        <script src="/lib/js/html5.js"></script>
    <![endif]-->
    {%* 模板中加载静态资源 *%}   
    {%require name="common:static/lib/js/jquery.js"%}
    {%require name="pms:static/lib/js/lib.js"%}
    {%require name="pms:static/lib/js/jquery.tmpl.js"%} 
    {%require name="pms:static/lib/css/font-awesome.min.css"%}
    {%require name="access:static/lib/css/common.css"%}
    {%require name="access:static/lib/js/manage.js"%}
    {%script%}
    	var CONFIG  = {%json_encode($product)%};
    	if(Manager && Manager.init){
    		Manager.init(CONFIG);
    	}
    {%/script%}
{%/block%}
{%block name="content"%}
	
	{%widget name="access:widget/sidebar/sidebar.tpl"%}

	<div id="loading_gif"><img src="/static/lib/img/loading.gif" alt="加载中" title="加载中" /></div>
	<div id="wrapper">
	    <div id="wrapper-inner">
	        <div id="main-content">
	        	<h2 class="title">添加监控页</h2>
	         	<form name="addProduct">
		         	<div class="form-section">
				        <div class="form-row">
				            <div class="row-header">
				                <span class="input-must">*</span>
				                <span>已有产品线参考，请勿重复</span>
				            </div>
				            <div class="row-content">
				                <select id="products" name="products">
				                	{%if count($product)>0 %}
					                	{%foreach $product as  $val%}
					                		<option value="{%$val['prod_id']%}">{%$val['prod_name']%}({%$val['prod_id']%})</option>
					                	{%/foreach%}
				                	{%else%}
				                		<option value="">没有产品线管理员权限</option>
				                	{%/if%}
				                </select>
				            </div>
				        </div>
				        <div class="form-row">
				            <div class="row-header">
				                <span class="input-must">*</span>
				                <span>新增产品线ID</span>
				            </div>
				            <div class="row-content">
				                <input id="prod_id" name="prod_id" class="input-text"  type="text" placeholder="请勿重复">
				            </div>
				        </div>
				         <div class="form-row">
				            <div class="row-header">
				                <span class="input-must">*</span>
				                <span>新增产品线名称</span>
				            </div>
				            <div class="row-content">
				                <input id="prod_name" name="prod_name" class="input-text"  type="text" placeholder="如：贴吧">
				            </div>
				        </div>
					</div>           

				    <div class="bottom-control">
					    <div class="btn-group radio-btn-group">
					        <a class="btn submit" href="#" data-cmd="addProduct">添加产品线</a>
					        <a class="btn reset" href="#" >重置</a>
					    </div>
					</div>
				</form>
	            
	        </div>
	    </div>
	</div>
	
{%require name='access:page/addProduct.tpl'%}{%/block%}

