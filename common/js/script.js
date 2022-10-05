/* common */
    function delInputVal(i){
        $(i).prev("input").val("")
    }

    function delInput(i){
        $(i).parent(".input-itm").remove()
    }
/* //common */

/* my */

function cardType02Btn(i){
    $(i).toggleClass("active");
    var btnTxt = ($(i).html() === "구독") ? "해지":"구독";
    $(i).html(btnTxt);
}

function booksPoint(i){
    $(i).parent().next(".booksPoint-search-center").toggleClass("show");
}

function fixedBtnOn(i){
    $(i).parent(".my-btm-fixed-ft").stop().slideUp();
}

/* ..my */

/* main */




    /* goodsSwiper */
        $(function(){
            const goodsSwiperViewCnt = $(".goodsSwiper .swiper-wrapper .swiper-slide").length;
            const goodsSwiperPerView = 1;
            const goodsSwiperLoopValue = (goodsSwiperViewCnt > goodsSwiperPerView) ? true : false;
            var goodsSwiper = new Swiper(".goodsSwiper", {
                slidesPerView: goodsSwiperPerView,
                //effect: "fade",
                autoplay: {
                    delay: 2500,
                    disableOnInteraction: false,
                },
                speed: 400,
                loop: goodsSwiperLoopValue,
                pagination: {
                    el: ".goodsSwiper .swiper-pagination",
                    type: "fraction",
                },

                navigation: {
                    nextEl: ".goodsSwiper .swiper-button-next",
                    prevEl: ".goodsSwiper .swiper-button-prev",
                },

                on: {
                    init: function() {
                    if(!goodsSwiperLoopValue){
                        $(".swiper-button-next").remove();
                        $(".swiper-button-prev").remove();
                    }
                    },

                }
            });
            $(".goodsSwiper").on("mouseover", function () {
                goodsSwiper.autoplay.stop();
            });
            $(".goodsSwiper").on("mouseout", function () {
                goodsSwiper.autoplay.start();
            });
        })
    /* //goodsSwiper */

/* //main */

/* main */



/* mall */


    /* mallSwiper */
    $(function(){
        const mallSwiperViewCnt = $(".mallSwiper .swiper-wrapper .swiper-slide").length;
        const mallSwiperPerView = 1;
        const mallSwiperLoopValue = (mallSwiperViewCnt > mallSwiperPerView) ? true : false;
        var mallSwiper = new Swiper(".mallSwiper", {
            slidesPerView: mallSwiperPerView,
            //effect: "fade",
            autoplay: {
                delay: 2500,
                disableOnInteraction: false,
            },
            speed: 400,
            loop: mallSwiperLoopValue,
            pagination: {
                el: ".mallSwiper .swiper-pagination",
                type: "fraction",
            },

            navigation: {
                nextEl: ".mallSwiper .swiper-button-next",
                prevEl: ".mallSwiper .swiper-button-prev",
            },

            on: {
                init: function() {
                if(!mallSwiperLoopValue){
                    $(".swiper-button-next").remove();
                    $(".swiper-button-prev").remove();
                }
                },

            }
        });
        $(".mallSwiper").on("mouseover", function () {
            mallSwiper.autoplay.stop();
        });
        $(".mallSwiper").on("mouseout", function () {
            mallSwiper.autoplay.start();
        });
    })
/* //mallSwiper */


