$.ajax({
    url: '/api/item/recommend',
    dataType: 'json',
    success: function(retJson){
        console.log(retJson);
        if(retJson.status == 1) {
            var data = retJson.data;
            var tpl = $('#food-item-tpl').html();
            console.log(tpl);
            var compiled_tpl = juicer(tpl);
            console.log(compiled_tpl);
            console.log(compiled_tpl.render({list:data}));
            $('#food-list').html(compiled_tpl.render({list:data}));

        }
    }
});