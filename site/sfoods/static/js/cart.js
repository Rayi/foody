define(function(require, exports, module) {

    var ep    = require('./ep');
    var items = require('./items');
    var cookie = require('cookie');
    
    // 购物车列表
    var cartItems = {};


    // 计算出购物车的商品数和总价
    function _getCartsItems(){
        var data  = [];
        var price = 0;
        var item;

        for(var i in cartItems) {
            item = items.getItemById(i);

            if(item) {
                item.count  = cartItems[i];
                price += item.price * item.count;
                data.push(item);
            }
        }

        return {
            data  : data,
            total : price
        }
    }

    // 渲染首页购物车
    function renderHomeCart(){

        var tpl;
        var compiledTpl;
        var htmlContent;

        var items = _getCartsItems();
        
        cartTplStr = $('#cart-list-tpl').html();
        if(cartTplStr) {
            cartTpl = juicer(cartTplStr);
            htmlContent = cartTpl.render({list:items.data});

            $('#home-cart-list').html(htmlContent);
            $('#home-total-price').html(items.total);
        }
    }
    

    ep.on('food.addtocart', function(itemId){
        console.log('food.addtocart', itemId);

        var item = items.getItemById(itemId);

        if(item) {
            exports.add(itemId, 1);

            renderHomeCart();
        }

    });

    ep.on('food.recommendLoaded', function(){
        renderHomeCart();
    });

    ep.on('cart.changed', function(){
        cookie.set('cart_item', JSON.stringify(cartItems));
    });

    // 从cookie获取购物车信息
    try {
        cartItems = JSON.parse(cookie.get('cart_item'));
    }catch(e){
        // todo
    }


    exports.getList = function(){
        return cartItems;
    }

    exports.clearList = function(){
        cartItems = {};
        ep.emit('cart.cleared');
    }

    exports.add = function(itemId, count) {
        count = count || 1;
        if(typeof cartItems[itemId] == "undefined") {
            cartItems[itemId] = 0;
        }
        cartItems[itemId]+=parseInt(count, 10);

        ep.emit('cart.changed', cartItems);
    }

    exports.sub = function(itemId, count) {
        count = count || 1;
        if(cartItems[itemId] > count) {
            cartItems[itemId]-=parseInt(count, 10);
        } else {
            delete cartItems[itemId];
        }

        ep.emit('cart.changed', cartItems);
    }

    exports.set = function(itemId, count) {
        cartItems[itemId] = parseInt(count, 10);

        ep.emit('cart.changed', cartItems);
    }

    exports.remove = function(itemId) {
        delete cartItems[itemId];

        ep.emit('cart.changed', cartItems);
    }

    exports.getListDetail = function(){
        return _getCartsItems();
    }
});