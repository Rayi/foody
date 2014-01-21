{%extends file="common/page/layout.tpl"%}
{%block name="block_head_static"%}
    {%require name="monk:static/visit/visit.less"%}
    {%require name="common:static/lib/css/jquery-ui-1.10.3.custom.min.css"%}
    {%require name="common:static/lib/js/jquery-ui-1.10.3.custom.min.js"%}
    {%require name="common:static/lib/js/jquery.sparkline.js"%}
{%/block%}
{%block name="content"%}
    <div>
        <div class="summary_title">PV/UV数据</div>
        <div>
            {%widget name="monk:widget/pvuv/pvuv.tpl"%}
        </div>
    </div>
    <div>
        <div class="scatter_title">详细访问数据</div>
        <div class="scatter_container"></div>
    </div>
    {%require name="monk:static/visit/visit.js"%}
{%require name='monk:page/visit.tpl'%}{%/block%}