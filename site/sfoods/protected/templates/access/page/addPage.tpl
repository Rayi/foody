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
		<form name="add">
		    <div id="wrapper-inner">
		        <div id="main-content">
		        	<h2 class="title">添加监控页</h2>
		         	<div class="form-section">
				        <div class="form-row">
				            <div class="row-header">
				                <span class="input-must">*</span>
				                <span>所属产品线</span>
				            </div>
				            <div class="row-content">
				                <select id="prod_id" name="prod_id">
				                	{%if count($product)>0 %}
					                	{%foreach $product as  $val%}
					                		<option value="{%$val['prod_id']%}">{%$val['prod_name']%}</option>
					                	{%/foreach%}
				                	{%else%}
				                		<option value="">没有产品线管理员权限</option>
				                	{%/if%}
				                </select>
				            </div>
				        </div>
				        <div class="form-row">
				            <div class="row-header">
				                <span>已有监控页参考(勿重复添加)</span>
				            </div>
				            <div class="row-content">
				                <select id="pages" name="pages">
				                	{%if count($product[0]['pages'])>0 %}
					                	{%foreach $product[0]['pages'] as $id => $val%}
					                		<option value="{%$val['page_id']%}">{%$val['page_name'] %}({%$val['page_id']%})</option>
					                	{%/foreach%}
				                	{%else%}
				                		<option value="">暂无监控页</option>
				                	{%/if%}
				                	
				                </select>
				            </div>
				        </div>
				        <div class="form-row">
				            <div class="row-header">
				                <span class="input-must">*</span>
				                <span>新增监控页面名称</span>
				            </div>
				            <div class="row-content">
				                <input id="page_name" name="page_name" class="input-text"  type="text" placeholder="如：帖子详情页">
				                <span class="input-tip"></span>
				            </div>
				        </div>
				        <div class="form-row">
				            <div class="row-header">
				                <span class="input-must">*</span>
				                <span>新增监控页面ID</span>
				            </div>
				            <div class="row-content">
				                <input id="page_id" name="page_id" class="new_id input-text" value="{%$product[0]['new_id']%}" type="text" >
				                <span class="input-tip"></span>
				                <p class="note">已自动生成，允许修改成字符串</p>
				            </div>
				        </div>
				       
				        <div class="form-row">
				            <div class="row-header">
				                <span class="input-must">*</span>
				                <span>页面采样率</span>
				            </div>
				            <div class="row-content">
				                <input id="page_sample" name="page_sample" class="input-text" placeholder="采样率 0-1，1为全部采样，如0.01指采样1%"  type="text" >
				                <span class="input-tip"></span>
				                 <p class="note">采样率主要在性能数据中使用，对于访问信息不会采样。性能采样控制在100-200万，计算方式：想要的采样/监控页面PV，如0.01</p>
				            </div>
				        </div>
				         <div class="form-row">
				            <div class="row-header">
				                <span class="input-must">*</span>
				                <span>页面终端</span>
				            </div>
				            <div class="row-content">
				                <label><input type="radio" name="platform" value="0" checked="checked"> PC端</label>
				                <label><input type="radio" name="platform" value="1"> 移动端</label>
				            </div>
				        </div>
				        <div class="form-row">
				            <div class="row-header">
				                <span class="input-must">*</span>
				                <span>是否有自定义核心指标</span>
				            </div>
				            <div class="row-content">
				                <label><input type="radio" name="flag" value="1" checked="checked"> 有</label>
				                <label><input type="radio" name="flag" value="0">没有</label>
				                <a target="_blank" href="#" class="help"><img width="18" src="/static/access/lib/img/help.png">&nbsp;什么是产品线自定义核心指标</a>
				                <p><input id="cus_item" name="cus_item" placeholder="自定义指标 例如 c_sug(搜索可用,1);p_server(服务器处理时间,1)"  class="input-text"  type="text" ></p>
				                <p class="note">c_前缀:自定义指标；p_前缀:自定义统计数据(非性能统计起点的一段耗时，如服务器处理) 。添加格式:指标缩写(指标名称,是否默认显示1/0)</p>
				            </div>
				        </div>
				        <div class="form-row">
				            <div class="row-header">
				                <span>监控页面示例URL</span>
				            </div>
				            <div class="row-content">
				                <input id="page_url" name="page_url" placeholder="线上示例URL,如：http://tieba.baidu.com/f?kw=%D6%B1%B2%A5"  class="input-text"  type="text" >
				                <span class="input-tip"></span>
				                <p class="note">填写示例URL方便查找相应的页面</p>
				            </div>
				        </div>
				    </div>
					            

				    <div class="bottom-control">
					    <div class="btn-group radio-btn-group">
					        <a class="btn submit" href="#" data-cmd="addPage">添加监控</a>
					        <a class="btn reset" href="#" >重置</a>
					    </div>
					</div>
		            
		        </div>
		    </div>
		</form>
	</div>
	
	<div class="popup-modal" id="check_js" >
        <div class="modal-header">
            <h4>脚本部署</h4>
            <span class="closer"></span>
        </div>
        <div class="modal-content" style="width: 500px;">
        	已经为您生成部署脚本，手动部署方案及FIS部署方案请点击链接<a class="checkJS" target="_blank" href="#">查看详细</a>
        </div>
        <div class="modal-footer">
                <a href="#" class="btn btn-confirm">确定</a><a href="#" class="btn btn-cancel closer">取消</a>
        </div>
    </div>
{%require name='access:page/addPage.tpl'%}{%/block%}

