<script id="table-tmpl" type="type/x-jquery-tmpl">
	<div class="table-data-wrap">
		<table class="stable" cellspacing="0">
			<thead>
				<tr>
					{{each col}}
					<th>${$value}</th>
					{{/each}}
				</tr>
			</thead>
			<tbody>
				{{each row}}
				<tr>
					{{each $value}}
					<td>${$value ? $value : '--'}</td>
					{{/each}}
				</tr>
				{{/each}}
			</tbody>
		</table>
		<div class="table-toggle">
			<span></span>
		</div>
	</div>
</script>

<script id="top-urls-tpl" type="text/template">
    <%console.log('top-urls-tpl', urls);%>
    <%
        for(var i = 0; i < urls.length; i++) {
    %>
            <option value="<%=urls[i]%>"><%=urls[i]%></option>
    <%
        }
    %>
    
</script>
<h3 class="general_title summary_title">
    <select class="top_urls" id="topurls">
    </select>
    <small  id="timeline-week-day">
        
        <div class="btn-group" >

              <!--==时间范围start==-->
            <div class="tool_date cf">
                <div class="date" id="div_date">
                    <span class="date_title" id="date"></span>
                    <a class="opt_sel" id="input_trigger" href="#">
                        <i class="i_orderd"></i>
                    </a>
                </div>
                <div class="date-section cf" id="short_opt">
                    <ul id="toolbar" class="select cf">
                        <li class="active">
                            <a id="aToday"  href="javascript:void(0);">实时</a>
                        </li>
                        <li>
                            <a id="aRecent7Days" href="javascript:void(0);">7天</a>
                        </li>
                        <li>
                            <a id="aRecent14Days" href="javascript:void(0);">14天</a>
                        </li>
                        <li >
                            <a id="aRecent30Days" href="javascript:void(0);">30天</a>
                        </li>
                    </ul>
                </div>
                <div id="datePicker"></div>
            </div>
              <!--==时间范围end==-->

         </div>
    </small>

</h3>


<div class="row-fluid">
    <div class="span12">

        <!-- Start Dashboard Statistic -->
        <div class="row-fluid">
            <div class="span12">
                <div class="widget">
                    <div class="widget-content">
                        <div class="widget-content-inner">
                            <div  class="row-fluid">
                                <div  class="span12">

                                    <div id="generalTrend_wrap" >
                                         <div id="chart_type" class="btn-group">
                                            <!--  <button id="timeline-today" class="toggle-btn" value="today">
                                                实时
                                             </button>  -->
                                             <button class="btn  active" value="0" rel="irs">
                                                页面分类请求平均大小
                                             </button>
                                             <button class="btn" value="1" rel="abbc">
                                                页面分类请求总大小<i></i>
                                             </button>
                                             <button  class="btn" value="2" rel="irbf">
                                                页面图片请求分类数量<i></i>
                                             </button>
                                             <button  class="btn" value="3" rel="cl">
                                                缓存时间分布<i></i>
                                             </button>
                                             <button  class="btn" value="4" rel="tsarn">
                                                页面总大小趋势<i></i>
                                             </button>
                                             <button class="btn" value="5" rel="ps"> 
                                                页面评分趋势 <i></i>
                                             </button>
                                             <button class="btn" value="6" rel="gziped">
                                                压缩资源数趋势 <i></i>
                                             </button>
                                         </div>
                                            <div id="generalTrend" class="chart"><div id="draw"></div></div>
                                            <a title="前一段时间" id="timeline-prev"><span>前一段</span></a>
                                            <a title="后一段时间" id="timeline-next"><span>后一段</span></a>
                                    </div>
                                     
                                </div>
                            </div>
                            
                            <div id="table_wrap"></div>

                            <hr>
                            
                            <div id="assist" class="row-fluid">
   
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Start Dashboard Statistic -->       
    </div>
</div>

