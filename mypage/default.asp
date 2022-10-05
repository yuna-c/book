<!--#include virtual="/common/inc/config.asp"-->
<!-- #include virtual="/common/include/inc.meta.asp" -->

<!-- S : 페이지별 css / script -->
<link rel="stylesheet" type="text/css" href="/common/css/inc.mypage.css?ver=<%= now() %>">
<!--// E : 페이지별 css / script -->

<!-- #include virtual="/common/include/inc.header.asp" -->
	
	<!-- S : content -->
	<div id="content" class="mypage-content">
		<!-- S : 페이지 헤더 -->
		<div class="content-header">
			<a href="javascript:history.back();" class="ico ico-back">돌아가기</a>
			<h2 class="dep-tit2">마이페이지</h2>
			<a href="javascript:void(0)" class="ico ico-myinfo">장바구니</a>
		</div>	
		<!--// E : 페이지 헤더 -->

		<!-- S : 페이지 내용 -->
		<div class="content-container">
			<div class="wide-layout">
				<div class="info-area">
					<div class="gray-box">
						<div class="sticker-area">
							<!-- <span class="people"><i class="ico ico-people">프로필</i></span> -->
							<p class="tit">김무스비</p>
							<a href="javascript:void(0);" class="sticker sticker-gray">회원정보수정</a>
						</div>
					</div>
				</div>

				<div class="list-type">
					<ul>
						<li>
							<a href="javascript:void(0)">주문내역</a>
						</li>
						<li>
							<a href="javascript:void(0)">1:1 상담</a>
						</li>
					</ul>
				</div>
				<hr class="hr">
				<div class="content-layout">
					<div class="book-list">
						<ul>
							<li>
								<a href="javascript:void(0)">최근 본 도서</a>
							</li>	
							<li>
								<div class="store-list swiper-container swiper-slide-type2">
									<ul class="swiper-wrapper">
										<% For i = 0 To 5 %>
										<li class="swiper-slide">
											<a href="javascript:void(0)" class="new">
												<div class="img-area">
													<span class="bg">
														<img src="https://via.placeholder.com/57x77" alt="book-img">
													</span>
												</div>
											</a>	
										</li>
										<li class="swiper-slide">
											<a href="javascript:void(0)" class="new">
												<div class="img-area">
													<span class="bg">
														<img src="https://via.placeholder.com/57x77" alt="book-img">
													</span>
												</div>
											</a>	
										</li>
										<% Next %>
									</ul>
								</div>
							</li>
						</ul>
					</div>
				</div>
				<hr class="hr">

				<div class="list-type">
					<ul>
						<li>
							<a href="javascript:void(0)">고객센터</a>
						</li>
						<li>
							<a href="javascript:void(0)">로그아웃</a>
						</li>
					</ul>
				</div>
				<hr class="hr">
			</div>
		</div>
		<!--// E : 페이지 내용 -->
	</div>
	<!--// E : content -->

<!-- #include virtual="/common/include/inc.footer.asp" -->

<script>
	$(function(){});
</script>