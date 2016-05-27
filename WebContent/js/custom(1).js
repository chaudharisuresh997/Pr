// $(document).ready(function(){
//  $('.slider_left_bx1').hover(function(){
//             $('.slider_left_bx1').stop().animate({height:'250px'});
//             $('.slider_left_bx2').stop().animate({height:'35px'});
//             $('.slider_left_bx3').stop().animate({height:'35px'});
//     });

   
// });

$(document).ready(function(){
    $(".slider_left_bx1").each(function () {
        $(this).mouseenter(function () {
            $(this).stop().animate({ height: '300px' }, "50");
             $(".slider_left_bx2").stop().animate({ height: '30px' }, "50");
             $(".slider_left_bx3").stop().animate({ height: '30px' }, "50");

        });
    });
     $(".slider_left_bx1").each(function () {
        $(this).mouseleave(function () {
           $(this).stop().animate({ height: '120px'}, "50");
           $(".slider_left_bx2").stop().animate({ height: '120px' }, "50");
             $(".slider_left_bx3").stop().animate({ height: '120px' }, "50");

        });
    });

      $(".slider_left_bx2").each(function () {
        $(this).mouseenter(function () {
            $(this).stop().animate({ height: '300px' }, "50");
             $(".slider_left_bx1").stop().animate({ height: '30px' }, "50");
             $(".slider_left_bx3").stop().animate({ height: '30px' }, "50");

        });
    });
     $(".slider_left_bx2").each(function () {
        $(this).mouseleave(function () {
           $(this).stop().animate({ height: '120px'}, "50");
           $(".slider_left_bx1").stop().animate({ height: '120px' }, "50");
             $(".slider_left_bx3").stop().animate({ height: '120px' }, "50");

        });
    });
      $(".slider_left_bx3").each(function () {
        $(this).mouseenter(function () {
            $(this).stop().animate({ height: '300px' }, "50");
             $(".slider_left_bx2").stop().animate({ height: '30px' }, "50");
             $(".slider_left_bx1").stop().animate({ height: '30px' }, "50");

        });
    });
     $(".slider_left_bx3").each(function () {
        $(this).mouseleave(function () {
           $(this).stop().animate({ height: '120px'}, "50");
           $(".slider_left_bx2").stop().animate({ height: '120px' }, "50");
             $(".slider_left_bx1").stop().animate({ height: '120px' }, "50");

        });
    });



   
});
