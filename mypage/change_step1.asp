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
			<h2 class="dep-tit2">회원정보 수정</h2>
			<a href="javascript:void(0)" class="ico ico-myinfo">장바구니</a>
		</div>	
		<!--// E : 페이지 헤더 -->

		<!-- S : 페이지 내용 -->
		<div class="content-container">
			<div class="content-layout">
				<div class="info-area">
					<h3 class="tit-dep6">
						비밀번호 재확인<br>
						<small>회원님의 정보를 안전하게 보호하기 위해<br> 비밀번호를 다시 한 번 확인해주세요.</small>	
					</h3>
				</div>

				<div class="form-area">
					<dl>
						<dt>아이디</dt>
						<dd>
							<div class="form-type">
								<label class="input-text">
									<input type="text" name="" id="" value="" placeholder="sdij2022" disabled>
								</label>
							</div>
						</dd>
						<dt>비밀번호</dt>
						<dd>
							<div class="form-type">
								<label class="input-text">
									<input type="password" name="" id="" value="" placeholder="현재 비밀번호 입력">
								</label>
							</div>
						</dd>
					</dl>
				</div>

				<div class="btn-group col"> 
					<a href="javascript:void(0)" class="btn btn-black">확인</a>
				</div>

				<div class="info-area pt0 txt-right">
					<a href="./findPassword.asp" class="txt-underline">비밀번호 찾기</a>
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