{%extends file="common/page/layout.tpl"%}
{%block name="block_head_static"%}
    {%require name="monk:static/visit/visit.less"%}
    {%require name="common:static/lib/css/jquery-ui-1.10.3.custom.min.css"%}
    {%require name="common:static/lib/js/jquery-ui-1.10.3.custom.min.js"%}
    {%require name="common:static/lib/js/jquery.sparkline.js"%}
{%/block%}
{%block name="content"%}
    <div>
        <div class="summary_title">点击量</div>
        <div>
            {%widget name="monk:widget/clickcount/clickcount.tpl"%}
        </div>
    </div>
    <div>
        <div class="scatter_title">详细点击数据</div>
        <div class="click_container"></div>
    </div>
    {%require name="monk:static/click/click.js"%}
{%require name='monk:page/click.tpl'%}{%/block%}