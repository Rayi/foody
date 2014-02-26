define(function(require, exports, module) {

    var ep = require('./ep');
    console.log(ep);


    var cart = require('./cart');

    console.log('seajs run');



    var items = require('./items');


    $('body').on('click', '.add-to-cart', function(){
        ep.emit('food.addtocart', $(this).data('id'));
    });


    

    ep.on('food.itemsLoaded', function(){
        items.getRecommend();
    });

    items.getAll();

});