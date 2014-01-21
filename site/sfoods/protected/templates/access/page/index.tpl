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

{%/block%}
{%block name="content"%}
	<div id="loading_gif"><img src="/static/lib/img/loading.gif" alt="加载中" title="加载中" /></div>
	<div id="wrapper">
	    <div id="wrapper-inner">
	        <div id="main-content">
	         	<div class="form-section">
			        <div class="form-row">
			            <div class="row-header">
			                <span class="input-must">*</span>
			                <span>所属产品线</span>
			            </div>
			            <div class="row-content">
			                <select id="prod_id" name="prod_id" class="error">
			                	<option value="">请选择所属产品线</option>
			                </select>
			            </div>
			        </div>
			        <div class="form-row">
			            <div class="row-header">
			                <span class="input-must"></span>
			                <span>已有监控页参考</span>
			            </div>
			            <div class="row-content">
			                <select id="pages" name="pages">
			                </select>
			            </div>
			        </div>
			        <div class="form-row">
			            <div class="row-header">
			                <span class="input-must">*</span>
			                <span>新增监控页面名称</span>
			            </div>
			            <div class="row-content">
			                <input id="page_name" name="page_name" class="input-text"  type="text" placeholder="如：百科词条页主题模块展现实验">
			                <span class="input-tip"></span>
			            </div>
			        </div>
			        <div class="form-row">
			            <div class="row-header">
			                <span class="input-must">*</span>
			                <span>新增监控页面ID</span>
			            </div>
			            <div class="row-content">
			                <input id="page_id" name="page_id" class="input-text"  type="text" >
			                <span class="input-tip">已自动生成，允许修改成字符串</span>
			            </div>
			        </div>
			        <div class="form-row">
			            <div class="row-header">
			                <span class="input-must">*</span>
			                <span>页面终端</span>
			            </div>
			            <div class="row-content">
			                <label><input type="radio" name="platform" value="0" checked="checked"> PC</label>
			                <label><input type="radio" name="platform" value="1"> Mobile</label>
			            </div>
			        </div>
			        <div class="form-row">
			            <div class="row-header">
			                <span class="input-must">*</span>
			                <span>页面采样率</span>
			            </div>
			            <div class="row-content">
			                <input id="page_url" name="page_url" class="input-text"  type="text" >
			                <span class="input-tip">采样率主要在性能数据中使用，对于访问信息不会采样。性能采样控制在100-200万，计算访问想要的采样/监控页面PV，如0.01</span>
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
			                <a target="_blank" href="http://hunter.baidu.com/?r=home/help" class="help"><img width="18" src="/static/images/help.png">&nbsp;什么是产品线自定义核心指标</a>
			            </div>
			        </div>
			        <div class="form-row">
			            <div class="row-header">
			                <span class="input-must">*</span>
			                <span>监控页面示例URL</span>
			            </div>
			            <div class="row-content">
			                <input id="page_url" name="page_url" class="input-text"  type="text" >
			                <span class="input-tip">填写示例URL方便查找相应的页面</span>
			            </div>
			        </div>
			    </div>
				            

	            
	        </div>
	    </div>
	</div>
	
{%require name='access:page/index.tpl'%}{%/block%}

