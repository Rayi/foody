define(function(require, exports, module) {

    var ep = require('./ep');
    console.log(ep);


    var cart = require('./cart');

    console.log('seajs run');


    $('body').on('click', '.add-to-cart', function(){
        console.log(123,ep);
        ep.emit('food.addtocart', $(this));
    });


});