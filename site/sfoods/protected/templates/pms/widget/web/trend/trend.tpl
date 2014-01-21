


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

<h3  class="general_title">总体性能分析
    <!-- <div id="ck_item" class="switch switch-mini" data-on-label="核心指标" data-off-label="全部指标" data-on="success" data-off="warning">
        <input  type="checkbox" class="icheck" checked />

    </div> -->

    <small id="item_wrap">
        <select id="items" multiple style="width:300px;">
        </select>
	</small>

    <!-- <small id="pv" title="点击查看性能与产品指标相关分析" class="red twinkling"><i class=" iconfa-flag"></i> <a href="#" target="_blank">查看PV与性能相关分析</a></small> -->
    <small  id="timeline-week-day">
    	
    	<div class="btn-group" >
		      <div class="tool_date cf">
		      	
		        <div class="date" id="div_date">
		            <span class="date_title" id="date"></span>
	            	<a class="opt_sel" id="input_trigger" href="#">
	            		<i class="i_orderd"></i>
	          		</a>
		        </div>
		        <div class="date-section cf" id="short_opt">
                  <ul id="toolbar" class="select cf">
                    <li id="timeline-today">
                    	<a  href="javascript:void(0);">实时</a>
                    </li>
                    <li>
                    	<a id="aYesterday" href="javascript:void(0);">时段</a>
                    </li>
                    <li class="active">
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
                            <div class="showTable"><i class="iconfa-cog"></i><b>显示表格</b></div>
							<div class="paper-ring"></div>
                        	<div  class="row-fluid">
                            	<div class="span4">
                                	<p>&nbsp;</p>
                                    <div class="google-summary">
                                        <span class="title" title="总体数据首屏时间">首屏时间</span>
                                        <span class="value"></span>
                                        <span class="subtitle hide"></span>
                                        <ul class="legend">
                                            <li><span class="label label-0"></span> 很快</li>
                                            <li><span class="label label-1"></span> 较快</li>
                                            <li><span class="label label-2"></span> 用户可接受</li>
                                            <li><span class="label label-3"></span> 很慢</li>
                                        </ul>
                                        <ul class="legend-value">
                                            <li  class="label label-0"></li>
                                            <li  class="label label-1"></li>
                                            <li  class="label label-2"></li>
                                            <li  class="label label-3"></li>
                                        </ul>
                                    </div>
                            	</div>
                                <div  class="span8">

                                    <div id="generalTrend_wrap" class="chart">
                                         <div id="net_type" class="btn-group">
                                            <!--  <button id="timeline-today" class="toggle-btn" value="today">
                                                实时
                                             </button>  -->
                                             <button class="btn  active" value="all">
                                                全部
                                             </button>
                                             <button class="btn" value="3" rel="2G">
                                                2G<i></i>
                                             </button>
                                             <button  class="btn" value="4" rel="3G">
                                                3G<i></i>
                                             </button>
                                             <button  class="btn" value="2" rel="WIFI">
                                                WIFI<i></i>
                                             </button>
                                             <button  class="btn" value="0" rel="其他">
                                                其他<i></i>
                                             </button>
                                         </div>
                                           <div id="data_type" class="btn-group" title="通过比例数据计算出的排序后数据各个位置的近似耗时趋势，如中位数的耗时趋势，80%位置的耗时趋势。精确度100ms">
                                             	<button  class="btn" value="0">
                                                    全部<i></i>
                                                 </button>
                                                 <button class="btn" value="20">
                                                    20%处<i></i>
                                                 </button>
                                                 <button  class="btn" value="50">
                                                    50%(中位数)<i></i>
                                                 </button>
                                                 <button  class="btn" value="80">
                                                    80%处<i></i>
                                                 </button>
                                            </div>
                                            <div id="generalTrend" class="chart"></div>
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