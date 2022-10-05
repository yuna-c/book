<!--#include virtual="/common/inc/config.asp"-->
<!-- #include virtual="/common/include/inc.meta.asp" -->

<!-- S : 페이지별 css / script -->
<link rel="stylesheet" type="text/css" href="/common/css/inc.mian.css?ver=<%= now() %>">
<!--// E : 페이지별 css / script -->

<!-- #include virtual="/common/include/inc.header.asp" -->
	
	<!-- S : content -->
	<div id="content" class="main-content">

		<div class="content-container">
			<!-- S : swiper menu -->
			<!-- #include virtual="/common/include/inc.menu.asp" -->
			<!--// E : swiper menu -->

			<!-- S : main-slide -->
			<div class="visual-layout">
				<div class="slide-section banner-slide swiper-container swiper-slide-type1">
					<div class="swiper-wrapper">
						<a href="javascript:void(0)" class="swiper-slide first-slide" style="background-color:#aaa">
							<img src="https://via.placeholder.com/375x300" alt="메인 슬라이드 1">
						</a>
						<a href="javascript:void(0)" class="swiper-slide" style="background-color:#828282">
							<img src="https://via.placeholder.com/768x300" alt="메인 슬라이드 2">
						</a>
						<a href="javascript:void(0)" class="swiper-slide" style="background-color:#ddd">
							<img src="https://via.placeholder.com/100x100?text=slide3" alt="메인 슬라이드 3">
						</a>
					</div>
					<!--
					<div class="swiper-button-next"></div>
					<div class="swiper-button-prev"></div>
					-->
					<div class="swiper-pagination"></div>
				</div>
			</div>
			<!--// E : main-slide -->


			<div class="content-layout">
				<!-- S : 시대인재 Pick -->
				<h3 class="tit-dep3">시대인재 Pick</h3>
				
				<!-- #include virtual="/common/include/inc.slide.asp" -->
				<!--// E : 시대인재 Pick -->

				<!-- S : Best 도서 -->
				<h3 class="tit-dep3 relative">Best 도서
					<!-- S : tooltip -->
					<a href="javascript:void(0)" class="btn-tooltip">
						<i class="ico ico-tooltip"></i>
					</a>
					<div class="tooltip-layer">
						<a href="javascript:void(0)" class="btn-close"><span class="ico ico-close">팝업창 닫기</span></a>
						* 전 주 월~일까지의 판매 건수를<br> 기준으로 집계됩니다.
					</div>
					<!--// E : tooltip -->
				</h3>
				
				<!-- S : tab-menu -->
				<div class="tab-menu1 swiper-container swiper-slide-type2">
					<ul class="swiper-wrapper">
						<li class="swiper-slide selected"><a href="javascript:void(0)">전체</a></li>
						<li class="swiper-slide"><a href="javascript:void(0)">수학</a></li>
						<li class="swiper-slide"><a href="javascript:void(0)">과학</a></li>
						<li class="swiper-slide"><a href="javascript:void(0)">영어</a></li>
						<li class="swiper-slide"><a href="javascript:void(0)">국어</a></li>
						<li class="swiper-slide"><a href="javascript:void(0)">수학</a></li>
						<li class="swiper-slide"><a href="javascript:void(0)">제2외국어</a></li>
						<li class="swiper-slide"><a href="javascript:void(0)">아몰랑</a></li>
					</ul>
				</div>
				<!--// E : tab-menu -->

				<!-- #include virtual="/common/include/inc.slide.asp" -->
				<!--// E : Best 도서 -->
				
				<!-- S : 패키지 도서 -->
				<h3 class="tit-dep3">패키지 도서
					<small>지금 시기에 맞는 추천 패키지 도서</small>
				</h3>

				<!-- #include virtual="/common/include/inc.slide.asp" -->
				<!--// E : 패키지 도서 -->
			</div>
			
			<div class="wide-layout bg">
				<div class="content-layout">
					<!-- S : 이달의 저자 -->
					<div class="slide-monthly swiper-container swiper-slide-type3">
						<ul class="swiper-wrapper">
							<% For i = 0 To 5 %>
							<li class="swiper-slide first-slide">
								<div class="txt-area">
									<ul>
										<li>이달의 저자</li>
										<li>
											<a href="javascript:void(0)">
												이해원 <i class="ico ico-monthly"></i>
											</a>
										</li>
										<li class="txt-overflow">
										UAA & DCAF는 2015년 7월 첫 출판물을 시작으로 2020년까지 28권의 수능 생명과학 도서를 출판한 콘텐츠 연구팀입니다. 우리가 생각하는 올바르고 도움이 되는 문항을 세상에 선보이며, 우수한 수험서를 접근의 허들을 낮춰 전국에 소개하고 싶다는 생각으로 시작해 어느덧 7년차를 맞이하고 있습니다.
										UAA & DCAF는 2015년 7월 첫 출판물을 시작으로 2020년까지 28권의 수능 생명과학 도서를 출판한 콘텐츠 연구팀입니다. 우리가 생각하는 올바르고 도움이 되는 문항을 세상에 선보이며, 우수한 수험서를 접근의 허들을 낮춰 전국에 소개하고 싶다는 생각으로 시작해 어느덧 7년차를 맞이하고 있습니다.
										UAA & DCAF는 2015년 7월 첫 출판물을 시작으로 2020년까지 28권의 수능 생명과학 도서를 출판한 콘텐츠 연구팀입니다. 우리가 생각하는 올바르고 도움이 되는 문항을 세상에 선보이며, 우수한 수험서를 접근의 허들을 낮춰 전국에 소개하고 싶다는 생각으로 시작해 어느덧 7년차를 맞이하고 있습니다.
										</li>
									</ul>
								</div>
								<div class="image-area">
									<div class="list-item">
										<ul class="book-list">
											<li>
												<a href="javascript:void(0)">
													<i class="ico ico-new">new</i>
													<div class="img-area">
														<img src="https://via.placeholder.com/108x154" alt="북스 도서 이미지" title="북스 도서 이미지">
													</div>
													<div class="tit-area">
														<h5>BEST SELLER</h5>
													</div>	
													<div class="txt-area">
														<p class="tit">2022 이해원 최종 파이널 모의고사</p>
													</div>
												</a>
											</li>
											<li>
												<a href="javascript:void(0)">
													<i class="ico ico-new">new</i>
													<div class="img-area">
														<img src="https://via.placeholder.com/108x154" alt="북스 도서 이미지" title="북스 도서 이미지">
													</div>
													<div class="tit-area">
														<h5>BEST SELLER</h5>
													</div>	
													<div class="txt-area">
														<p class="tit">띄어쓰기 포함 최대 2줄 띄어쓰기 포함 최대 2줄 띄어쓰기 포함 최대 2줄</p>
													</div>
												</a>
											</li>
										</ul>
									</div>
								</div>
							</li>
							<li class="swiper-slide">
								<div class="txt-area">
									<ul>
										<li>이달의 저자</li>
										<li>
											<a href="javascript:void(0)">
												이해원 <i class="ico ico-monthly"></i>
											</a>
										</li>
										<li class="txt-overflow">
										UAA & DCAF는 2015년 7월 첫 출판물을 시작으로 2020년까지 28권 니다.
										</li>
									</ul>
								</div>

								<div class="image-area">
									<div class="list-item">
										<ul class="book-list">
											<li>
												<a href="javascript:void(0)">
													<div class="img-area">
														<img src="https://via.placeholder.com/108x154" alt="북스 도서 이미지" title="북스 도서 이미지">
													</div>
													<div class="tit-area">
														<h5>BEST SELLER</h5>
													</div>	
													<div class="txt-area">
														<p class="tit">2022 이해원 최종 파이널 모의고사</p>
													</div>
												</a>
											</li>
											<li>
												<a href="javascript:void(0)">
													<div class="img-area">
														<img src="https://via.placeholder.com/108x154" alt="북스 도서 이미지" title="북스 도서 이미지">
													</div>
													<div class="tit-area">
														<h5>BEST SELLER</h5>
													</div>	
													<div class="txt-area">
														<p class="tit">최대 3줄 노출 최대 3줄 노출 최대 3줄 노출 최대 3줄 노출 최대 3줄 노출</p>
													</div>
												</a>
											</li>
										</ul>
									</div>
								</div>
							</li>
							<% Next %>
						</ul>
						
						<div class="swiper-button-next"></div>
						<div class="swiper-button-prev"></div>
						<div class="swiper-pagination"></div>
					</div>
					<!--// E : 이달의 저자 -->
				</div>	
			</div>
			
			<div class="content-layout">
				<!-- S : 칼럼 -->
				<a href="javascript:void(0);" class="txt-area">
					<h3 class="tit-dep3">칼럼</h3>
				</a>

				<div class="slide-pick swiper-container swiper-slide-type3 mb60">
					<ul class="swiper-wrapper">
						<% For i = 1 To 3 %>
						<li class="swiper-slide first-slide">
							<a href="javascript:void(0)">
								<div class="column">
									<img src="https://via.placeholder.com/120x180" alt="이미지">

									<div class="txt-area">
										<i class="ico ico-new">new</i>
										<p class="tit txt-center">자만은<br>언제나<br>금물</p>
										<p class="txt txt-center">저자명</p>
									</div>
								</div>
							</a>	
						</li>
						<li class="swiper-slide first-slide">
							<a href="javascript:void(0)">
								<div class="column">
									<img src="https://via.placeholder.com/120x180" alt="이미지">

									<div class="txt-area">
										<i class="ico ico-new">new</i>
										<p class="tit txt-center">6월 학평 현명하게 대처하는 법</p>
										<p class="txt txt-center mt5">저자명</p>
									</div>
								</div>
							</a>	
						</li>
						<% Next %>
					</ul>

					<div class="swiper-pagination" style="display:none;"></div>
				</div>
				<!--// E : 칼럼 -->
			</div>

			<div class="wide-layout">
				
				<!-- S : 중간 배너 -->
				<!-- #include virtual="/common/include/inc.subSlide.asp" -->
				<!-- // E : 중간 배너 -->

				<!-- S : 자료실 -->
				<div class="notice-area">
                    <div class="notice-list">
						<a href="javascript:void(0)" class="txt-area">
							<strong class="tit">자료실</strong> 
							<span class="txt txt-ellipsis">[정오표] 2023 이해원 N제 시즌 I [정오표] 2023 이해원 N제 시즌 I [정오표] 2023 이해원 N제 시즌 I [정오표] 2023 이해원 N제 시즌 I</span>
						</a>
                    </div>
					<div class="notice-list">
						<a href="javascript:void(0)" class="txt-area">
							<strong class="tit">공지사항</strong> 
							<span class="txt txt-ellipsis">[정오표] 2023 이해원 N제 시즌 I [정오표] 2023 이해원 N제 시즌 I [정오표] 2023 이해원 N제 시즌 I [정오표] 2023 이해원 N제 시즌 I</span>
						</a>
                    </div>
                </div>
				<!--// E : 자료실 -->
			</div>
		</div>
	</div>
	<!--// E : content -->

<!-- #include virtual="/common/include/inc.footer.asp" -->

<script>

	const mainSwiperViewCnt = $(".banner-slide .swiper-wrapper .swiper-slide").length;
	const mainSwiperPerView = 1;
	const mainSwiperLoopValue = (mainSwiperViewCnt > mainSwiperPerView) ? true : false;

	var mainSwiper = new Swiper(".banner-slide", {
		slidesPerView: mainSwiperPerView,
		speed: 400,
		loop: mainSwiperLoopValue,
		//effect: "fade",
		autoplay: {
			delay: 2500,
			disableOnInteraction: false,
		},
		pagination: {
			el: ".swiper-pagination",
			type: "fraction",
        },
        navigation: {
			nextEl: ".swiper-button-next",
			prevEl: ".swiper-button-prev",
        },
		on: {
			init: function() {
				if(!mainSwiperLoopValue){
					$(".swiper-button-next").remove();
					$(".swiper-button-prev").remove();
				}
			},
		}
	});

	$(".banner-slide").on("mouseover", function () { mainSwiper.autoplay.stop(); });
	$(".banner-slide").on("mouseout", function () { mainSwiper.autoplay.start(); });

</script>
