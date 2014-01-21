 <script id="visit-tmpl" type="type/x-jquery-tmpl">
 	{{if ie6 }}
 	<div class="item" title="指标解释xxx">
 		<div class="t_title">IE6浏览器占比</div>
 		<div class="t_data">${ie6}%</div>
 	</div>
 	{{/if}}
 
 	<div class="item">
 		<div class="t_title">首次点击时间(秒)</div>
 		<div class="t_data t_wrap">
 			<span>
 				<b class="up">均值</b>
 				<b class="down">中位数</b>
 			</span>
 			<span class="center">&nbsp;</span>
 			<span>
 				<b class="up num">${firstClick.avg}</b>
 				<b class="down num">${firstClick.midians}</b>
 			</span>
 		</div>
 	</div> 

 	<div class="item">
 		<div class="t_title">无点击用户占比</div>
 		<div class="t_data">${noClick}%</div>
 	</div>

 	<div class="item">
 		<div class="t_title">登录用户占总用户的</div>
 		<div class="t_data">${login}%</div>
 	</div>
 	<div class="item">
 		<div class="t_title">最大占比的分辨率 | <small title="该项占比">占 ${resolution.rate}%</small></div>
 		<div class="t_data">${resolution.resolution}</div>
 	</div>
 	<div class="item">
 		<div class="t_title">主要流量来源 | <small title="该项占比">占  ${refer.rate}%</small></div>
 		<div class="t_data">${refer.refer}</div>
 	</div>
 </script>

 <script id="perfComp-tmpl" type="type/x-jquery-tmpl">
	<li data-product=${prod_id} data-page=${page_id} data-index=${index} 
		{{each(k,s) key_item}}	
			data-${s.item}=${s.val} 
		{{/each}}

	 class="sort" >
		<div  title="点击查看详细"  class="item_header">
			<span class="toggle"><i class="iconfa-plus"></i></span>
			<span class="prod_name">${prod_name}</span>
			<span class="page_name"><a href="/pms#productId=${prod_id}&pageId=${page_id}&pageType=${platform}" target="_blank" title="点击查看性能报表">${page_name}<i class=" iconfa-bar-chart"></i></a> <a href="/monk/visit#productId=${prod_id}&pageId=${page_id}&pageType=${platform}" target="_blank" title="点击查看访问数据报表"><i class="iconfa-file-alt"></i></a><a href="/monk/click#productId=${prod_id}&pageId=${page_id}&pageType=${platform}" target="_blank" title="点击查看点击分析报表"><i class="  iconfa-hand-up"></i></a>
			{{if tip}}
			<label class="label" title="${tip}">${tip}</label>
			{{/if}}

			</span>
			<span class="sampleNum">${(sampleNum/10000).toFixed(2)}万</span>
			<span class="page_index">${index}</span>
			<span class="page_rank"><b>${rank}</b>  <i class="${rank_change>0 ? 'iconfa-arrow-down' : 'iconfa-arrow-up'}"></i>${Math.abs(rank_change)}名</span>

			<ul class="rating" title="${star['tip']}" data-rate=${star['count']}>
				<li></li>
				<li></li>
				<li></li>
				<li></li>
			</ul>

			<span class="flag ${tip? 'error' : ''}" title=${tip}>
				<div class="dot"></div>
				<div class="pulse"></div>
			</span>
			
		</div>
		<div 
		<div class="item_detail clearfix">
			<div class="visit_wrap clearfix">

			</div>
			<span class="row_fluid">
				<div class="span4" id="perf_index">
					<div class="chart_wrap">
						<h4>综合指数变动趋势</h4>
						<div rel="line" class="spark">${index_trend}</div>
						<h4>排名变动趋势</h4>
						<div rel="bar" class="spark">${rank_trend}</div>
						<ul class="rank_ul">
							{{each(k,d) rank_trend}}
								<li>${d}</li>
							{{/each}}	
						</ul>
					</div>
				</div>
				<div class="span4" id="perf_competition">
					<div class="chart_wrap">
						<h4>UAQ一周竞品监控(点击条形查看UAQ竞品报表)</h4>
						<div id="uaq_${prod_id}_${page_id}" class="comp"></div>
					</div>
				</div>
				<div class="span4" id="perf_keyItem">
					<div class="chart_wrap">
						<h4>关键指标  <img src="../static/dps/lib/img/level.jpg" /></h4>
						<div class="row-fluid">
							{{each(k,s) key_item}}	
							<span class="span3" style="height:80px;">
								<div class="percentage" data-percent="${s.percent}" data-bar-color="${s.color}">
								<span>${s.val}ms</span>
								<h4 class="text">${s.name}</h4>
								</div>
                				
							</span>
							{{/each}}
						</div>
					</div>
				</div>
				
			</span>
			<div class="clear"></div>
		</div>

	</li>
</script>

 <!-- Start Rank List -->
<div class="row-fluid">   
	<div class="span12">
        <!-- <h3  class="general_title">页面性能对比 </h3> -->
        <div class="row-fluid"> 
            <div class="span2">  
                <div class="ui_buttons">
                    <span id="platform">
                        <button class="button current" value="pc">PC端</button>
                        <button class="button" value="mobile">移动端</button>
                    </span>
                </div>
            </div> 

            <div class="span8">  
                <span>排序：</span>
                <div class="ui_buttons">
                  <span id="sort_by">
                        <button class="button current" value="index">综合指数(排名)</button>
                        <button class="button" value="wt">白屏时间</button>
                        <button class="button" value="fs">首屏时间</button>
                        <button class="button" value="drt">用户可操作</button>
                        <button class="button" value="lt">总下载时间</button>
                        <button class="button" value="product">产品线名称</button>
                  </span>
                </div>
            </div> 
        </div> 

       <hr/>

        <div class="row-fluid">
			<div id="perf_wrap" >
                <div class="item_header" id="perf_header">    
                    <span class="toggle"><i class="iconfa-reorder"></i></span> 
                    <span class="prod_name">产品线</span>    
                    <span class="page_name">页面名称</span> 
                    <span class="sampleNum">采样数</span>                                              
                    <span class="page_index">综合指数</span>    
                    <span class="page_rank"><b>排名</b>  变动</span>   
                    <span class="rating">统计评级</span>  
                    <span class="flag">状态</span>   
                </div>

                <ul class="perf_pages">

                </ul>
                                
			</div>
		</div>              
	</div>
</div>
<!-- End Rank List -->
