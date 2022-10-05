<!--#include virtual="/common/inc/config.asp"-->
<!-- #include virtual="/common/include/inc.meta.asp" -->

<!-- S : 페이지별 css / script -->
<link rel="stylesheet" type="text/css" href="/common/css/inc.writer.css?ver=<%= now() %>">
<!--// E : 페이지별 css / script -->

<!-- #include virtual="/common/include/inc.header.asp" -->

    <!-- S : content -->
	<div id="content" class="writer-content">
		<div class="content-container">
			<!-- S : swiper menu -->
			<!-- #include virtual="/common/include/inc.menu.asp" -->
			<!--// E : swiper menu -->

			<!-- S : swiper menu -->
			<!-- include virtual="/yuna/inc.submenu.asp" -->
			<div class="tab-sub swiper-container swiper-slide-type2">
				<ul class="swiper-wrapper">
					<li class="swiper-slide selected"><a href="javascript:void(0)">국어</a></li>
					<li class="swiper-slide"><a href="javascript:void(0)">수학</a></li>
					<li class="swiper-slide"><a href="javascript:void(0)">영어</a></li>
					<li class="swiper-slide"><a href="javascript:void(0)">한국사</a></li>
					<li class="swiper-slide"><a href="javascript:void(0)">사회</a></li>
					<li class="swiper-slide"><a href="javascript:void(0)">과학</a></li>
					<li class="swiper-slide"><a href="javascript:void(0)">대학별고사</a></li>
				</ul>
			</div>
			<!--// E : swiper menu -->

			<div class="content-layout mt30 mb80">
				<div class="list-item">
					<ul>
						<%
							For i=0 To 10
						%>
						<li>
							<a href="./detail.asp">
								<div class="circle-area">
									<% If true Then '이미지일 경우%>
										<img src="https://via.placeholder.com/60x60" alt="강사 프로필" title="강사 프로필">
									<% Else '텍스트일 경우%>
										<p class="name">정</p>
									<% End if%>
								</div>
								<div class="txt-area">
									<p class="tit">이해원이해원이해원이해원이해원이해원이해원</p>
									<p class="txt">판매중도서&nbsp;<span class="fw600">13</span> 판매중도서&nbsp;<span class="fw600">13</span> 판매중도서&nbsp;<span class="fw600">13</span></p>
								</div>
							</a>
						</li>
						<li>
							<a href="./detail.asp">
								<div class="circle-area">
									<% If false Then '이미지일 경우%>
										<img src="https://via.placeholder.com/60x60" alt="강사 프로필">
									<% Else '텍스트일 경우%>
										<p class="name">정</p>
									<% End if%>
								</div>
								<div class="txt-area">
									<p class="tit">정승준</p>
									<p class="txt">판매중도서&nbsp;<span class="fw600">13</span></p>
								</div>
							</a>
						</li>
						<%
							Next
						%>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<!--// E : content -->

<!-- #include virtual="/common/include/inc.footer.asp" -->

<script>
	$(function(){});
</script>