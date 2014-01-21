<div class="gotoTop" title="回到顶部"></div>
{%script%}
    var display = "none";
    $(window).on('scroll', showGotoTop);
    function showGotoTop(){
        var top = $('body').scrollTop();
        if(top > 300 && display == "none"){
            display = "block";
            $('.gotoTop').show(200);
        }
        if(top < 300 && display == "block"){
            display = "none";
            $('.gotoTop').hide(200);
        }
    }
    showGotoTop();
    $(window).on('resize', showGotoTop);
    $('.gotoTop').on('click', function(){
        $('body').animate({scrollTop: 0}, 400);
        display = "none";
        //$('.gotoTop').hide(200);
    });
{%/script%}