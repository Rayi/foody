{%extends file="common/page/layout.tpl"%}
{%block name="block_head_static"%}
    {%require name="monk:static/customize/customize.less"%}
    {%require name="monk:static/customize/customize.js"%}
{%/block%}
{%block name="content"%}
    <div class="custom-events">
        <select name="" id="">
            <option value="">用户发帖数</option>
            <option value="">用户回复数</option>
            <option value="">用户签到数</option>
            <option value="">彩蛋打开数</option>
        </select>
    </div>

    <div class="info-list">
        <div class="info-box">
            <h5>昨日统计数</h5>
            <p><span class="focus">267,492</span></p>
            <h5>波动趋势</h5>
            <div class="chart" style="width:220px;height:60px;"></div>
            <div class="comparison">
                <dl>
                    <dt>环比变化</dt>
                    <dd><span class="growth">+0.23%</span></dd>
                    <dt>同比变化</dt>
                    <dd><span class="fall">-0.59%</dd>
                </dl>
            </div>
        </div>

        <div class="info-box">
            <h5>昨日人均发帖指数</h5>
            <p><span class="focus">0.03</span></p>
            <h5>波动趋势</h5>
            <div class="chart" style="width:220px;height:60px;"></div>
            <div class="comparison">
                <dl>
                    <dt>环比变化</dt>
                    <dd>-- %</dd>
                    <dt>同比变化</dt>
                    <dd>-- %</dd>
                </dl>
            </div>
        </div>

        <div class="info-box">
            <h5>昨日“百度”来源比例</h5>
            <p><span class="focus">22.56%</span></p>
            <h5>波动趋势</h5>
            <div class="chart" style="width:220px;height:60px;"></div>
            <div class="comparison">
                <dl>
                    <dt>环比变化</dt>
                    <dd><span class="fall">- 0.09%</span></dd>
                    <dt>同比变化</dt>
                    <dd><span class="growth">+ 0.03%</dd>
                </dl>
            </div>
        </div>

        <div class="info-box">
            <h5>昨日“平板”设备比例</h5>
            <p><span class="focus">98.21%</span></p>
            <h5>波动趋势</h5>
            <div class="chart" style="width:220px;height:60px;"></div>
            <div class="comparison">
                <dl>
                    <dt>环比变化</dt>
                    <dd><span class="growth">+ 0.68%</span></dd>
                    <dt>同比变化</dt>
                    <dd><span class="growth">+ 0.87%</dd>
                </dl>
            </div>
        </div>

        <div class="info-box">
            <h5>昨日"Chrome" 浏览器比例</h5>
            <p><span class="focus">67.32%</span></p>
            <h5>波动趋势</h5>
            <div class="chart" style="width:220px;height:60px;"></div>
            <div class="comparison">
                <dl>
                    <dt>环比变化</dt>
                    <dd><span class="growth">+ 0.21%</span></dd>
                    <dt>同比变化</dt>
                    <dd><span class="growth">+ 0.29%</dd>
                </dl>
            </div>
        </div>
        <div class="info-box">
            <h5>昨日"横向"手持浏览比例</h5>
            <p><span class="focus">67.44%</span></p>
            <h5>波动趋势</h5>
            <div class="chart" style="width:220px;height:60px;"></div>
            <div class="comparison">
                <dl>
                    <dt>环比变化</dt>
                    <dd><span class="fall">- 0.08%</span></dd>
                    <dt>同比变化</dt>
                    <dd><span class="fall">-0.11%</dd>
                </dl>
            </div>
        </div>
    </div>


    <div class="info-list">
        <div class="info-box full-box">
            <h5>"文档ID"纬度</h5>
            <table class="dashboard-chart-table">
