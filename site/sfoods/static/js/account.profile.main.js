define(function(require, exports, module) {

    var ep      = require('./ep');
    var cart    = require('./cart');
    var items   = require('./items');
    var modal   =   require('./modal');
    console.log(modal);

    


    var editFlag = false;

    var commands = {
        "edit-contact": function(){
            var id = $(this).data('id');

            var self = this;
            var palceInput = $(this).closest('.form-group').find('input')
            var place = palceInput.val();
            console.log(place);
            modal.show('place-editor', {
                width:400,
                title: "修改地址",
                html: '<textarea id="place-edit-area" style="width:100%;height:80px;">'+place+'</textarea>',
                hideFooter: false,
                removable: true,
                onConfirm: function(data){
                    var newPlace = $('#place-edit-area').val();

                    palceInput.val(newPlace);

                    $.ajax({
                        url: '/api/user/placeedit',
                        dataType: 'json',
                        data: {
                            id: id,
                            place: $('#place-edit-area').val()
                        },
                        success: function(ret){
                            if(ret.status === 0) {
                                palceInput.val(newPlace);
                            }
                        }
                    });

                }
            });

            

        },
        "remove-contact": function(){
            var self = this;
            var place = $(this).closest('.form-group').find('input').val();
            console.log(place);
            modal.show('action-loading', {
                width:400,
                html: '确认删除地址【'+place+'】么？',
                hideFooter: false,
                autoDestroy: true,
                onConfirm: function(data){
                    $(self).closest('.form-group').remove();
                }
            });
        }
    }

    $('body').on('click', '[data-cmd]', function(e){
        e.preventDefault();

        var cmd = $(this).data('cmd');

        if(commands[cmd]) {
            commands[cmd].call(this);
        }

    });

});