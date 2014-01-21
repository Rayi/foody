
<!-- 昨天或者上周的报表数据 -->
<script id="week-tmpl" type="type/x-jquery-tmpl">		
	<div class="preview">		
		<table class="stable" cellspacing="0" cellpadding="0" border="0" >
			<thead>
			        <tr>
			            <td rowspan="2" >监控项</td>
			            <td colspan="3">一周平均(单位:ms)</td>
			            <td colspan="4">一周比例</td>
			            <td rowspan="2" >采样均值</td>
			            <td rowspan="2" >采样异常</td>
			        </tr>
			        <tr>
			            <td>本周平均</td>
			            <td>上周平均</td> 
			            <td>变动率</td>  
			            <td class="green">很快</td> 
			            <td>较快</td> 
			            <td>用户可接受</td> 
			            <td class="red">很慢</td>          
			        </tr>
			      </thead>
			    <tbody>

			    {{each(k,s) summary}}
			       <tr>
			            <td class="item" rel="${s['itemkey']}" ><span>${s['item']}</span><img src="images/question.png"  /></td>
			            <td>${s['avg']}</td>
			            <td>${s['preAvg']}</td>
			            <td>${s['change']}%</td>
			            {{if s['portion'] && s['portion'].length>0 }}
			             {{each(d,p)  s['portion']}}
			               <td>${p['y']}%</td>
			            {{/each}}
			            {{else}}
			            	<td>--%</td>
			            	<td>--%</td>
			            	<td>--%</td>
			            	<td>--%</td>
			            {{/if}}
			            <td>${s['sampleAvg']}</td>
			            <td>${s['sampleExcetion']}</td>
			        </tr>
			    {{/each}}
		    </tbody>
		</table>	
	</div>		
</script>
<script id="preview-tmpl" type="type/x-jquery-tmpl">		
	<div class="preview">		
		<table class="data-table stable" cellspacing="0">
			<thead>
				<tr>
					{{if pf=="app" }}
				    <th>监控应用</th>
				    {{/if}}	
					<th>指标项</th>
					<th>昨日</th>
					<th>前日</th>
					<th>相对前日</th>
					<th>上周同期</th>
					<th>相对上周同期</th>
				</tr>
			</thead>
			<tbody>	

				{{each(i,val) data}}												
					<tr>
						{{if pf=="app" }}
						<td class="item" rel="${i}" title="" ><span>${val.pageName}<span></td>
						{{/if}}	
						<td class="item" rel="${i}" title="" ><span>${val.itemName}<span>  
							{{if i.indexOf("l_")==0}}	
								<img title="产品线通过Log平台统计的数据，提供接口给WebSpeed" src="../../../static/lib/img/log.jpg"  /> 
							{{else}}	
								<img src="/static/dps/lib/img/question.png"  /> 
							{{/if}}	
						</td>
						<td>${val.yesterday>0 ? val.yesterday+"ms" : "--" } </td>
						<td>${val.thedaybefore>0 ? val.thedaybefore+"ms" : "--" }</td>	
						<td class="${val.yesterday>val.thedaybefore ? 'red' : 'green'}">${val.thedaybefore>0 ? ((val.yesterday-val.thedaybefore)*100/val.thedaybefore).toFixed(2)+"%" : "--" }</td>	
						<td>${val.lastweekday>0 ? val.lastweekday+"ms" : "--" }</td>						
						<td class="${val.yesterday>val.lastweekday ? 'red' : 'green'}">${val.lastweekday>0 ? ((val.yesterday-val.lastweekday)*100/val.lastweekday).toFixed(2)+"%" : "--" }</td>
					</tr>
																	
				{{/each}}

				{{if data.fs && data.fs.yesterday==0}}	
					<tr><td colspan="3" style="text-align:left;" >请更新采集脚本获取首屏时间监控</td><td colspan="3"></td></tr>	
				{{/if}}		

			</tbody>
		</table>
		
	</div>		
</script>

<h3><b title="点击右边按钮切换查看昨天或上周的性能概括">性能概况</b> 
    <div  id="ck_report" class="switch switch-mini" data-on-label="昨天" data-off-label="上周" data-on="success" data-off="warning">
        <input type="checkbox" class="icheck" checked />

    </div>
    <small>昨天或上周,支持集成产品线Log报表相关数据</small>
</h3>                        
<div class="widget index">
    <div class="widget-content no-padding">
        <div class="widget-content-inner">
            <div id="indexPreview" class="row-fluid">
              
            </div>
            
        </div>
    </div>
</div>