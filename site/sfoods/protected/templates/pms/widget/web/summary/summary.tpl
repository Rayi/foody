<!-- Start Dashboard Summary -->
<h3>
	<b title="鼠标移动至方框查看详细信息">综合评价</b>
	<span class="level label-0"></span>
</h3>

<script id="summaryTip-tmpl" type="type/x-jquery-tmpl">	
	<div class="span3">
		<div class="widget">
			<div class="widget-content">
				<div class="widget-content-inner">
					<div id="page-index" class="chart-summary-icon">
                    	<span class="icon   iconfa-magic"></span>
                    	<span class='spark' rel='line'>${pageIndex.trend}</span>
                        <span class="title">综合指数(越小越好)</span>
                        <span class="value">${pageIndex.index}</span>
                        <span class="description ${pageIndex.rate>0 ? 'up' : 'down'} "><i class="${pageIndex.rate>0 ? 'iconfa-arrow-up' : 'iconfa-arrow-down'} "></i>${pageIndex.rate}% ${pageIndex.status=="ok"?"正常波动" : "波动异常"}</span>
						<ul class="dropdown-menu" role="menu">
	                        <li class="header">页面综合指数<a class="more" target="_blank" href="perfComp.php">查看更多</a></li>
	                        <div class="dropdown-menu-item">
	                            <div class="info">
	                            	<div class="rank"><div class="arrow" style="display: block; margin-left: 0;"></div></div>
	                            	<h5>指标意义</h5>
	                            	<p>
	                            		根据四个关键指标的权重加权所得，作为衡量页面性能的综合指标,同一页面指数越小性能越好
	                            	</p>
	                            	<h5>计算规则</h5>
	                            	<p>
	                            	用户等待(白屏)时间*(0.5+区间权重)+首屏时间*(0.3+区间权重)+用户可操作(domready)*(0.15+区间权重)+总下载时间*(0.05+区间权重)，
	                            	</p>
	                            </div>
	                        </div>
	                        <li class="footer"><a href="#"></a></li>
	                    </ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="span3">
		<div class="widget">
			<div class="widget-content">
				<div class="widget-content-inner">
				   	<div id="page-rank" class="chart-summary-icon">
                    	<span class="icon  iconfa-bar-chart"></span>
                    	<span class='spark' rel='bar'>${pageIndex.rankList ? pageIndex.rankList : "--"}</span>
                        <span class="title">页面排名</span>
                        <span class="value">${pageIndex.rank }/${pageIndex.detail.length}</span>
                        <span class="description ${pageIndex.change>0 ? 'up' : 'down'}">${pageIndex.change >0 ? "下降" : "上升" }${ Math.abs(pageIndex.change)}名</span>
                        <ul class="dropdown-menu" role="menu">
	                        <li class="header">页面综合指数排名 <a class="more" target="_blank" href="perfComp.php">查看更多</a></li>
	                        <div class="dropdown-menu-item">
	                        	{{if pageIndex.detail}}
		                        	{{each(k,s) pageIndex.detail}}
		                            <li>
			                            <a href="#">
			                                <div class="detail">
			                                    <span class="message">${s.prod_name +"--"+ s.page_name}   </span>
			                                    <span>综合指数<b>${s.page_index}</b>   排名 <b class="${k<3 ? 'green' : 'red'}">${k+1}</b><span>
			                                </div>
			                            </a>
			                        </li>
			                        {{/each}}
		                        {{/if}}
	                        </div>
	                        <li class="footer"><a target="_blank" href="#"></a></li>
	                    </ul>
					</div>
				</div>
			</div>
		</div>
	</div>


	<div class="span3">
		<div class="widget">
			<div class="widget-content">
				<div class="widget-content-inner">
					<div id="page-rating" class="chart-summary-icon" title="${dataLevel.tip}">
                    	<span class="icon iconfa-bullhorn"></span>
                        <span class="title">统计评级</span>
                        
						<ul class="rating"  data-rate=${dataLevel.star}>     
                        	<li></li>     
                        	<li></li>     
                        	<li></li>     
                        	<li></li>    
                    	</ul>
                       
                        <span class="value" >
                        	&nbsp
                        </span>
                        <span class="description">昨天采样 ${(dataLevel.sampleNum/10000).toFixed(2)}万(最佳20万+)</span>
					</div>
				</div>
			</div>
		</div>
	</div>

	
	<div class="span3">
		<div class="widget">
			<div class="widget-content">
				<div class="widget-content-inner">
					<div id="page-complex" class="chart-summary-icon">
                    	<span class="icon iconfa-cogs"></span>
                        <span class="title">页面复杂度</span>
                        <span class="value">${pageComplex.score}</span>
                        <span class="description">${pageComplex.level}</span>
                        <ul class="dropdown-menu" role="menu">
	                        <li class="header">页面复杂度详情</li>
	                        <div class="dropdown-menu-item">                        	
	                            <li>
	                               <a href="#">
	                                <div class="detail">
	                                    <span>首屏内图片个数： <b>${pageComplex.fs_img_count}</b>个</span>
	                                </div>
	                                </a>
		                        </li>

		                        <li>
	                               <a href="#">
	                                <div class="detail">
	                                    <span>首屏内图片大小： <b>${ (pageComplex.fs_img_total/1000).toFixed(1) }</b>Kb</span>
	                                </div>
	                                </a>
		                        </li>

		                         <li>
	                               <a href="#">
	                                <div class="detail">
	                                    <span>dom节点个数： <b>${ pageComplex.dom_count }</b>个</span>
	                                </div>
	                                </a>
		                        </li>


		                        <li>
	                               <a href="#">
	                                <div class="detail">
	                                    <span>页面图片总数： <b>${ pageComplex.img_count }</b>个</span>
	                                </div>
	                                </a>
		                        </li>

		                         <li>
	                               <a href="#">
	                                <div class="detail">
	                                    <span>页面图片大小：<b>${ (pageComplex.img_total/1000).toFixed(1) }</b>Kb</span>
	                                </div>
	                                </a>
		                        </li>

		                        <li>
	                               <a href="#">
	                                <div class="detail">
	                                    <span>外联css个数： <b>${ pageComplex.css_count }</b>个</span>
	                                </div>
	                                </a>
		                        </li>

		                        <li>
	                               <a href="#">
	                                <div class="detail">
	                                    <span>css总大小：  <b>${ (pageComplex.css_total/1000).toFixed(1) }</b>Kb</span>
	                                </div>
	                                </a>
		                        </li>


		                        <li>
	                               <a href="#">
	                                <div class="detail">
	                                    <span>script标签个数： <b>${ pageComplex.script_count }</b>个</span>
	                                </div>
	                                </a>
		                        </li>

		                        <li>
	                               <a href="#">
	                                <div class="detail">
	                                    <span>js总大小：  <b>${ (pageComplex.script_total/1000).toFixed(1) }</b>Kb</span>
	                                </div>
	                                </a>
		                        </li>
		                      
		                      
	                        </div>
	                        <li class="footer"><a target="_blank" href="#"></a></li>
	                    </ul>
					</div>
				</div>
			</div>
		</div>
	</div>

</script>

<div id="summaryTip" class="row-fluid">
	
</div>
<!-- End Dashboard Summary -->