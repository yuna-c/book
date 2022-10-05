<!--#include virtual="/common/inc/config.asp"-->
<!-- #include virtual="/common/include/inc.meta.asp" -->

<!-- S : 페이지별 css / script -->
<link rel="stylesheet" type="text/css" href="/common/css/inc.board.css?ver=<%= now() %>">
<!--// E : 페이지별 css / script -->

<!-- #include virtual="/common/include/inc.header.asp" -->
	
	<!-- S : content -->
	<div id="content" class="notice-content">
		<!-- S : 페이지 헤더 -->
		<div class="content-header">
			<a href="javascript:history.back();" class="ico ico-back">돌아가기</a>
			<h2 class="dep-tit2">고객센터</h2>
			<a href="javascript:void(0)" class="ico ico-myinfo">장바구니</a>
		</div>	
		<!--// E : 페이지 헤더 -->

		<!-- S : 페이지 내용 -->
		<div class="content-container">
			<div class="wide-layout">
				<div class="content-layout bg">
					<div class="img-area">
						<i class="ico ico-customers">고객센터</i>	
					</div>
					<div class="txt-area">
						<a class="tit-dep1" href="tel:1522-0568">1522-0568</a>
						<p class="txt-info">평일 AM 10:00 ~ PM 6:00</p>
					</div>
					<div class="btn-area">
						<a class="btn btn-white" href="javascript:void(0)">1:1 상담하기</a>	
					</div>
				</div>

				<div class="content-layout pt30">
					<h3 class="tit-dep6">FAQ</h3>
					
					<div class="board-tab">
						<div class="tab-list1">
							<a href="javascript:void(0)" class="selected">주문/결제</a>
							<a href="javascript:void(0)">취소/환불</a>
							<a href="javascript:void(0)">사이트</a>
							<a href="javascript:void(0)">배송</a>
							<a href="javascript:void(0)">회원정보</a>
						</div> 
					</div>
				</div>

				<hr class="hr">

				<div class="notice-area mb40">
					<h4 class="tit-dep6">
						<a href="javascript:void(0)">공지사항</a>
					</h4>

					<ul class="notice-list">
						<li>
							<a href="javascript:void(0)">
								<i class="ico ico-exclamation">공지</i>
								<strong>[공지] 북스 설연휴 배송 안내</strong>
								<p class="txt-info">2022-01-20</p>
							</a>
						</li>
						<% For i = 1 to 5 %>
						<li>
							<a href="javascript:void(0)">
								<p class="tit">[공지] 북스 설연휴 배송 안내 [공지] 북스 설연휴 배송 안내 [공지] 북스 설연휴 배송 안내 [공지] 북스 설연휴 배송 안내 [공지] 북스 설연휴 배송 안내 [공지] 북스 설연휴 배송 안내</p>
								<p class="txt-info">2022-01-20</p>
							</a>
						</li>
						<% Next %>
					</ul>
				</div>
			</div>
		</div>
		<!--// E : 페이지 내용 -->
	</div>
	<!--// E : content -->

<!-- #include virtual="/common/include/inc.footer.asp" -->

<script>
	$(function(){});
</script>