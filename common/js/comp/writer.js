(function($){
    $(window).on("load",function(){
        $(".scrollTools").mCustomScrollbar({
            theme: "rounded"
        });
    });
})(jQuery);

function toggleQNA(i){
    $(i).toggleClass("active").parent('.btn-box').parent('.body-ctr').toggleClass("active");
    if($(i).hasClass("active")){
        $(i).find(".text-hide").html("닫기");
    }else{
        $(i).find(".text-hide").html("열기");
    }
}
var swiper = new Swiper(".questionSwiper", {
    loop: true,
    grabCursor: true,
    autoplay: {
        delay: 5000,
        disableOnInteraction: false,
      },
    pagination: {
        el: ".swiper-pagination",
        clickable: true,
    },
    on: {
        slideChange: function(){
            $(".body-ctr").removeClass("active");
        }
    }
});