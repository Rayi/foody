{%extends file="common/page/layout.tpl"%}
{%block name="block_head_static"%}
    <!--[if lt IE 9]>
        <script src="/lib/js/html5.js"></script>
    <![endif]-->
    {%* 模板中加载静态资源 *%}   
    {%require name="access:static/lib/css/code.css"%}


{%/block%}
{%block name="content"%}
	

	<div id="wrapper">
		<h4>简述</h4>
		<p>DPS系统的采集代码依赖于 ALog(前端日志统一解决方案)，ALog可以方便的提供以及处理前端的各种统计模块。</p>

		<h4>代码部署-FIS 2.0方式</h4>
	    <p>稍后更新文档，手动部署方式也很简单哦~</p>

	    <h4>代码部署-手动添加</h4>
	    <div class="code"><pre><span class="nt">&lt;html&gt;</span>
    <span class="nt">&lt;head&gt;</span>
        <span class="c">&lt;!-- 引入alog --&gt;</span>
        <span class="nt">&lt;script&gt;</span>
            void function(e,t,n,a,o,i,m){
            e.alogObjectName=o,e[o]=e[o]||function(){(e[o].q=e[o].q||[]).push(arguments)},e[o].l=e[o].l||+new Date,i=t.createElement(n),i.asyn=1,i.src=a,m=t.getElementsByTagName(n)[0],m.parentNode.insertBefore(i,m)
            }(window,document,"script","http://uxrp.github.io/alog/dist/alog.min.js","alog");
        <span class="nt">&lt;/script&gt;</span>

        产品线代码 ....

        <span class="c">&lt;!-- head结束时，添加性能时间打点 --&gt;</span>
        <span class="nt">&lt;script&gt;</span>alog('speed.set', 'ht', new Date);<span class="nt">&lt;/script&gt;</span>
    <span class="nt">&lt;/head&gt;</span>
    <span class="nt">&lt;body&gt;</span>
        产品线代码 .... 

        <span class="c">&lt;!-- 首屏位置，添加性能时间打点 --&gt;</span>
        <span class="nt">&lt;script&gt;</span>
           <p> void function(f,b){var g=b.getElementsByTagName("img"),a=+new Date,e=[];var d=function(){if(this.removeEventListener){this.removeEventListener("load",d,false)}e.push({img:this,time:+new Date})};for(var c=0;c<span class="nt">&lt;g.length</span><span class="err">;c++){(function(){var</span> <span class="na">h=</span><span class="s">g[c];if(h.addEventListener){!h.complete&amp;&amp;h.addEventListener("load",d,false)}else{if(h.attachEvent){h.attachEvent("onreadystatechange",function(){if(h.readyState=="complete"){d.call(h,d)}})}}})()}alog("speed.set",{fsItems:e,fs:a})}(window,document);</span></p>
        <span class="err">&lt;/script</span><span class="nt">&gt;</span>

        产品线代码 .... 

        <span class="c">&lt;!-- body结束，添加采集代码 --&gt;</span>
        <span class="nt">&lt;script&gt;</span>
            alog("set", "alias", {
                monkey: "http://img.baidu.com/hunter/alog/monkey.min.js",
                element: "http://img.baidu.com/hunter/alog/element.min.js"
            });

            //引入Monkey
            alog("require", ["monkey", "element"], function(monkey, element){
                //如果本产品线的区块打点使用monkey而不是alog-group，则需要加上下面一行代码
                //element.an("group", "monkey");

                monkey.create({
                    page: "{%$config['page_id']%}", //填写页面的Monkey pageId
                    pid: "{%$config['pid']%},", //
                    p: "", //log平台为每个产品线分的id
                    hid: "{%$config['page_id']%}", //Monkey实验的ID
                    postUrl: "http://nsclick.baidu.com/u.gif",
                    reports: {
                        refer: 1,
                       staytime: 1
                    }
                });
            });
            alog("monkey.send", "pageview", { now: +new Date });

            //引入WebSpeed
            alog("speed.set", "options", {
                "sample" : '{%$config['config']%}', //设置采样率，0 ~ 1
                "product_id" : "{%$config['pid']%}", //性能平台产品线ID
                "page_id" : "{%$config['page_id']%}" //性能平台页面的page_id
            });
            <p>void function(f,b){function d(h,i,g){g=g||10;var j=new Date();j.setTime(new Date().getTime()+g*1000);b.cookie=h+"="+escape(i)+";path=/;expires="+j.toGMTString()}function e(g){if(f.attachEvent){f.attachEvent("onload",g,false)}else{if(f.addEventListener){f.addEventListener("load",g)}}}e(function(){alog("speed.set","lt",new Date);var h=alog.tracker("speed").get("options")||{};var m=h.random=Math.random();alog("set","alias",{speed:h.js_path||"http://static.tieba.baidu.com/tb/pms/wpo_alog_speed.js"});var l=h.special_pages||[];var g=[];for(var j=0;j<span class="nt">&lt;l.length</span><span class="err">;j++){var</span> <span class="na">k=</span><span class="s">l[j];if(m&lt;k.sample){g.push(k.id)}}if(g.length){alog("speed.set","special_id","["+g+"]")}if(m&lt;=h.sample||g.length){alog("speed.set","send",true);if(h.ready!==false&amp;&amp;h.product_id&amp;&amp;h.page_id){alog("require","speed")}}});function</span> <span class="err">c(i,h){var</span> <span class="na">g=</span><span class="s">0;if((h.nodeName||h.tagName).toLowerCase()===i.toLowerCase()){return</span> <span class="err">h}while(</span><span class="na">h=</span><span class="s">h.parentNode){g++;if((h.nodeName||h.tagName).toLowerCase()===i.toLowerCase()){return</span> <span class="err">h}if(g</span><span class="nt">&gt;</span>=4){return null}}return null}function a(i){var i=i||window.event;var h=i.target||i.srcElement;var j=c("a",h);if(j){var g=j.getAttribute("href");if(!/^#|javascript:/.test(g)){d("PMS_JT",'({"s":'+(+new Date)+',"r":"'+document.URL.replace(/#.*/,"")+'"})')}}}if(document.attachEvent){document.attachEvent("onclick",a)}else{document.addEventListener("click",a,false)}}(window,document); </p>       
        <span class="nt">&lt;/script&gt;</span>
    <span class="nt">&lt;/body&gt;</span>
<span class="nt">&lt;/html&gt;</span>
</pre></div>
	</div>
	
	
{%require name='access:page/deploy.tpl'%}{%/block%}

