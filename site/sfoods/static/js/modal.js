define(function(require, exports, module) {

    var modalIndex = 0;
    var modalMap = {};

    $(window).on('resize', function(){
        $('.popup-modal').each(function(i, v){
            var h = $(v).height();

            $(v).css({
                "marginTop": h/2*(-1)
            })
        })
    })

    /*
        显示操作或其他提示信息对话框
     */
    function showActionLoading(message, flag, callback){
        if(typeof flag == 'function') {
            callback = flag;
            flag = false;
        }
        showModal('action-loading', {
            html: message || '请稍候，正在处理请求',
            hideFooter: flag || false,
            onConfirm: function(data){
                if(typeof callback == 'function') {
                    callback.call(this, data);
                }
            }
        });
    }
    /*
        隐藏操作或其他提示信息对话框
     */
    function hideActionLoading(){
        hideModal('action-loading');
    }


    /*
        隐藏制定的id的对话框
        如果ID未指定，那么就隐藏所有对话框。
     */
    function hideModal(id){
        var modal = $('.popup-modal');
        if(id) {
            modal = $("#" + id);
        }
        var modalMask = $('.popup-modal-mask');
        modal.hide();
        modalMask.hide();
    }

    /*
        显示一个指定id的对话框
        如果已经存在，则覆盖之前的处理函数。
        如果不存在，则创建并append到body,并绑定相应事件
     */
    function showModal(id, options) {
        if(arguments.length < 2){
            options = arguments[0];
            id = 'modal-' + modalIndex;
            modalIndex++;
        }

        var modal = $("#" + id);
        var modalMask = $('.popup-modal-mask');
        var modalHtml  = '';
        var defaultOptions = {
            id: id,
            title: '消息提示',
            html: '',
            hideFooter:false,
            width:300,
            btns:[],
            cancelLabel: '取消',
            confirmLabel: '确定',
            onBeforeConfirm: function(){},
            onBeforeCancel: function(){},
            onConfirm: function(){},
            onCancel: function(){},
            onAfterConfirm: function(){},
            onAfterCancel: function(){}
        };
        options = $.extend(defaultOptions, options);

        if(modal.length < 1) {
            console.log(juicer($('#popup-modal-tpl').html()));
            modalHtml = juicer($('#popup-modal-tpl').html()).render(options);
            $('body').append(modalHtml);
            modal = $('#' + options.id);
        }

        if(options.hideFooter === false) {
            modal.find('.popup-modal-footer').show();
        } else {
            modal.find('.popup-modal-footer').hide();
        }
        modal.find('.popup-modal-content').html(options.html);
        modal.find('.popup-modal-content').css({
            width: options.width,
            'max-height': 'auto'
        });

        if(options.height) {
            modal.find('.modal-content').css({
                'max-height': options.height
            });
        }

        modal.show();
        modalMask.show();

        modal.css({
            marginLeft: (options.width+10)/2*(-1),
            marginTop: modal.height()/2*(-1)
        });

        modal.on('click', '.btn', function(e){
            e.preventDefault();
            var $self = $(this);
            var btnIndex = $self.data('btn-index');
            var callback;
            console.log('btnIndex', btnIndex);
            if(typeof btnIndex != 'undefined'){
                callback = options.btns[btnIndex].onClick;
                if(typeof callback == 'function') {
                    if(callback.call(modal, options) !== false) {
                        modal.hide();
                        if(options.removable) {
                            modal.remove();
                        }
                    }
                }
            }
        })

        if(modal.off) {
            modal.off('click', '.btn-confirm');
            modal.off('click', '.btn-cancel');
            modal.off('click', '.closer');

            modal.on('click', '.btn-confirm', function(){
                if(options.onBeforeConfirm.call(modal) !== false) {
                    modal.hide();
                    modalMask.hide();
                    options.onConfirm.call(modal, options);
                    if(options.removable) {
                        modal.remove();
                    }
                }
            });
            modal.on('click', '.btn-cancel', function(){
                if(options.onBeforeCancel() !== false) {
                    modal.hide();
                    modalMask.hide();
                    options.onCancel.call(modal, options);
                    if(options.removable) {
                        modal.remove();
                    }
                }
            });
            modal.on('click', '.closer', function(){
                if(options.onBeforeCancel() !== false) {
                    modal.hide();
                    modalMask.hide();
                    options.onCancel.call(modal, options);
                    if(options.removable) {
                        modal.remove();
                    }
                }
            });

        } else {
            modal.undelegate('.btn-confirm', 'click');
            modal.undelegate('.btn-cancel', 'click');
            modal.undelegate('.closer', 'click');

            modal.delegate('.btn-confirm', 'click', function(){
                if(options.onBeforeConfirm() !== false) {
                    modal.hide();
                    modalMask.hide();
                    options.onConfirm();
                }
            });
            modal.delegate('.btn-cancel', 'click', function(){
                if(options.onBeforeCancel() !== false) {
                    modal.hide();
                    modalMask.hide();
                    options.onCancel()
                }
            });
            modal.delegate('.closer', 'click', function(){
                if(options.onBeforeCancel() !== false) {
                    modal.hide();
                    modalMask.hide();
                    options.onCancel()
                }
            });
        }
    }

    var messageTimer;
    function showMsg(msg){
        $('#message').html(msg|| '');
        $('#message-container').css({
            top:10
        });
        
        messageTimer && clearTimeout(messageTimer);
        messageTimer = setTimeout(function(){
            $('#message-container').css({
                top:-30
            });
        },2000);
    }


    var storage;

    if(window.localStorage) {
        storage = window.localStorage;
    }


    function saveTaskData(data, type){
        var key = type?"hunter_new_task_" + type:'hunter_new_task';
        if(storage) {
            storage.setItem(key, JSON.stringify(data));
        }
    }

    function clearTaskData(type){
        var key = type?"hunter_new_task_" + type:'hunter_new_task';
        if(storage) {
            storage.removeItem(key);
        }
    }

    function getTaskData(type){
        var key = type?"hunter_new_task_" + type:'hunter_new_task';
        var data;
        if(storage) {
            data = storage.getItem(key);
        }
        if(data === null) {
            data = '{}';
        }
        return JSON.parse(data);
    }

    function showLoading(){
        var modal = $('#loading-box');
        var modalMask = $('.popup-modal-mask');
        modal.show();
        modalMask.show();
    }

    function hideLoading(){
        var modal = $('#loading-box');
        var modalMask = $('.popup-modal-mask');
        modal.hide();
        modalMask.hide();
    }

    module.exports = {
        show: showModal,
        hide: hideModal,
        showAction: showActionLoading,
        hideAction: hideActionLoading,
        msg:showMsg,
        showLoading: showLoading,
        hideLoading: hideLoading
    }

});