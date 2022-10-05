<!--#include virtual="/common/inc/config.asp"-->
<!-- #include virtual="/common/include/inc.meta.asp" -->

<!-- S : 페이지별 css / script -->
<link rel="stylesheet" type="text/css" href="/common/css/inc.member.css?ver=<%= now() %>">
<!--// E : 페이지별 css / script -->

<!-- #include virtual="/common/include/inc.header.asp" -->
	
	<!-- S : content -->
	<div id="content" class="guest-container">
		<!-- S : 페이지 헤더 -->
		<div class="content-header">
			<a href="javascript:history.back();" class="ico ico-back">돌아가기</a>
			<h2 class="dep-tit2">주문번호 찾기</h2>
			<a href="javascript:void(0)" class="ico ico-myinfo">장바구니</a>
		</div>	
		<!--// E : 페이지 헤더 -->

		<!-- S : 페이지 내용 -->
		<div class="content-container">
			<div class="wide-layout">
				<div class="info-area p0">
					<div class="gray-box p40">
						<p class="txt mt5">
							홍구리님의 시대인재북스 주문번호
						</p>
						<h3 class="tit fw700">
							<span class="color-red">20210913110606024684</span>
						</h3>
						
						
					</div>
				</div>
				
				<div class="content-area">
					<!-- S : btn-group -->
					<div class="btn-group"> 
						<a href="./login_gst_find_id.asp" class="btn btn-black">주문 비밀번호 찾기</a>
					</div>
					<!--// E : btn-group -->
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