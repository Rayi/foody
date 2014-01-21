<!-- 统计指标介绍图形说明 -->
<h3>统计起点
	<small  id="perf">
        <div class="btn-group">
            <button title="接入新版监控默认以浏览器发起请求为起点，更符合用户感知"  class="btn active" value="net">
                浏览器发出请求
             </button>
             <button title="旧版监控以页面渲染为起点，指标不包含网络时间"  class="btn " value="render">
                页面开始渲染
             </button>
         </div>
    </small>
</h3>   
<div class="widget index">
    <div class="widget-content no-padding">
        <div class="widget-content-inner">
            <div id="item_desc" class="row-fluid">
				<div class="milestone-tracking__overview">

					<ul class="milestone-tracking__overview-groups clearfix"><!-- ngRepeat: group in milestoneGroups -->
					 	<li data-ng-repeat="group in milestoneGroups" class="hunt"  style="width: 40%;">
					 		<span class="milestone-tracking__overview-group-heading">
					 			<span class="ng-binding"><i>></i>网络耗时</span>
					 		</span>
					 	</li>
					 	<li data-ng-repeat="group in milestoneGroups" class="gather"  style="width: 10%;">
					 		<span class="milestone-tracking__overview-group-heading">
					 			<span class="ng-binding"><i>></i>白屏时间</span>
					 		</span>
					 	</li>
					 	<li data-ng-repeat="group in milestoneGroups" class="invest"  style="width: 50%;">
					 		<span class="milestone-tracking__overview-group-heading">
					 			<span class="ng-binding"><i>></i>渲染耗时</span>
					 		</span>
					 	</li>
					</ul>


				    <ul class="milestone-tracking__milestones clearfix">
				    	<li  class="hunt completed-false active-false">
					        <span class="milestone-tracking__overview-number">
					          <span class="ng-binding">1</span>
					        </span>
					        <div class="milestone-tracking__overview-content">
					          <div title='DNS查找完毕' class="milestone-tracking__overview-heading">
					            <a class="milestone-tracking__overview-title ng-binding" href="#">DNS查询</a>	           
					          </div>	          
					        </div>
				      	</li>
				      	<li  class="hunt completed-false active-false">
					        <span class="milestone-tracking__overview-number">
					          <span class="ng-binding">2</span>
					        </span>
					        <div title="TCP建立连接完毕" class="milestone-tracking__overview-content">
					          <div class="milestone-tracking__overview-heading">
					            <a class="milestone-tracking__overview-title ng-binding" href="#">TCP连接</a>	           
					          </div>	          
					        </div>
				      	</li>
				      	<li  class="hunt completed-false active-false">
					        <span class="milestone-tracking__overview-number">
					          <span class="ng-binding">3</span>
					        </span>
					        <div title="server端处理完毕，开始返回数据" class="milestone-tracking__overview-content">
					          <div class="milestone-tracking__overview-heading">
					            <a class="milestone-tracking__overview-title ng-binding" href="#">服务器响应</a>	           
					          </div>	          
					        </div>
				      	</li>
				      	<li  class="hunt completed-false active-false">
					        <span class="milestone-tracking__overview-number">
					          <span class="ng-binding">4</span>
					        </span>
					        <div title="html文档传输完成" class="milestone-tracking__overview-content">
					          <div class="milestone-tracking__overview-heading">
					            <a class="milestone-tracking__overview-title ng-binding" href="#">html传输</a>	           
					          </div>	          
					        </div>
				      	</li>
				      	<li class="gather completed-false active-false">
					        <span class="milestone-tracking__overview-number">
					          <span class="ng-binding">5</span>
					        </span>
					        <div title="头部js、css静态资源加载完毕，页面开始出现内容，带网络耗时的监控中此点为白屏时间" class="milestone-tracking__overview-content">
					          <div class="milestone-tracking__overview-heading">
					            <a class="milestone-tracking__overview-title ng-binding" href="#">头部资源加载</a>	           
					          </div>	          
					        </div>
				      	</li>
				      	<li  class="invest completed-false active-false">
					        <span class="milestone-tracking__overview-number">
					          <span class="ng-binding">6</span>
					        </span>
					        <div title="用户屏幕内内容渲染完毕的时间，主要为首屏内图片加载完毕的时间" class="milestone-tracking__overview-content">
					          <div class="milestone-tracking__overview-heading">
					            <a class="milestone-tracking__overview-title ng-binding" href="#">首屏时间</a>	           
					          </div>	          
					        </div>
				      	</li>
				      
				      	<li  class="invest completed-false active-false">
					        <span class="milestone-tracking__overview-number">
					          <span class="ng-binding">7</span>
					        </span>
					        <div title="js 的domready触发的时间，此时一般开始绑定事件" class="milestone-tracking__overview-content">
					          <div class="milestone-tracking__overview-heading">
					            <a class="milestone-tracking__overview-title ng-binding" href="#">用户可操作</a>	           
					          </div>	          
					        </div>
				      	</li>
				      		<li  class="invest completed-false active-false">
					        <span class="milestone-tracking__overview-number">
					          <span class="ng-binding">8</span>
					        </span>
					        <div title="产品线自己定义的业务相关的核心指标" class="milestone-tracking__overview-content">
					          <div class="milestone-tracking__overview-heading">
					            <a class="milestone-tracking__overview-title ng-binding" href="#">自定义核心指标</a>	           
					          </div>	          
					        </div>
				      	</li>
				      	<li  class="invest completed-false active-false">
					        <span class="milestone-tracking__overview-number">
					          <span class="ng-binding">9</span>
					        </span>
					        <div title="默认为js的onload触发的时间，即页面资源加载完毕，如果使用异步渲染请使用自定义点标记或者修正总下载时间" class="milestone-tracking__overview-content">
					          <div class="milestone-tracking__overview-heading">
					            <a class="milestone-tracking__overview-title ng-binding" href="#">总下载时间</a>	           
					          </div>	          
					        </div>
				      	</li>
				      		<li  class="invest completed-false active-false">
					        <span class="milestone-tracking__overview-number">
					          <span class="ng-binding">10</span>
					        </span>
					        <div title="js onload之后的异步渲染，可以使用自定义点统计。如果需统计多次异步请求，请使用无刷新监控。" class="milestone-tracking__overview-content">
					          <div class="milestone-tracking__overview-heading">
					            <a class="milestone-tracking__overview-title ng-binding" href="#">其他异步渲染</a>	           
					          </div>	          
					        </div>
				      	</li>
				      	
				    </ul>

				    <div id="tj_indicator">	
				    	 <span class="red"><i class="icon iconfa-arrow-up"></i>  统计起点</span>
				   	</div>
				    
				</div>
		 	</div>                                    
        </div>
    </div>
</div> 