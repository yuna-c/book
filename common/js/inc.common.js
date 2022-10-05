$(document).ready(function(){
    // content-footer
	/*
    if( $('.content-footer').length > 0 ){
        $('.content-footer').scrollToFixed({
            bottom: 0
        });
    };
	*/
    // swiper slide
    // type1 Pagination
    if( $('.swiper-slide-type1').length > 0 ){
        $('.swiper-slide-type1').each(function(){
            new Swiper( $(this), {
                //pagination: { el: $(this).find('.swiper-pagination') },
                loop: true,
            });
        });
    }

    // type2 Auto Slides Per View / Carousel Mode
    if( $('.swiper-slide-type2').length > 0 ){
        $('.swiper-slide-type2').each(function(){
            new Swiper( $(this), {
                slidesPerView: 'auto'
            });
        });
    }
	
	// type3 progressbar
	if( $('.swiper-slide-type3').length > 0 ){
        $('.swiper-slide-type3').each(function(){
            new Swiper( $(this), {
                slidesPerView: "auto",
				spaceBetween: 16,
				pagination: {
					el: ".swiper-pagination",
					type: "progressbar",
				  },
            });
        });
    }
	
	// type4 pager-dotted
	if( $('.swiper-slide-type4').length > 0 ){
        $('.swiper-slide-type4').each(function(){
            new Swiper( $(this), {
                pagination: { el: $(this).find('.swiper-pagination') },
                loop: true,
            });
        });
    }

	$('.tab-type > ul > li, .tab-type1 > ul > li, .tab-type2 > ul > li, .tab-type3 > ul > li').on('click', function(){
		var $this = $(this),
			$tab = $this.parent().parent(),
			thisIndex = $tab.children().children().index($this);

		$this.addClass('selected').siblings().removeClass('selected');

		if( $tab.find('li').length == $tab.parent().children('.tab-content').length ){
			$tab.parent().children('.tab-content').hide().eq(thisIndex).show();
		}
	});
	
	// btn-like
    $(document).on('click', '.btn-like', function(){
        $(this).toggleClass('on');
    });

    // btn-tooltip
	$(document).on('click', '.btn-tooltip', function(){
        var $btn = $(this);
        var $tooltipLayer = $(this).next('.tooltip-layer');

        $btn.addClass('on');
		//$btn.toggleClass('on');

		if( $tooltipLayer.length > 0 ){
			var posTop = $(this).height();

			$(this).parent().addClass('relative');
			$tooltipLayer.css('top', posTop).show();

			$tooltipLayer.find('.btn-close').on('click', function(){
                $btn.removeClass('on');
				$tooltipLayer.hide();
			});

			$(document).mouseup(function(e){
				if ( !$tooltipLayer.is(e.target) && $tooltipLayer.has(e.target).length === 0 ){
                    $btn.removeClass('on');
                    $tooltipLayer.hide();
				}
			});
		}
    });
	
	// tab click
	$('.tab-menu > ul > li, .tab-menu1 > ul > li, .tab-sub > ul > li').on('click', function(){
		var $tab = $(this).parent(),
            tabIndex = $tab.children('li').index($(this));

        $tab.children('li').removeClass('selected').eq(tabIndex).addClass('selected');

        if( $tab.children('li').length == $tab.parent().children('.tab-content').length ){
            $tab.parent().children('.tab-content').hide().eq(tabIndex).show();
        }
    });

	// tab click
	$('.tab-list a, .tab-list1 a, .tab-list2 a').on('click', function(){
		var $tab = $(this).parents('.tab-list, .tab-list1, .tab-list2');
		var objIndex = $tab.children('a').index(this);

		// tab alert 처리 할 경우 class="alert"
		if( $(this).hasClass('alert') ){
            return false;

        }else{
			$tab.children('a').removeClass('selected').eq(objIndex).addClass('selected');
			if( $tab.children('a').length == $tab.parent().children('.tab-content').length ){
				$tab.parent().children('.tab-content').hide().eq(objIndex).show();
			}	
        }
	});

    // toggle list
	$('.list-toggle').on('click', 'dt a', function(){
		var $tab = $(this).parent();

		if( $tab.hasClass('selected') === true ){
			$tab.removeClass('selected');
			$tab.next().slideUp(500);
		}else{
			$tab.siblings('dt').removeClass('selected');
			$tab.parent().children('dd').slideUp(500);
			$tab.next().slideDown(500);
			$tab.addClass('selected');
		}
    });	
	
	/*
	$('.list-toggle').on('click', 'dt a', function(){
		var $tab = $(this).parent();

		if( $tab.hasClass('selected') === true ){
			$tab.removeClass('selected');
			$tab.next().slideUp(500);
		}else{
			$tab.siblings('dt').removeClass('selected');
			$tab.addClass('selected');
			$tab.parent().children('dd').slideUp(500);
			$tab.next().slideDown(500);
		}
	});
	*/
	
	// toggle list2
	$('.list-toggle2 dt a').on('click', function(){
		var $tab = $(this).parent();

		if( $tab.hasClass('selected') === true ){
			$tab.next().slideToggle();
			$tab.removeClass('selected');
		}
		else{
			$tab.next().slideToggle();
			$tab.addClass('selected');
		}
    });	

	// select btn
	$('.select-area').on('click', function(){
		$(this).toggleClass('selected');
	 });

	
	/*
	// gnb
    if( $('#gnb').length > 0 ){
        $('#gnb').scrollToFixed({
            bottom: 0,
            zIndex: 999
        });
    };

    var swiper = new Swiper(".mySwiper", {
		slidesPerView: 3,
		spaceBetween: 30,
		slidesPerGroup: 3,
		loop: true,
		loopFillGroupWithBlank: true,
		pagination: {
		  el: ".swiper-pagination",
		  clickable: true,
		},
		navigation: {
		  nextEl: ".swiper-button-next",
		  prevEl: ".swiper-button-prev",
		},
	  });

	
    // nav btn
     $('.btn-nav').on('click', function(){
         $(this).parents('#wrap').toggleClass('nav-on');
     });

     $('.black-bg').on('click', function(){
         if( $('.nav').is(':visible') ){
             $(this).parents('#wrap').removeClass('nav-on');
         }
	 });

     // sort click
     $('.sort-type1 a').on('click', function(){
         $(this).addClass('on').siblings().removeClass('on');
     });

     // pager
     $('.pager-num a').on('click', function(){
         $(this).addClass('on').siblings().removeClass('on');
     });

	 // btn-on
	 $(document).on('click', '.btn', function(){
		 $(this).toggleClass('on').siblings().removeClass('on')
	 });
	*/
   
});


