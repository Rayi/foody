{%extends file="common/page/layout.tpl"%}
{%block name="block_head_static"%}
    {%require name="pageInsight:static/lib/css/charts.less"%}
{%/block%}
{%block name="content"%}
    <div class="intro">输入待分析域名，点击“开始分析”以获得结果。</div>
    <div class="process"></div>
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
    {%require name="pageInsight:static/lib/js/charts.js"%}
{%require name='pageInsight:page/charts.tpl'%}{%/block%}