<tbody><tr style="background-color: rgba(237, 242, 255, 1);">
<td>
<a href="javascript:;" data-cmd="detail" data-param="1830605969" title="查看该项最近走势">1830605969</a>
</td>
<td class="down">3279 (-15.2%) </td></tr>
<tr style="background-color: rgba(237, 242, 255, 0.8831960963708447);">
<td>
<a href="javascript:;" data-cmd="detail" data-param="3743852096" title="查看该项最近走势">3743852096</a>
</td>
<td class="down">2896 (-8.4%) </td></tr>
<tr style="background-color: rgba(237, 242, 255, 0.6773406526379994);">
<td>
<a href="javascript:;" data-cmd="detail" data-param="1982980514" title="查看该项最近走势">1982980514</a>
</td>
<td class="up">2221 (+11.2%) </td></tr>
<tr style="background-color: rgba(237, 242, 255, 0.40012198841110097);">
<td>
<a href="javascript:;" data-cmd="detail" data-param="1831116258" title="查看该项最近走势">1831116258</a>
</td>
<td class="up">1312 (+7.19%) </td></tr>
<tr style="background-color: rgba(237, 242, 255, 0.3467520585544373);">
<td>
<a href="javascript:;" data-cmd="detail" data-param="78484131" title="查看该项最近走势">78484131</a>
</td>
<td class="up">1137 (+60.4%) </td></tr>
<tr style="background-color: rgba(237, 242, 255, 0.32387923147301007);">
<td>
<a href="javascript:;" data-cmd="detail" data-param="2642764164" title="查看该项最近走势">2642764164</a>
</td>
<td class="down">1062 (-39.1%) </td></tr>
<tr style="background-color: rgba(237, 242, 255, 0.30222628850259226);">
<td>
<a href="javascript:;" data-cmd="detail" data-param="4065600610" title="查看该项最近走势">4065600610</a>
</td>
<td class="down">991 (-12.5%) </td></tr>
<tr style="background-color: rgba(237, 242, 255, 0.279353461421165);">
<td>
<a href="javascript:;" data-cmd="detail" data-param="3994882921" title="查看该项最近走势">3994882921</a>
</td>
<td class="down">916 (-20.8%) </td></tr>
<tr style="background-color: rgba(237, 242, 255, 0.2519060689234523);">
<td>
<a href="javascript:;" data-cmd="detail" data-param="4010460359" title="查看该项最近走势">4010460359</a>
</td>
<td class="down">826 (-19.7%) </td></tr>
<tr style="background-color: rgba(237, 242, 255, 0.23787740164684354);">
<td>
<a href="javascript:;" data-cmd="detail" data-param="2833112486" title="查看该项最近走势">2833112486</a>
</td>
<td class="down">780 (-39.4%) </td></tr>
</tbody></table>
        </div>

        <div class="info-box full-box">
            <h5>"页码"纬度</h5>
            <div style="height:280px; text-align:center;">
                <img src="/static/pie.png" style="margin:40px 0 0 0;" />
            </div>
        </div>

        <div class="info-box full-box">
            <h5>"域名"纬度</h5>
            <div class="dim-item">
                <span class="name">www.baidu.com</span>
                <span class="count">23.32%</span> <div class="chart" style="width:170px;height:20px;"></div>
            </div>
            <div class="dim-item">
                <span class="name">www.youku.com</span>
                <span class="count">17.22%</span> <div class="chart" style="width:170px;height:20px;"></div>
            </div>
            <div class="dim-item">
                <span class="name">www.tieba.com</span>
                <span class="count">2.31%</span> <div class="chart" style="width:170px;height:20px;"></div>
            </div>
            <div class="dim-item">
                <span class="name">wenku.baidu.com</span>
                <span class="count">5.88%</span> <div class="chart" style="width:170px;height:20px;"></div>
            </div>
            <div class="dim-item">
                <span class="name">zhidao.baidu.com</span>
                <span class="count">34.45%</span> <div class="chart" style="width:170px;height:20px;"></div>
            </div>
            <div class="dim-item">
                <span class="name">baike.baidu.com</span>
                <span class="count">21.73%</span> <div class="chart" style="width:170px;height:20px;"></div>
            </div>
            <div class="dim-item">
                <span class="name">baike.baidu.com</span>
                <span class="count">21.73%</span> <div class="chart" style="width:170px;height:20px;"></div>
            </div>
            <div class="dim-item">
                <span class="name">baike.baidu.com</span>
                <span class="count">21.73%</span> <div class="chart" style="width:170px;height:20px;"></div>
            </div>
        </div>
    </div>
    
{%require name='monk:page/customize.tpl'%}{%/block%}