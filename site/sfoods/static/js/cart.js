define(function(require, exports, module) {

    var ep = require('./ep');
    

    ep.on('food.addtocart', function(data){
        console.log('food.addtocart', data);
    });
});