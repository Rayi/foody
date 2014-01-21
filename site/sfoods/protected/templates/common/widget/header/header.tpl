<header>
    <div class="sys_name"><span>DP</span>&nbsp;网站数据统计分析服务</div>
    <div class="global_nav">
        {%foreach $nav as $index=>$item%}
            {%$show=true%}
            {%if $item['auth']=="productAdmin" && !$user['isProductAdmin'] && !$user['isAdmin']%}
                {%$show=false%}
            {%elseif $item['auth']=="admin" && !$user['isAdmin']%}
                {%$show=false%}
            {%/if%}
            {%if $show%}
                {%$href=$item['href']%}
                {%if !$href && $item['subnav'] && $item['subnav']['pages'] && $item['subnav']['pages'][0]%}
                    {%$href=$item['subnav']['pages'][0]['href']%}
                {%/if%}
                {%$class=""%}
                {%if isset($activeNavIndex)&&$index==$activeNavIndex%}
                    {%$class="active"%}
                {%/if%}
                <a href="{%$href%}" class="{%$class%}" data-dropdown="{%count($item['dropdown'])>0%}" data-source="{%$index%}">{%$item['name']%}
                {%if count($item['dropdown']) > 0%}
                    <span class="caret"></span>
                {%/if%}
                </a>
                {%if count($item['dropdown']) > 0%}
                <div class="dropdown" data-target="{%$index%}">
                    <ul>
                    {%foreach $item['dropdown'] as $url => $name%}
                        <li><a href="{%$url%}" target="_blank" onclick="_hmt.push(['_trackEvent', 'fex', 'sites', '{%$name%}']);">{%$name%}</a></li>
                    {%/foreach%}
                    </ul>
                </div>
                {%/if%}
            {%/if%}
        {%/foreach%}

    </div>
    <div class="h_profile">
        <div class="h_period">您好，</div>
        <div class="h_username">{%$userName%}！</div>
        <div><a href="#">使用帮助</a></div>
        <div>|</div>
        <div><a href="?logout=true">退出</a></div>
    </div>
    {%script%}
        var hour = (new Date).getHours();
        var period = "凌晨";
        if(hour >= 7 && hour <= 11) period = "上午";
        else if(hour == 12) period = "中午";
        else if(hour >= 13 && hour <= 17) period = "下午";
        else if(hour >= 18 && hour <= 23) period = "晚上";
        $("header .h_period").html(period + "好，");
        
        var dropdownTimer;
        $('body').on('mouseenter', '.global_nav>a', function(){
            console.log($(this).offset(),$(this).position());
            if(dropdownTimer){
                clearTimeout(dropdownTimer);
            }
            var dropdown = ($(this).data('dropdown')=="1");
            var source = $(this).data('source');
            if(dropdown) {
                var target = $('.dropdown[data-target='+ source + ']');
                if(target.length > 0) {
                    target.css({
                        left: $(this).position().left
                    })
                    target.show();
                }
            }

        });
        $('body').on('mouseleave', '.global_nav>a', function(){
            if(dropdownTimer){
                clearTimeout(dropdownTimer);
            }
            dropdownTimer = setTimeout(function(){
                $('.global_nav .dropdown').hide();
            },300);
        });

        $('body').on('mouseenter', '.global_nav>.dropdown', function(){
            if(dropdownTimer){
                clearTimeout(dropdownTimer);
            }
        });
        $('body').on('mouseleave', '.global_nav>.dropdown', function(){
            if(dropdownTimer){
                clearTimeout(dropdownTimer);
            }
            dropdownTimer = setTimeout(function(){
                $('.global_nav .dropdown').hide();
            },300);
        });
    {%/script%}
</header>