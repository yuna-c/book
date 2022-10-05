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
						아이디 전체 정보를 받을 방법을 선택하세요. 
						회원가입 시 등록한 휴대폰 또는 이메일로 아이디 전체 
						정보를 발송 해 드립니다. 
					</h3>
				</div>
			</div>

			<div class="content-layout">
				<div class="form-area">
					<dl>
						<dt>
							<label class="input-radio">
								<input type="radio" checked>
								<i class="ico-radio"></i>
								<span>휴대폰으로 받기</span>
							</label>
						</dt>
						<dd>
							<div class="form-type">
								<label class="input-text">
									<input type="text" name="" id="" value="" placeholder="0102506****" disabled>
								</label>
							</div>
						</dd>
						<dt>
							<label class="input-radio">
								<input type="radio">
								<i class="ico-radio"></i>
								<span>이메일로 받기</span>
							</label>
						</dt>
						<dd>
							<div class="form-type">
								<label class="input-text">
									<input type="text" name="" id="" value="" placeholder="sdi****@sdij.com" disabled>
								</label>
							</div>
							<span class="info-txt mt10">개인정보 보호를 위해 휴대폰번호, 이메일의 뒷자리를 ****으로 표시합니다.</span>
						</dd>
					</dl>
				</div>


				<div class="btn-group col"> 
					<a href="javascript:void(0)" class="btn btn-black">확인</a>
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