<?xml version='1.0' encoding='utf-8'?>
<AreaData> 
 {%foreach $data as $key => $value %}   
    <AreaItem province="{%$key_to_province[$value['province']]%}" AreaID='{%$key_to_flashid[$value['province']]%}' s='{%round($value['avg']/1000,2)%}' t='{%$value['total'] %}'/>
 {%/foreach%}
</AreaData>