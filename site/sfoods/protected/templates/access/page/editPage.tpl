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
	        	<h2 class="title">管理监控页</h2>
	         	<div class="form-section">
			        <div class="form-row">
			            <div class="row-header">
			                <span class="input-must">*</span>
			                <span>选择产品线</span>
			            </div>
			            <div class="row-content">
			                <select id="products" name="products">
			                	{%if count($product)>0 %}
				                	{%foreach $product as  $val%}
				                		<option {%if $val['prod_id']==$default %}selected='selected'{%/if%}   value="{%$val['prod_id']%}">{%$val['prod_name']%}</option>
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
			                <span>监控页面列表</span>
			            </div>
			            <div class="row-content">				            	
				            	<table class="table">
					            	<thead>
									    <tr>
						        			<td>页面ID</td>
						        			<td>页面名称</td>	
						        			<td>示例URL</td>
						        			<td>自定义监控指标</td>
						        			<td>页面终端</td>
						        			<td>操作</td>			
					        		    </tr>
								    </thead>
								    <tbody>
								    	{%foreach $product as $obj %}
								    		{%if $obj['prod_id'] == $default %}
								    		{%foreach $obj['pages'] as $page_id=> $val %}
										    	<tr>
								        			<td>
								        				<input  name="prod_id"  type="hidden" value="{%$obj['prod_id']%}">
								        				<input  name="dps_id"  type="hidden" value="{%$page_id%}">
								        				<input style="width:60px;" disabled name="page_id" class="input-text"  type="text" value="{%$val['page_id']%}"  >
								        			</td>
								        			<td>
								        				<input style="width:120px;" name="page_name" class="input-text"  type="text"  value="{%$val['page_name']%}">
								        			</td>	
								        			<td>
								        				<input style="width:120px;"  name="page_url" class="input-text"  type="text"  value="{%$val['url']%}">
								        			</td>	
								        			<td>
								        				<input style="width:350px;"  name="cus_item" class="input-text" data-check="no" type="text"  value="{%$val['items']%}">
								        			</td>
								        			<td>
								        				<select style="width:80px;" id="platform" name="platform" class="span2">        
								        					<option value="1" {%if $val['platform']=="mobile" %}selected='selected'{%/if%} >无线端</option>       
								        					<option value="0" {%if $val['platform']=="pc" %}selected='selected'{%/if%}>pc端</option>             
								        				</select>
								        			</td>
								        			<td>
								        				{%if $val['status']==1 %}
								        				<div class="btn-group radio-btn-group">
								        					<a class="btn submit" href="#" data-cmd="editPage">修改</a>
								        					<a class="btn submit" href="#" data-cmd="stopMonitor">暂停监控</a>
								        					<a target="_blank" class="btn" href="/access/deploy?product={%$obj['prod_id']%}&page={%$val['page_id']%}" data-cmd="getJS">查看监控脚本</a>
								        				</div>
								        				{%else if $val['status']==-1%}
								        					<div class="btn-group radio-btn-group">
								        						<a class="btn submit" href="#" data-cmd="startMonitor">开启监控</a>
								        					</div>
								        				{%else%}
								        					<div class="btn-group radio-btn-group">
								        						<a class="btn submit" href="#" data-cmd="startMonitor">审批中</a>
								        					</div>
								        				{%/if%}
								        			</td>		
							        		    </tr>
							        		{%/foreach%}	
					        		    	{%/if%}
					        		    {%/foreach%}						    	 
								    </tbody>
				                </table>
				            </div>
			        </div>
				</div>           

			    <div class="bottom-control">
				</div>
	            
	        </div>
	    </div>
	</div>
	
{%require name='access:page/editPage.tpl'%}{%/block%}

