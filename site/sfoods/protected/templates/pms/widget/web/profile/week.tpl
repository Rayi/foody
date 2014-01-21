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
			            <td class="item" rel="${s['itemkey']}" ><span>${s['item']}</span><img src="/static/pms/lib/img/question.png"  /></td>
			            <td>${s['avg']}</td>
			            <td>${s['preAvg']}</td>
			            <td>${s['change']}%</td>
			            {{if s['portion'] && s['portion'].length>0 }}
			             {{each(d,p)  s['portion']}}
			               <td>${p['data']}%</td>
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