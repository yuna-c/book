var swiper1 = new Swiper(".goods-swiper",  {
    slidesPerView: 1,
    autoplay: {
        delay: 5000,
        disableOnInteraction: false,
    },
    autoplay: {
      delay: 5000,
      disableOnInteraction: false,
    },
    speed: 500,
    loop: true,
    pagination: {
      el: ".goods-swiper .swiper-pagination",
      type: "fraction",
    },
    
});

var swiper2 = new Swiper(".promotion-swiper", {
    slidesPerView: 'auto',
    speed: 500,
    //loop: true,
    scrollbar: {
        el: ".swiper-scrollbar",
        hide: true,
      },
});
/*
var swiper3 = new Swiper(".bestbook-swiper", {
    slidesPerView: 'auto',
    speed: 500,
    //loop: true,
    scrollbar: {
        el: ".swiper-scrollbar",
        hide: true,
      },
});
*/
    
var swiper4 = new Swiper(".package-swiper", {
    slidesPerView: 'auto',
    speed: 500,
    scrollbar: {
        el: ".swiper-scrollbar",
        hide: true,
      },
});

var swiper5 = new Swiper(".column-swiper", {
    slidesPerView: 'auto',
    speed: 500,
    //loop: true,
});

var swiper6 = new Swiper(".event-swiper",  {
    slidesPerView: 1,
    speed: 500,
    loop: true,
    pagination: {
      el: ".event-swiper .swiper-pagination",
      clickable: true,
    },
});

var swiper7 = new Swiper(".monthly-swiper",  {

    slidesPerView: 1,
    speed: 500,
//    loop: true,
    pagination: {
      el: ".monthly-swiper .swiper-pagination",
      type: "fraction",
    },
    scrollbar: {
        el: ".swiper-scrollbar",
        hide: true,
      },
});

var subject1 = new Swiper(".title_tabswiper",  {
  slidesPerView: 'auto',
  speed: 1000,
});

var subject2 = new Swiper(".booksSub-swiper_fst",  {
  slidesPerView: 7,
  speed: 1000,
});

/*
var subject3 = new Swiper(".booksSub-swiper_snd",  {
  slidesPerView: 6,
  speed: 1000,
});
*/

$('.title_tab li').click(function(){
	$(this).addClass('active').siblings().removeClass('active');
	$(this).parents().siblings('.contents_tab').children('.cont').eq($(this).index()).addClass('active').siblings().removeClass('active');
});
  
  // 최상위로 이동
$('.go_top').click(function(){
	target = $(this).attr("href");
	$target = $(target);
	$('html, body').stop().animate({ 
		scrollTop: $target.offset().top }, "slow");
});

/*
$('.b_menu').click(function(){
	$('.menu_popup').css('display','block');
	$('html, body').css('overflow-y','hidden');
});

$('.b_close').click(function(){
	$('.menu_popup, .option_popup').css('display','none')
	$('html, body').css('overflow-y','auto');
});
*/

$('.b_options').click(function(){
	$('.option_popup').css('display','block');
	$('html, body').css('overflow-y','hidden');
});

$('.bestbook_area .icon_help').click(function(){
	$('.tooltip').toggleClass('active');
});

//family_site
/*
$('.family_site dl').click(function(){
	$(this).toggleClass('active')
});

$('.family_site dl').mouseleave(function(){
	$(this).toggleClass('active')
});
*/