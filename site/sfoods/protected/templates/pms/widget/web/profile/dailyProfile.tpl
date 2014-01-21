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
								<img title="产品线通过Log平台统计的数据，提供接口给WebSpeed" src="/static/pms/lib/img/log.jpg"  /> 
							{{else}}	
								<img src="/static/pms/lib/img/question.png"  /> 
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