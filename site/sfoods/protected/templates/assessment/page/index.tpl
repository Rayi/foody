{%extends file="common/page/layout.tpl"%}
{%block name="block_head_static"%}
    {%require name="assessment:static/index/index.less"%}
    {%require name="assessment:static/index/index.js"%}
{%/block%}
{%block name="content"%}
    <div class="general-title">开发收益评估</div>
    <div class="info-list">
        <div class="info-box">
            <h5>人力收益</h5>
            <p><span class="focus">1.53</span></p>
            <h5>波动趋势</h5>
            <div class="chart" style="width:220px;height:60px;"></div>
            <div class="comparison">
                <dl>
                    <dt>环比变化</dt>
                    <dd><span class="growth">+0.23%</span></dd>
                    <dt>同比变化</dt>
                    <dd><span class="fall">+.59%</dd>
                </dl>
            </div>
        </div>

        <div class="info-box">
            <h5>工具收益</h5>
            <p><span class="focus">0</span></p>
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
            <h5>效率收益</h5>
            <p><span class="focus">3.24</span></p>
            <h5>波动趋势</h5>
            <div class="chart" style="width:220px;height:60px;"></div>
            <div class="comparison">
                <dl>
                    <dt>环比变化</dt>
                    <dd><span class="fall">+ 0.09%</span></dd>
                    <dt>同比变化</dt>
                    <dd><span class="growth">- 0.03%</dd>
                </dl>
            </div>
        </div>
    </div>

    <div class="general-title">产品收益评估</div>
    <div class="info-list">
        <div class="info-box">
            <h5>用户使用体验系数</h5>
            <p><span class="focus">1.62</span></p>
            <p>用户使用产品的感受明显提升！</p>
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
            <h5>有效点击趋势</h5>
            <p><span class="focus">0.35%</span></p>
            <p>每1000次访问带来的有效点击数增加！</p>
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
            <h5>用户愉悦度</h5>
            <p><span class="focus">6.56</span></p>
            <p>白屏时间变短，用户的使用愉悦度提升！</p>
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
        <div class="info-box">
            <h5>产品恶感度</h5>
            <p><span class="focus">7.21</span></p>
            <p>异常情况频繁，用户对产品的恶感度提升！</p>
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
    
{%require name='assessment:page/index.tpl'%}{%/block%}