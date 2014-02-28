<div class="container">
    <div class="row">
        <div class="service-area col-md-4">
            <h3>送餐范围</h3>
            <p>五环以内,一份起送(不含南四环的地区)，单笔消费金额在50元以内，电话订餐
收取4元送餐费，网络订餐收取3元送餐费，手机APP订餐收取2元送餐费,公司
承诺，四环以内半小时送到，四环至五环之间45分钟送到，超时免收送餐费；
五环外1小时以上送到，另外南四环外和五环外部分区域统一收6元送餐费！</p>
        </div>

        <div class="service-map col-md-4">
            <h3>送餐地图</h3>
            <p><img src="/static/images/tmp/map.jpg" alt="送餐地图" /></p>
        </div>

        <div class="service-time col-md-4">
            <h3>配送时间</h3>
            <p class="workday">周一至周五<br />
早上 10:00-13:00 下午 17:00-19:00</p>
            <p class="weekend">周六至周日<br />
早上 10:00-13:00 下午 17:00-20:00</p>
        </div>
    </div>

    <div class="row">
        <div class="copyrights col-md-12">
            <p>滇南味道美食共享有限公司提供. @2014-2014</p>
        </div>
    </div>
</div>
<script type="text/javascript" src="/static/js/sea-debug.js"></script>
<script type="text/javascript" src="/static/js/jquery.min.js"></script>
<script type="text/javascript" src="/static/js/bootstrap.js"></script>
<script type="text/javascript" src="/static/js/unslider.js"></script>
<script type="text/javascript" src="/static/js/common.js"></script>
<script type="text/javascript" src="/static/js/juicer-min.js"></script>
<div class="popup-modal-mask"></div>
<script type="text/template" id="popup-modal-tpl">
    <div class="popup-modal" id="${id}">
        <div class="popup-modal-header">
            <h4>${title}</h4>
            <span class="closer"></span>
        </div>
        <div class="popup-modal-content">
            $${html}
        </div>
        {@if hideFooter === false }
        <div class="popup-modal-footer">
        {@else}
        <div class="popup-modal-footer" style="display:none;">
        {@/if}
        {@if btns.length > 0 }
            {@each btns as btn,index}
                <a href="#" class="btn" data-btn-index="${index}">123</a>
            {@/each}
        {@else}
            <a href="#" class="btn btn-confirm">确定</a><a href="#" class="btn btn-cancel">取消</a>
        {@/if}
        </div>
    </div>
</script>
<script>
console.log();
// seajs 的简单配置
seajs.config({
  // 调试模式
  debug: true,
  base: "/static/sea-modules/",
  alias: {
    "eventproxy": "/static/sea-modules/eventproxy.js",
    "jquery": "jquery/jquery/1.10.1/jquery.js",
    "cookie": "arale/cookie/1.0.2/cookie.js"
  }
})

// 加载入口模块
seajs.use("/static/js/{%$module_id%}.main");
</script>