/* //mall */



    /* monthlySwiper */
        $(function(){
            var monthlySwiper = new Swiper(".monthlySwiper", {
                slidesPerView: 1,
                effect: "fade",
                loop: true,
                autoplay: {
                    delay: 5000,
                    disableOnInteraction: false,
                },
                speed: 1000,
                pagination: {
                    el: ".swiper-pagination",
                    type: "progressbar",
                },

                navigation: {
                    nextEl: ".monthlySlide .swiper-button-next",
                    prevEl: ".monthlySlide .swiper-button-prev",
                },
            });
        });
    /* //monthlySwiper */


    $(function(){
        /* mainBooksSwiper */
        /* 2022-05-16 수정 */
        var mainBooksSwiper1 = new Swiper(".mainBooksSwiper1", {
            slidesPerView: "auto",
            spaceBetween: 16,
            scrollbar: {
                el: ".mainBooksSwiper1 .swiper-scrollbar",
            },
        });

        var mainBooksSwiper2 = new Swiper(".mainBooksSwiper2", {
            slidesPerView: "auto",
            spaceBetween: 16,
            scrollbar: {
                el: ".mainBooksSwiper2 .swiper-scrollbar",
            },
        });

        var mainBooksSwiper3 = new Swiper(".mainBooksSwiper3", {
            slidesPerView: "auto",
            spaceBetween: 16,
            scrollbar: {
                el: ".mainBooksSwiper3 .swiper-scrollbar",
            },
        });

        var mainBooksSwiper4 = new Swiper(".mainBooksSwiper4", {
            slidesPerView: "auto",
            spaceBetween: 16,
            scrollbar: {
                el: ".mainBooksSwiper4 .swiper-scrollbar",
            },
        });

        /* //2022-05-16 수정 */
        /* //mainBooksSwiper */



    });
/* //main */

/* books, pds, col*/

    $(function(){
        /* 2022-05-08 수정 */
        /* menuSwiper */
        /* var menuSwiper = new Swiper(".menu-swiper .swiper", {
            slidesPerView: "auto",
            spaceBetween: 25,
            freeMode: true,
        }); */
        /* //menuSwiper */
        /* if($("body").find(".menu-swiper").hasClass("menu-swiper")){
            var indexNum = $(".menu-swiper").find(".active").parent().index();
            menuSwiper.slideTo(indexNum, 500, true);
        } */

        /* menuGnb */
        var menuGnb = new Swiper(".menu-gnb .swiper", {
            slidesPerView: "auto",
            spaceBetween: 25,
            freeMode: true,
        });
        /* //menuGnb */
        if($("body").find(".menu-gnb").hasClass("menu-gnb")){
            var indexNum = $(".menu-gnb").find(".active").parent().index();
            menuGnb.slideTo(indexNum, 500, true);
        }



        /* menuTop01 */
        var menuTop01 = new Swiper(".menu-top-01 .swiper", {
            slidesPerView: "auto",
            spaceBetween: 25,
            freeMode: true,
        });
        /* //menuTop01 */
        if($("body").find(".menu-top-01").hasClass("menu-top-01")){
            var indexNum = $(".menu-top-01").find(".active").parent().index();
            menuTop01.slideTo(indexNum, 500, true);
        }

        /* menuTop02 */
        var menuTop02 = new Swiper(".menu-top-02 .swiper", {
            slidesPerView: "auto",
            spaceBetween: 25,
            freeMode: true,
        });
        /* //menuTop02 */
        if($("body").find(".menu-top-02").hasClass("menu-top-02")){
            var indexNum = $(".menu-top-02").find(".active").parent().index();
            menuTop02.slideTo(indexNum, 500, true);
        }

        /* menuTop03 */
        var menuTop03 = new Swiper(".menu-top-03 .swiper", {
            slidesPerView: "auto",
            spaceBetween: 25,
            freeMode: true,
        });
        /* //menuTop03 */
        if($("body").find(".menu-top-03").hasClass("menu-top-03")){
            var indexNum = $(".menu-top-03").find(".active").parent().index();
            menuTop03.slideTo(indexNum, 500, true);
        }

        $(".menu-swiper").find(".swiper-slide a").click(function(){
            $(this).parent().siblings().find("a").removeClass("active");
            $(this).addClass("active");
        });
        /* 2022-05-08 수정 */
    });
/* // books, pds, col */

/* col */
    $(function(){
        /* badgeSwiper */
        var badgeSwiper = new Swiper(".badgeSwiper .swiper", {
            slidesPerView: "auto",
            spaceBetween: 5,
            freeMode: true,
        });
        /* //badgeSwiper */
    });
/* // col */



