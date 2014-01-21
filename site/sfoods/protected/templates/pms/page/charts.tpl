{%extends file="common/page/layout.tpl"%}
{%block name="block_head_static"%}
    {%require name="pms:static/lib/css/charts.less"%}

    {%* 模板中加载静态资源 *%}
   
    {%require name="pms:static/lib/js/lib.js"%}
    {%require name="pms:static/lib/js/highstock.js"%}
    {%require name="pms:static/lib/js/jquery.tmpl.js"%}
    {%require name="pms:static/lib/js/bootstrapSwitch.min.js"%}   
    {%require name="pms:static/lib/js/jquery.sparkline.js"%}
    {%require name="pms:static/lib/js/select2.min.js"%}

    {%require name="pms:static/lib/js/gri.dateRange.js"%}
    {%require name="pms:static/lib/css/gri.controls.css"%}
    
    {%require name="pms:static/lib/js/main.js"%}
    {%require name="pms:static/lib/css/common.css"%}
    {%require name="pms:static/lib/css/font-awesome.min.css"%}
    {%require name="pms:static/lib/css/select2.css"%}


    {%require name="common:static/lib/css/table.less"%}
        
{%/block%}
{%block name="content"%}
    <!--<div>
        <div class="summary_title">页面地址</div>
        <div class="page_url_info" id="target_page_url">...</div>
    </div>-->
    <div>
        <div class="summary_title">性能概况</div>
        <div id="summary_data">
            {%widget name="pms:widget/ptlsummary/summary.tpl"%}
        </div>
    </div>
    <div>
        <div id="wrapper" class="fixed">
            <div id="wrapper-inner">

                 <div id="main-content">


                    <div class="row-fluid">
                        <div class="span12">


                            <!-- 总体趋势 start -->
                            {%widget name="pms:widget/charts/trend.tpl"%}
                            <!-- 总体趋势  end -->

                        </div>
                    </div>
                   
                </div>
            </div>
        </div>        
    </div>
    <div class="wrapper">
        <div class="chart-box">
            <div class="chart" id="chart-1"></div>
        </div>
        <div class="chart-box">
            <div class="chart" id="chart-2"></div>
        </div>
        <div class="chart-box">
            <div class="chart" id="chart-3"></div>
        </div>
        <div class="chart-box">
            <div class="chart" id="chart-4"></div>
        </div>
        <div class="chart-box">
            <div class="chart" id="chart-5"></div>
        </div>
        <div class="chart-box">
            <div class="chart" id="chart-6"></div>
        </div>
        <div class="chart-box">
            <div class="chart" id="chart-7"></div>
        </div>
        <div class="clear"></div>
    </div>
    <div class="process"></div>

    

    <div style="display:none">
        <div class="summary_title">优化建议</div>
        <div id="suggestion_list">
            {%widget name="pms:widget/ptlsuggestion/index.tpl"%}
        </div>
    </div>

    <div style="display:none">
        <div class="summary_title">详情数据</div>
        <div id="detail_cont">

        </div>
    </div>
    
    {%require name="pms:static/charts/charts.js"%}
    {%script%}
        //var nav = $('.nav');
        //nav.css("width","90%");
        //nav.find(".other").css("display","inherit");
        
    {%/script%}
{%require name='pms:page/charts.tpl'%}{%/block%}