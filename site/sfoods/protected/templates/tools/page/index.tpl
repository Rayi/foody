{%extends file="common/page/layout.tpl"%}
{%block name="block_head_static"%}
    {%require name="tools:static/index/index.less"%}
{%/block%}
{%block name="content"%}
    <div class="toolsGroup">
        {%foreach $toolsGroup as $key=>$toolsList%}
            <div class='groupName'>{%$toolsList['name']%}</div>
            <div class="toolsList">
                {%foreach $toolsList['data'] as $index=>$tool%}
                    <div class="tool">
                        <a href="{%$tool['link']%}" target="_blank">
                            <div class="toolName">{%$tool['name']%}</div>
                            <div class="toolDescription">{%$tool['description']%}</div>
                        </a>
                    </div>
                {%/foreach%}
                <div class="clear"></div>
            </div>
        {%/foreach%}
    </div>
{%require name='tools:page/index.tpl'%}{%/block%}