/* //functions */
    /* books  */
        function alignSelect(i){
            const alignSelectTxt = $(i).html();
            $("#alignSelect01").html(alignSelectTxt);
            $(i).parent(".dropdown-menu").removeClass("show").find(".dropdown-item").removeClass("selected");
            $(i).addClass("selected");
        }

        function bookPkg(i){
            const bookPkgTxt = $(i).html();
            $("#bookPkg01").html(bookPkgTxt);
            $(i).parent(".dropdown-menu").removeClass("show");
        }

        function moreViewOn(i){
            $(i).attr("onclick", "moreViewOff(this)").html("접기 -");
            $(i).parent().parent().parent().addClass("active");
        }

        function moreViewOff(i){
            $(i).attr("onclick", "moreViewOn(this)").html("더 보기 +");
            $(i).parent().parent().parent().removeClass("active")
        }
    /* //books  */

    /* col */


    /* //col */
    /* customer */
        function mobileItm(i){
            $(i).parent().parent(".mobile-lst").find(".itm-body").stop().slideUp();
            $(i).next(".itm-body").stop().slideToggle();
        }
    /* //customer */
/* //functions */



/* documnet ready */
$(function(){
/* books */
    /* swiperBanner */
    var swiperBanner = new Swiper(".swiperBanner", {
        autoHeight: true,
        pagination: {
            el: ".swiperBanner .swiper-pagination",

        },
    });
    /* //swiperBanner */

    /* swiperCol3 */
    var swiperCol3 = new Swiper(".swiperCol3", {
        slidesPerView: 2.6,
        spaceBetween: 24,
        pagination: {
            el: ".swiperCol3 .swiper-pagination",
            type: "progressbar",
        },
    });
    /* //swiperCol3 */

    /* siwperColumn01 */
    var siwperColumn01 = new Swiper(".siwperColumn01", {
        slidesPerView: "auto",
        spaceBetween: 10,
    });
    /* //siwperColumn01 */

    /* siwperColumn02 */
    var siwperColumn02 = new Swiper(".siwperColumn02", {
        slidesPerView: "auto",
        spaceBetween: 25,
    });
    /* //siwperColumn02 */

    /* siwperColumn03 */
    var siwperColumn03 = new Swiper(".siwperColumn03", {
        slidesPerView: "auto",
        spaceBetween: 30,
    });

    if($("body").find(".siwperColumn03").hasClass("siwperColumn03")){
        var indexNum = $(".siwperColumn03").find(".active").parent().index();
        siwperColumn03.slideTo(indexNum, 0, true);
    }
    /* //siwperColumn03 */

    /* spinner */
    var spinner = $(".spinner").spinner({
        min: 1,
        max: 999,
        create: function( event, ui ) {
            if($(this).spinner("value") <= 1){
                $(this).parent().children(".ui-spinner-down").attr("disabled" , true)
            }else{
                $(this).parent().children(".ui-spinner-down").attr("disabled" , false)
            }
            if($(this).spinner("value") >= 999){
                $(this).parent().children(".ui-spinner-up").attr("disabled" , true)
            }else{
                $(this).parent().children(".ui-spinner-up").attr("disabled" , false)
            }
        },
        stop: function( event, ui ) {
            if($(this).spinner("value") <= 1){
                $(this).parent().children(".ui-spinner-down").attr("disabled" , true)
            }else{
                $(this).parent().children(".ui-spinner-down").attr("disabled" , false)
            }
            if($(this).spinner("value") >= 999){
                $(this).parent().children(".ui-spinner-up").attr("disabled" , true)
            }else{
                $(this).parent().children(".ui-spinner-up").attr("disabled" , false)
            }
        }
    });
    /* //spinner */
/* books */

/* column */
    /* swiperSquare2 */
    var swiperSquare2 = new Swiper(".swiperSquare2", {
        slidesPerView: "auto",
        spaceBetween: 10,
    });
    /* //swiperSquare2 */

    /* swiperColumnList */
    var swiperColumnList = new Swiper(".swiperColumnList", {
        slidesPerView: "auto",
        spaceBetween: 10,
    });
    /* //swiperColumnList */
/* //column */
/* mall */

    /* swiperMallList */
    var swiperMallList = new Swiper(".swiperMallList", {
        slidesPerView: "auto",
        spaceBetween: 10,
    });
    /* //swiperMallList */

/* //mall */
/* my */

    /* swiperMyBooks */
    var swiperMyBooks = new Swiper(".swiperMyBooks", {
        slidesPerView: "auto",
        spaceBetween: 10,
    });
    /* //swiperMyBooks */
/* //my */

});




/* //documnet ready */
