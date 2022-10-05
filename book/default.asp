<!--#include virtual="/common/inc/config.asp"-->
<!-- #include virtual="/common/include/inc.meta.asp" -->

<!-- S : 페이지별 css / script -->
<link rel="stylesheet" type="text/css" href="/common/css/inc.book.css?ver=<%= now() %>">
<!--// E : 페이지별 css / script -->

<!-- #include virtual="/common/include/inc.header.asp" -->
	
	<!-- S : content -->
	<div id="content" class="book-content">

		<!-- S : 페이지 내용 -->
		<div class="content-container">
			<!-- S : swiper menu -->
			<!-- #include virtual="/common/include/inc.menu.asp" -->
			<!--// E : swiper menu -->

			<!-- S : swiper menu -->
			<!-- #include virtual="/yuna/inc.submenu.asp" -->
			<!--// E : swiper menu -->

			<!-- S : 검색유형 -->
			<div class="sort-area mb20">
				<div class="filter-area">
					<div class="btn-area">
						<button class="btn vertical" onclick="fnOpenModal('.modal-sort');"><!--onclick="fnOpenNav('sort');"-->
							유형·저자 검색
						</button>
					</div>
					<div class="btn-area select-area relative">
						<button class="btn horizontal" id="select">
							최신순
						</button>

						<div class="drop-area">
							<button class="btn" onclick="selectBtn(this)">최신순</button>
							<button class="btn" onclick="selectBtn(this)">인기순</button>
						</div>
					</div>
				</div>
			</div>
			<!--// E : 검색유형 -->
			
			
			<!-- S : 검색 스티커 슬라이드
			<div class="sticker-area swiper-container swiper-slide-type2 mb10">
				<ul class="swiper-wrapper">
					<%
						For i=0 To 3
					%>
					<li class="swiper-slide selected"><a href="javascript:void(0)" class="sticker sticker-skyblue">개념+실전서 <i class="ico ico-close"></i></a></li>
					<li class="swiper-slide"><a href="javascript:void(0)" class="sticker sticker-skyblue">모의고사 <i class="ico ico-close"></i></a></li>
					<li class="swiper-slide"><a href="javascript:void(0)" class="sticker sticker-skyblue">집에 안갈꺼야? <i class="ico ico-close"></i></a></li>
					<li class="swiper-slide"><a href="javascript:void(0)" class="sticker sticker-skyblue">내일도 출근이야? <i class="ico ico-close"></i></a></li>
					<%
						Next
					%>
				</ul>
			</div>
		
			// E : 검색 스티커 슬라이드 -->
			<div class="content-layout">

				<!-- S : 검색 스티커 
				<div class="sticker-area pl0 ml0 mb20">
					<a href="javascript:void(0)" class="sticker sticker-skyblue">개념+실전서 <i class="ico ico-close"></i></a>
					<a href="javascript:void(0)" class="sticker sticker-skyblue">모의고사 <i class="ico ico-close"></i></a>
					<a href="javascript:void(0)" class="sticker sticker-skyblue">집에 안갈꺼야? <i class="ico ico-close"></i></a>
				</div>
				// E : 검색 스티커 -->


				<!-- S : 검색도서 -->
				<div class="list-item">
					<ul class="book-list book-list2">
						<%
							For i=0 To 10
						%>
						<li>
							<a href="/yuna/book/detail.asp">
								<div class="img-area relative">
									<span class="absolute new"><i class="ico ico-new">new</i></span>
									<img src="https://via.placeholder.com/142x213" alt="북스 도서 이미지" title="북스 도서 이미지">
									<span class="absolute sticker sticker-gray">지구과학</span>
								</div>
								<div class="tit-area">
									<p class="tit">한권으로 완성하는 수학 미적분 (상) : 미적분 교과개념 2023 한권으로 완성하는 수학 미적분 (상) : 미적분 교과개념 2023 한권으로 완성하는 수학 미적분 (상) : 미적분 교과개념 2023</p>
									<p class="txt">cap</p>
								</div>
								<div class="price-area">
									<div class="txt-area">
										<span class="price fw700">27,900원</span>
										<span class="price txt-through color-gray">31,000</span>
									</div>
									<a href="https://www.naver.com">
										<i class="ico ico-myinfo">장바구니</i>
									</a>
								</div>
							</a>
						</li>
						<li>
							<a href="/yuna/book/pkg.asp">
								<div class="img-area relative">
									<img src="https://via.placeholder.com/142x213" alt="북스 도서 이미지" title="북스 도서 이미지">
									<span class="absolute sticker sticker-gray">수학</span>
								</div>
								<div class="tit-area">
									<p class="tit">한권으로 완성하는 수학 미적분 </p>
									<p class="txt">cap</p>
								</div>
								<div class="price-area">
									<div class="txt-area">
										<span class="price fw700">27,900원</span>
										<span class="price txt-through color-gray">31,000</span>
									</div>
									<a href="javascript:void(0)">
										<i class="ico ico-myinfo">장바구니</i>
									</a>
								</div>
							</a>
						</li>
						<%
							Next
						%>
					</ul>
				</div>
				<!-- S : 검색도서 -->
				
				<div class="btn-group mb20">
					<button type="button" class="btn btn-border">더보기 +</button>
				</div>
			</div>
		</div>
		<!-- // E : 페이지 내용 -->
	</div>
	<!--// E : content -->

	<!-- S : dim -->
	<link rel="stylesheet" type="text/css" href="/common/css/inc.dim.css?ver=<%= now() %>">
	<!-- #include file ="./inc.findBook.asp" -->
	<!--// E : dim -->		


<!-- #include virtual="/common/include/inc.footer.asp" -->

<script>      
	$(function(){
		
		// 스티커 삭제
		$('.sticker > .ico-close').on('click', function(){
			$(this).parent().css({"display":"none"});
		});

		// select btn
		$('.select-area').on('click', function(){
			$(this).toggleClass('selected');
		});

	});
	
	// 검색 필터 클릭 시 
	function fnSearchFilter(obj, btnObj){
		var $obj = $(obj);
		var $btnObj = $(btnObj);

		// 월별 전체 클릭 시
		if( $obj.hasClass('check-all') === true ){
			var $checked = $obj.prop('checked');
			console.log($obj.parent().parent());
			$obj.parent().parent().find('input[type="checkbox"]').prop('checked', $checked);
		}

		// 필터 개수 표기
		var num = $obj.parents('.cheched-content').find('input[type="checkbox"]:checked').not('.check-all').length;
	
		if( num === 0 ){
			$btnObj.removeClass('selected');
		}else{
			$btnObj.addClass('selected').children('.num').text("("+ num+ ")");
			$btnObj.addClass('selected').find('input[name=name]').val();
		
		}
	}
</script>