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
			<h2 class="dep-tit2">로그인</h2>
			<a href="javascript:void(0)" class="ico ico-myinfo">장바구니</a>
		</div>	
		<!--// E : 페이지 헤더 -->

		<!-- S : 페이지 내용 -->
		<div class="content-container">
			<div class="content-layout">
				<div class="info-area">
					<h3 class="tit-dep6">
						이미 여러분은 시대인재입니다.<br>
						<small>로그인을 위해 아이디와 비밀번호를 입력하세요. </small>	
					</h3>
				</div>

				<div class="form-area">
					<ul>
						<li>
							<div class="form-type">
								<label class="input-text">
									<input type="text" class="bottom-none" name="" id="" value="" placeholder="아이디">
								</label>
							</div>
						</li>
						<li class="pb25">
							<div class="form-type">
								<label class="input-text">
									<input type="text" name="" id="" value="" placeholder="비밀번호">
								</label>
							</div>
						</li>
						<li class="mb30">
							<div class="input-area">
								<label class="input-checkbox">
									<input type="checkbox">
									<i class="ico-checkbox"></i>
									<span class="color-gray">아이디 저장</span>
								</label>
							</div>
						</li>
					</ul>
				</div>

				<div class="btn-group col"> 
					<a href="javscript:void(0)" class="btn btn-black">로그인</a>
					<a href="javscript:void(0)" class="btn btn-border-black">회원가입</a>
				</div>

				<div class="find-area">
					<ul>
						<li><a href="javascript:void(0)">아이디 찾기</a></li>
						<li><a href="javascript:void(0)">비밀번호 찾기</a></li>
					</ul>
				</div>
				

				<div class="btn-group col border-top"> 
					<a href="javscript:void(0)" class="btn btn-border-black">비회원 주문조회</a>
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