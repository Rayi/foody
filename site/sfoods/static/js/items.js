define(function(require, exports, module){
    
    var items = [];
    exports.getAll = function(){
        $.ajax({
            url: '/api/item/recommend',
            dataType: 'json',
            success: function(retJson){
                console.log(retJson);
                if(retJson.status == 1) {
                    items = retJson.data;
                    var data = retJson.data;
                    var tpl = $('#food-item-tpl').html();
                    console.log(tpl);
                    var compiled_tpl = juicer(tpl);
                    console.log(compiled_tpl);
                    console.log(compiled_tpl.render({list:data}));
                    $('#food-list').html(compiled_tpl.render({list:data}));

                }
            }
        });
    }

    exports.getRecommend = function(callback){
        $.ajax({
            url: '/api/item/recommend',
            dataType: 'json',
            success: function(retJson){
                console.log(retJson);
                if(retJson.status == 1) {
                    items = retJson.data;
                    var data = retJson.data;
                    var tpl = $('#food-item-tpl').html();
                    console.log(tpl);
                    var compiled_tpl = juicer(tpl);
                    console.log(compiled_tpl);
                    console.log(compiled_tpl.render({list:data}));
                    $('#food-list').html(compiled_tpl.render({list:data}));

                }
            }
        });
    }

    exports.getItemById = function(id){

        for(var i = 0; i < items.length; i++) {
            if(items[i].id == id) {
                return items[i]
            }
        }
    }
});