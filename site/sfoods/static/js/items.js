define(function(require, exports, module){
    
    var ep = require('./ep');

    var items = [];
    exports.getAll = function(callback){
        $.ajax({
            url: '/api/item/recommend',
            dataType: 'json',
            success: function(retJson){
                console.log(retJson);
                if(retJson.status == 1) {

                    items = retJson.data;

                    ep.emit('food.itemsLoaded');
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
                    
                    var data = retJson.data;
                    var tpl = $('#food-item-tpl').html();
                    var compiled_tpl = juicer(tpl);

                    $('#food-list').html(compiled_tpl.render({list:data}));

                    ep.emit('food.recommendLoaded');
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

    exports.getAll();
});