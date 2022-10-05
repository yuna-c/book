$(function () {
    $('.title_tab li').click(function () {
        $(this).addClass('active').siblings().removeClass('active');
        $(this).parents().siblings('.contents_tab').children('.cont').eq($(this).index()).addClass('active').siblings().removeClass('active');
    });
})
