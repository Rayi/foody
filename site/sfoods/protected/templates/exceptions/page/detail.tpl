{%extends file="common/page/layout.tpl"%}
{%block name="block_head_static"%}
    {%require name="common:static/lib/css/jquery-ui-1.10.3.custom.min.css"%}
    {%require name="common:static/lib/js/jquery-ui-1.10.3.custom.min.js"%}
    {%require name="common:static/lib/js/jquery.sparkline.js"%}
    {%require name="common:static/lib/js/highcharts.js"%}
    {%require name="monk:static/visit/visit.less"%}
    {%require name="exceptions:static/detail/detail.js"%}
{%/block%}
{%block name="content"%}
    <div>
        <div class="summary_title">异常概况</div>
        <div class="summary_container">
        </div>
    </div>
    <div>
        <div class="scatter_title">详细异常数据</div>
        <div class="exceptions_container"></div>
    </div>
{%require name='exceptions:page/detail.tpl'%}{%/block%}