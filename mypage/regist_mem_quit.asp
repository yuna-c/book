<!--#include virtual="/common/inc/config.asp"-->
<!-- #include virtual="/common/include/inc.meta.asp" -->

<!-- S : 페이지별 css / script -->
<link rel="stylesheet" type="text/css" href="/common/css/inc.mypage.css?ver=<%= now() %>">
<!--// E : 페이지별 css / script -->

<!-- #include virtual="/common/include/inc.header.asp" -->
	
	<!-- S : content -->
	<div id="content" class="quit-content">
		<!-- S : 페이지 헤더 -->
		<div class="content-header">
			<a href="javascript:history.back();" class="ico ico-back">돌아가기</a>
			<h2 class="dep-tit2">회원탈퇴</h2>
			<a href="javascript:void(0)" class="ico ico-myinfo">장바구니</a>
		</div>	
		<!--// E : 페이지 헤더 -->

		<!-- S : 페이지 내용 -->
		<div class="content-container">
			<div class="wide-layout">
				<div class="gray-box">
					<h3 class="tit fw400">
						<span class="color-red">김무스비 회원님은 2022-06-06</span> 부터<br>
						시대인재와 함께하고 계시며,<br>
						다음과 같은 탈퇴 조건을<br>
						확인해주시기 바랍니다.<br>
					</h3>
				</div>

				<div class="content-layout pt25">
					<h4 class="tit-dep6">탈퇴조건</h4>

					<div class="info-area">
						<p class="tit">이용한 서비스 전체 내역</p>
						<ul class="list-dotted">
							<li>회원 탈퇴 후 복구 불가</li>
						</ul>
						<p class="tit">결제 정보</p>
						<ul class="list-dotted">
							<li>전자상거래 법 제6조 제3항에서 정한 일정 기간 동안 보존</li>
						</ul>
						<p class="tit">최근 구매한 교재가 있는 경우</p>
						<ul class="list-dotted">
							<li> 교환/환불 기간인 7일 이후부터 탈퇴 가능 </li>
						</ul>
					</div>
					
					<div class="privacy-area pt25">
						<ul class="list-dotted">
							<li>
								회원 탈퇴 후 임의 해지 및 재가입 방지를 목적으로 1년간 회원의 성명, 휴대폰번호, 아이디, 비밀번호, 이메일 등의 식별 정보를 보관합니다.<br>회원 탈퇴 시 개인정보는 개인정보취급방침에 따라 처리됩니다.<br>
								<a href="javascript:void(0)" class="txt-underline">개인정보취급방침</a>
							</li>  
							<li>회원 탈퇴 후 재가입 시에는 기존에 사용했던 아이디로는 재가입이 불가능합니다.</li>
							<li>회원 탈퇴 즉시 회원 정보에 등록된 이메일로 탈퇴 완료 메일이 발송됩니다. </li>
						</ul>
					</div>

					<div class="quit-area mt40">
						<h4 class="tit-dep6 border-none">회원 탈퇴 사유</h4>

						<div class="form-type">
							<div class="textarea">
								<textarea name="" id="" placeholder="탈퇴하고자 하는 이유를 남겨주세요." style="height:150px;"></textarea>
								<span class="count"><span class="num">0</span>/<span class="total">000</span></span>
							</div>
						</div>

						<div class="input-area">
							<label class="input-checkbox">
								<input type="checkbox">
								<i class="ico-checkbox"></i>
								<p>회원 탈퇴 안내를 모두 확인하였으며 시대인재 회원 탈퇴에 동의합니다.</p>
							</label>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--// E : 페이지 내용 -->
		
		<!-- S : 페이지 버튼 -->
		<div class="content-area">
			<div class="btn-group"> 
				<a href="javascript:void(0);" class="btn btn-black">회원탈퇴</a>
			</div>
		</div>
		<!--// E : 페이지 버튼 -->
	</div>
	<!--// E : content -->
		 

<!-- #include virtual="/common/include/inc.footer.asp" -->

<script>
	$(function(){});

</script>