// nav open
function fnOpenNav(nav){
    navOpenWrap();

    $('.nav-bg, .dim-bg').show();
    $('.' + nav).addClass(nav + '-on');

    $('.nav-close, .nav-bg, .dim-bg').on('click', function(){
        $('.nav-bg,  .dim-bg').hide();
        $('.' + nav).removeClass(nav + '-on');

        if( nav === 'nav' ){
            $('.' + nav).find('.list-1depth li').removeClass('selected');
			$('.' + nav).find('.dim-body').removeClass('selected');
        }


        navCloseWrap();
    });
}

// nav 2depth
function fnNav2depth(obj){
    var $this = $(obj);

    $this.parent().toggleClass('selected');

}
function fnCloseNav(nav){
    navCloseWrap();

    $('#' + nav).removeClass(nav + '-on');
}
function navOpenWrap(){
    $('html, body').css({'overflow':'hidden'});
}
function navCloseWrap(){
    $('html, body').css({'overflow-y':'auto', 'overflow-x':'hidden'});
}


// scrollAni(이동하고싶은class);
function scrollAni(pos){
    var posTop = $(pos).offset();
    $('html, body').animate({scrollTop : posTop.top}, 500);
}

function scrollAniOption(pos, height, obj){
    var tabIndex = $(obj).parents('ul').children().index($(obj).parent());
    var posTop = $(pos).eq(tabIndex).offset();
    var height = height;

    $('html, body').animate({scrollTop : posTop.top - height}, 500);
}

// layer open
function fnOpenLayer(layer){
	var layerClass = $('.' + layer);

    if( layerClass.siblings().not('.dim-bg').length < 0 ){
        layerClass.siblings().not('.dim-bg').css({'transform':'translate(0, 100%)'});
    }

    navOpenWrap();
    layerClass.css({'transform':'translate(0, 0)'}).parents('.dim-layer').show().addClass('dim-on');

	layerClass.find('.btn-close, .btn-confirm, .pop-close').on('click', function(){
        navCloseWrap();
        layerClass.css({'transform':'translate(0, 100%)'}).parents('.dim-layer').removeClass('dim-on');
    });


	return false;
}

// layer close
function fnCloseLayer(layer){
    var layerClass = $('.' + layer);
    
    navCloseWrap();
    layerClass.css({'transform':'translate(0, 100%)'}).parents('.dim-layer').removeClass('dim-on');

	return false;
}

// select btn
$('.select-area').on('click', function(){
	 $(this).toggleClass('selected');
});

// select btn
function selectBtn(i){
	const selectBtnTxt = $(i).html();
	$("#select").html(selectBtnTxt);
	//$(i).parent(".select-area").removeClass("active").find(".dropdown-item").removeClass("selected");
	$(i).addClass("selected");
}

// multi layer pop 
function fnOpenWrap(){
		$('#wrap').off('scroll touchmove mousewheel', function(e){
			e.preventDefault();
			e.stopPropagation();
			return false;
		});
	}

function fnCloseWrap(){
	$('#wrap').on('scroll touchmove mousewheel');
}

// modal open
function fnOpenModal(obj){ // fnOpenModal(오픈하고 싶은 class or id)
	var $modal = $(obj);

	if( $modal.siblings().not('.modal-bg').length > 0 ) $modal.siblings().not('.modal-bg').hide();

	fnOpenWrap();

	$modal.show();

	if( !$modal.parents('.modal-wrap').is(':visible') ){
		$modal.parents('.modal-wrap').fadeIn(500);
	}	

	$('.btn-close').on('click', function(){
		$modal.hide().parents('.modal-wrap').fadeOut(500);
	});

	return false;
}

// modal close
function fnCloseModal(obj){ // fnCloseModal(닫고 싶은 class or id)
	var $modal = $(obj);

	$modal.hide().parents('.modal-wrap').fadeOut(500);
	fnCloseWrap();

	return false;
}
