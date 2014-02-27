define(function(require, exports, module) {

    var ep      = require('./ep');
    var cart    = require('./cart');
    var items   = require('./items');


    var consignee = {
        "contact": "雷先生",
        "phone": "13800138000",
        "place": "北京市海淀区东北旺西路8号中关村软件园2期",
    };

    function _renderConsignee(){
        var tpl = juicer($('#consignee-tpl').html());
        $('#consignee').html(tpl.render(consignee));
    }
    function _renderConsigneeEdit(){
        var tpl = juicer($('#consignee-edit-tpl').html());
        $('#consignee').html(tpl.render(consignee));
    }

    var editFlag = false;

    var commands = {
        "finish-order": function(){
            // todo
            if(editFlag === true) {
                alert('请先保存订餐人信息！');
                return;
            }

            alert('提交成功！');
            document.location = '/cart/finish';
        },
        "save-consignee": function(){
            consignee.contact = $('#consignee-contact').val();
            consignee.phone = $('#consignee-phone').val();
            consignee.place = $('#consignee-place').val();

            editFlag = false;
            _renderConsignee();
            $('#consignee-action').html('<a href="" data-cmd="edit-consignee">修改</a>');
        },
        "edit-consignee": function(){
            editFlag = true;
            _renderConsigneeEdit();
            $('#consignee-action').html('<a href="" data-cmd="save-consignee">保存订餐人信息</a>');
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

    $('body').on('click', '[data-cmd]', function(e){
        e.preventDefault();

        var cmd = $(this).data('cmd');

        if(commands[cmd]) {
            commands[cmd].call(this);
        }

    });

    commands['edit-consignee']();

});