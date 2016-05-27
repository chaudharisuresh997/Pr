$(document).ready(function(){
	$(".offer_bx").each(function () {
        $(this).mouseenter(function () {
            $(this).children('.offer_bx ul').stop().animate({ right: '0px' }, "50");
            

        });
    });
    $(".offer_bx").each(function () {
        $(this).mouseleave(function () {
            $(this).children('.offer_bx ul').stop().animate({ right: '-41px' }, "200");


        });
    });

   
});
$(document).ready(function () {
    $(window).scroll(function () {
        if ($(this).scrollTop() > 200) {
            $('.service_inner1').stop().animate({left:"0px"});
           $('.service_inner2').stop().animate({right:"0px"});
        } else {

            
        }
    });

});
// $(document).ready(function () {
//     $('.slider_txt').stop().delay(100).animate({right:"153px"});
//      $('.slider_btn').stop().delay(200).animate({bottom:"86px"});
//      $('.slider_txt2').stop().delay(5002).animate({right:"153px"});
//      $('.slider_btn2').stop().delay(5002).animate({bottom:"86px"});
    
// });
$(document).ready(function(){
    $(".middle_offers_bx_hover").each(function () {
        $(this).mouseenter(function () {
            $(this).children('.middle_offers_bx_hover a').stop().animate({ bottom:"76px" });
            

        });
    });
    $(".middle_offers_bx_hover").each(function () {
        $(this).mouseleave(function () {
           $(this).children('.middle_offers_bx_hover a').stop().animate({ bottom:"0px" });


        });
    });

   $('.upper_header_close').click(function(){
    $('.upper_header').css("display","none");
   });
   $('.srch_ico').click(function(){
        $('.top_srch_bx').slideToggle('fast');
   });
});

