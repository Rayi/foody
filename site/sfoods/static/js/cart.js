define(function(require, exports, module) {

    var ep    = require('./ep');
    var items = require('./items');
    
    // 购物车列表
    var cartItems = {};

    // 计算出购物车的商品数和总价
    function _getCartsItems(){
        var data  = [];
        var price = 0;
        var item;

        for(var i in cartItems) {
            item        = items.getItemById(i);
            item.count  = cartItems[i];
            
            price += item.price * item.count;

            data.push(item);
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
        cartTpl = juicer(cartTplStr);
        htmlContent = cartTpl.render({list:items.data});

        $('#home-cart-list').html(htmlContent);
        $('#home-total-price').html(items.total);
    }
    

    ep.on('food.addtocart', function(itemId){
        console.log('food.addtocart', itemId);

        var item = items.getItemById(itemId);

        if(item) {
            if(typeof cartItems[itemId] == "undefined") {
                cartItems[itemId] = 0;
            }
            cartItems[itemId]++;

            renderHomeCart();
        }

    });


    renderHomeCart();
});