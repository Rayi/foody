{%extends file="common/page/layout.tpl"%}
{%block name="block_head_static"%}
    {%require name="system:static/index/index.less"%}
    {%require name="system:static/index/index.js"%}
{%/block%}
{%block name="content"%}
    <div class="product-list">
        <dl cmd="product_speed">
            <dt>Speed 产品线: </dt>
            <dd>
                {%foreach $product_speed as $key => $value%}
                    <a href="#" param="{%$key%}">{%$value%}</a>
                {%/foreach%}
            </dd>
        </dl>
        <dl cmd="product_monkey">
            <dt>Monkey 产品线: </dt>
            <dd>
                {%foreach $product_monkey as $key => $value%}
                    <a href="#" param="{%$key%}">{%$value%}</a>
                {%/foreach%}
            </dd>
        </dl>
        <a href="#" cmd="show">关联</a>
    </div>
    <div class="page-list">
        <p>Speed 页面列表</p>
        <table>
            <thead>
                <tr>
                    <td>产品线ID</td>
                    <td>URL</td>
                    <td>remark</td>
                    <td>platform</td>
                    <td>新版pageId</td>
                    <td>monkey pageId</td>
                    <td>speed pageId</td>
                </tr>
            </thead>
            <tbody id="speed-list"></tbody>
        </table>

        <a href="#" cmd="import">导入</a>

        <p>Monkey 页面列表</p>
        <table>
            <thead>
                <tr>
                    <td>URL</td>
                    <td>remark</td>
                    <td>pageId</td>
                </tr>
            </thead>
            <tbody id="monkey-list"></tbody>
        </table>
    </div>
    <script type="text/javascript">
        var speed_data = JSON.parse('{%$speed%}'),
            monkey_data = JSON.parse('{%$monkey%}');
    </script>
{%require name='system:page/index.tpl'%}{%/block%}