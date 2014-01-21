{%extends file="common/page/layout.tpl"%}
{%block name="block_head_static"%}
    <!--[if lt IE 9]>
        <script src="/lib/js/html5.js"></script>
    <![endif]-->
    {%* 模板中加载静态资源 *%}
   
    {%require name="pms:static/lib/js/lib.js"%}
    {%require name="pms:static/lib/js/highstock.js"%}
    {%require name="pms:static/lib/js/jquery.tmpl.js"%}
    {%require name="pms:static/lib/js/bootstrapSwitch.min.js"%}   

    {%require name="pms:static/lib/js/gri.dateRange.js"%}
    {%require name="pms:static/lib/css/gri.controls.css"%}
    
    {%require name="pms:static/lib/js/main.js"%}
    {%require name="pms:static/lib/js/PMS_Service.js"%}
    {%require name="pms:static/lib/css/common.css"%}
    {%require name="pms:static/lib/css/ui.css"%}
    {%require name="pms:static/other/other.css"%}
    {%require name="pms:static/other/other.js"%}
    
<script id="module-tmpl" type="type/x-jquery-tmpl">
    <div class="recordcard-container">
    {{each status}}
    <div class="recordcard-small panel-${action}" data-panel-type="${action}">
    <form>
    <div class="module-header">
    <input type="hidden" name="type" value="${type}"/>
    <input type="hidden" name="action" value="${action}"/>
    <h2>${title}</h2>
    <div class="module-header-left">
    <div class="module-header-status">
    {{each conditions}}
    {{if (type == "select")}}
    <select name="${name}">
    {{each datas}}
    {{if (selected=="selected")}}
        <option value="${value}" selected="selected" >${text}</option>
    {{else}}
        <option value="${value}">${text}</option>
    {{/if}} 
    
    {{/each}}
    </select>
    {{else (type == "singleDate")}}
    <select name="${name}">
    {{each(prop,val) range}}
    <option value="${val}">${val}</option>
    {{/each}}
     </select>
    {{/if}}
    {{/each}}
    </div>

    </div>

    </div>
    <div class="module-body">
    <p class="no-data-text">
        正在加载
    </p>
    {{if location.toString().indexOf("app.php")<0 &&  action.toString().indexOf("Trend")>=0 &&  (type.toString().indexOf("browser")>=0 || type=="psversion" || type.indexOf("cnd_")==0) }}
        <div class="items_wrap">
            <input type="radio" name="lines" value="top4" checked="checked">采样前四
            <input type="radio" name="lines" value="all">全部曲线
        </div>
    {{/if}}
    
    <div class="chart-wrap">
        
    </div>
    
    </div>
    </form>
    </div>
    {{/each}}
    <div class="recordcard-container-header">

    {{each status}}
    <a href="javascript:void(0)" data-action="${action}" class="{{if (selected)}}active{{/if}} module-status-${action} circles-button module-header-button" title="{{if (action=='portion')}}用时比例图{{else}}趋势图{{/if}}"></a>
    {{/each}}
    <!--<a href="javascript:void(0)" class="module-header-button reposition-handle" title="Reposition module"></a>-->
    </div>
    <div class="module-footer">
        <div class="module-footer-inner">
            
            <button value="all" data-widget="screen" class="all-results-btn">
                查看详细
            </button>
        </div>
    
    <div class="clear"></div>
    </div>
    </div>
</script>


{%/block%}
{%block name="content"%}

    <div id="loading_gif"><img src="/static/pms/lib/img/loading.gif" alt="加载中" title="加载中" /></div>

    <div id="module-popup">
    </div>
    <div id="pop_wrap">
    </div>
    <div id="wrapper" class="fixed">
        <div id="wrapper-inner">

             <div id="main-content">
                <div class="row-fluid">
                    <div class="span12">
                        <h3 class="general_title">辅助分析</h3>
                        <div class="group_switch"> 

                        <div class="group group_show" >  
                           <div class="ui_buttons">
                                <span id="dimen_net">
                                    <button class="button current" value="timing" >Timing</button>
                                    <button class="button" value="browser" >浏览器</button>
                                    <button class="button" value="platform">系统设备</button>
                                </span>
                              </div>
                            </div> 
                        </div> 

                        <span class="ml10">请选择日期</span>
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
                    </div>
                </div> 

                <div class="row-fluid">

                  <!-- Start Dashboard Statistic -->
                  <div class="widget">      
                        <div class="ui-sortable other-panels" id="record-cards">
      
                        </div>            
                  </div>
                  <!-- Start Dashboard Statistic --> 
                </div>             
            </div>
        </div>
    </div>
    
{%require name='pms:page/other.tpl'%}{%/block%}

