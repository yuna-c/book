<!--#include virtual="/common/inc/config.asp"-->
<!-- #include virtual="/common/include/inc.meta.asp" -->

<!-- S : 페이지별 css / script -->
<link rel="stylesheet" type="text/css" href="/common/css/inc.mypage.css?ver=<%= now() %>">
<!--// E : 페이지별 css / script -->

<!-- #include virtual="/common/include/inc.header.asp" -->
	
	<!-- S : content -->
	<div id="content" class="login-content">
		<!-- S : 페이지 헤더 -->
		<div class="content-header">
			<a href="javascript:history.back();" class="ico ico-back">돌아가기</a>
			<h2 class="dep-tit2">아이디찾기</h2>
			<a href="javascript:void(0)" class="ico ico-myinfo">장바구니</a>
		</div>	
		<!--// E : 페이지 헤더 -->

		<!-- S : 페이지 내용 -->
		<div class="content-container">
			<div class="wide-layout">
				<div class="gray-box">
					<h3 class="tit fw400">
						입력하신 정보와 일치하는 아이디는<br>
						<span class="color-red">sdi****</span>입니다.<br>
					</h3>
				</div>
				<div class="info-area p25">
					<p class="info">
						개인정보 보호를 위해 아이디는 앞의 4자리만 공개되며, 총 8자리로만 표시됩니다. 
						실제 아이디와 글자 수는 다를 수 있습니다. 
					</h3>
				</div>

			</div>

			<div class="content-layout">
				<div class="btn-group col"> 
					<a href="/yuna/mypage/findout_all_id.asp" class="btn btn-black">아이디 전체 확인</a>
				</div>

				<div class="find-area">
					<ul>
						<li><a href="javascript:void(0)">비밀번호 찾기</a></li>
						<li><a href="javascript:void(0)">로그인</a></li>
						<li><a href="javascript:void(0)">회원가입</a></li>
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