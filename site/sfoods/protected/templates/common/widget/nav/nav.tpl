{%if isset($activeNavIndex) && isset($nav[$activeNavIndex]['subnav'])%}
    <div class="nav_wrap">
        {%if $nav[$activeNavIndex]['subnav']['label_type']=="pageSelect"%}
            <div id="pages">
                <div class="pageSelect"><div class="selected">---</div></div>
            </div>
            <div id="date_container" style="display:none;">数据日期：<input type="text" class="date" placeholder="----------" /></div>
        {%elseif $nav[$activeNavIndex]['subnav']['label']%}
            <span class="nav-label">{%$nav[$activeNavIndex]['subnav']['label']%}</span>
        {%/if%}
        <div class="nav">
            {%foreach $nav[$activeNavIndex]['subnav']['pages'] as $index=>$item%}
                {%$show=true%}
                {%if $item['auth']=="productAdmin" && !$user['isProductAdmin'] && !$user['isAdmin']%}
                    {%$show=false%}
                {%elseif $item['auth']=="admin" && !$user['isAdmin']%}
                    {%$show=false%}
                {%/if%}
                {%if $show%}
                    {%$class=""%}
                    {%if isset($activeSubnavIndex)&&$index==$activeSubnavIndex%}
                        {%$class="active"%}
                    {%/if%}
                    <a href="{%$item['href']%}" class="{%$class%}">{%$item['name']%}</a>
                {%/if%}
            {%/foreach%}
        </div>
    </div>
{%/if%}

