{%extends file="common/page/layout.tpl"%}
{%block name="block_head_static"%}
    {%require name="pms:static/lib/css/common.css"%}
    {%require name="pms:static/lib/css/ui.css"%}
    {%require name="home:widget/rank/rank.css"%}
    {%require name="pms:static/lib/css/font-awesome.min.css"%}
    {%require name="exceptions:static/index/index.less"%}
    {%require name="common:static/lib/js/jquery.sparkline.js"%}
    {%require name="exceptions:static/index/index.js"%}
{%/block%}
{%block name="content"%}
    {%* smarty注释
    <!-- <div class="data-item">
        <span>数据项： </span>
        <div class="ui_buttons" data-cmd="change-item">
            <button class="button current" data-param="pv">PV 一周趋势</button>
            <button class="button" data-param="refer">来源 分布</button>
            <button class="button" data-param="visit">最热访问 时段</button>
            <button class="button" data-param="ie6">IE6 占比</button>
        </div>
    </div>
    <hr> -->
    *%}
    <div id="perf_wrap" class="row-fluid"></div>
{%require name='exceptions:page/index.tpl'%}{%/block%}