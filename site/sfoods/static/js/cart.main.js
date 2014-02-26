define(function(require, exports, module) {

    var ep      = require('./ep');
    var cart    = require('./cart');
    var items   = require('./items');

    function renderCart(){
        var items = cart.getListDetail();

        var tpl = $('#cart-sheet-tpl').html();
        var compiled_tpl = juicer(tpl);

        $('#cart-sheet').html(compiled_tpl.render({list:items.data, total: items.total}));
    }

    var commands = {
        "remove-item": function(){
            var row = $(this).closest('.data-row');
            var row_id = row.data('id');

            cart.remove(row_id);
        },
        "item-sub": function(){
            var row = $(this).closest('[data-id]');
            var row_id = row.data('id');

            cart.sub(row_id, 1);
        },
        "item-add": function(){
            var row = $(this).closest('[data-id]');
            var row_id = row.data('id');

            cart.add(row_id, 1);
        }
    }

    $('#cart-sheet').on('change', '.item-count', function(){
        if(!(/^\d+$/.test($(this).val()))) {
            console.log('非数字！');
            return;
        }
        var row = $(this).closest('.data-row');
        cart.set(row.data('id'), $(this).val());

    });

    $('#cart-sheet').on('click', '[data-cmd]', function(e){
        e.preventDefault();

        var cmd = $(this).data('cmd');

        if(commands[cmd]) {
            commands[cmd].call(this);
        }

    });

    ep.on('food.itemsLoaded', function(){
        renderCart();
    });

    ep.on('cart.changed', function(){
        renderCart();
    });

});