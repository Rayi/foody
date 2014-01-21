
<script id="module-tmpl" type="type/x-jquery-tmpl">
    <div class="recordcard-container">
    {{each status}}
    <div class="recordcard-small panel-${action}" data-panel-type="${action}">
    <form>
    <div class="module-header">
    <input type="hidden" name="type" value="${type}"/>
    <input type="hidden" name="action" value="${action}"/>
    <h2>${title}</h2>
    <div class="module-header-left">
    <div class="module-header-status">
    {{each conditions}}
    {{if (type == "select")}}
    <select name="${name}">
    {{each datas}}
    {{if (selected=="selected")}}
        <option value="${value}" selected="selected" >${text}</option>
    {{else}}
        <option value="${value}">${text}</option>
    {{/if}} 
    
    {{/each}}
    </select>
    {{else (type == "singleDate")}}
    <select name="${name}">
    {{each(prop,val) range}}
    <option value="${val}">${val}</option>
    {{/each}}
     </select>
    {{/if}}
    {{/each}}
    </div>

    </div>

    </div>
    <div class="module-body">
    <p class="no-data-text">
        正在加载
    </p>
    {{if location.toString().indexOf("app.php")<0 &&  action.toString().indexOf("Trend")>=0 &&  (type.toString().indexOf("browser")>=0 || type=="psversion" || type.indexOf("cnd_")==0) }}
        <div class="items_wrap">
            <input type="radio" name="lines" value="top4" checked="checked">采样前四
            <input type="radio" name="lines" value="all">全部曲线
        </div>
    {{/if}}
    
    <div class="chart-wrap">
        
    </div>
    
    </div>
    </form>
    </div>
    {{/each}}
    <div class="recordcard-container-header">

    {{each status}}
    <a href="javascript:void(0)" data-action="${action}" class="{{if (selected)}}active{{/if}} module-status-${action} circles-button module-header-button" title="{{if (action=='portion')}}用时比例图{{else}}趋势图{{/if}}"></a>
    {{/each}}
    <!--<a href="javascript:void(0)" class="module-header-button reposition-handle" title="Reposition module"></a>-->
    </div>
    <div class="module-footer">
        <div class="module-footer-inner">
            
            <button value="all" data-widget="screen" class="all-results-btn">
                查看详细
            </button>
        </div>
    
    <div class="clear"></div>
    </div>
    </div>
</script>