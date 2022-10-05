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
			<h2 class="dep-tit2">비밀번호 찾기</h2>
			<a href="javascript:void(0)" class="ico ico-myinfo">장바구니</a>
		</div>	
		<!--// E : 페이지 헤더 -->

		<!-- S : 페이지 내용 -->
		<div class="content-container">
			<div class="content-layout">
				<div class="info-area">
					<h3 class="tit-dep6">
						비밀번호를 잊으셨나요?<br>
						<small>회원가입 시 입력한 휴대폰 번호로 인증을 받으시면, 비밀번호를 새롭게 설정할 수 있습니다.</small>
					</h3>
				</div>

				<div class="form-area">
					<dl>
						<dt>휴대폰번호<span class="color-red">*</span></dt>
						<dd>
							<div class="form-type">
								<div class="row disabled border-none">
									<span class="col-35">
										<label class="select">
											<select name="" id="" disabled>
												<option value="선택">선택</option>
												<option value="010">010</option>
												<option value="011">011</option>
												<option value="016">016</option>
												<option value="017">017</option>
												<option value="018">018</option>
												<option value="019">019</option>
											</select>
										</label>
									</span>
									<span class="col-60">
										<label class="input-text">
											<input type="text" name="" id="" value="" placeholder="0000" maxlength="4" readonly>
										</label>
										<span>-</span>
										<label class="input-text">
											<input type="text" name="" id="" value="" placeholder="0000" maxlength="4" readonly>
										</label>
									</span>
								</div>
								<div class="row border-none">
									<% If True Then '인증번호 받을 때%>
									<a href="javascript:void(0);" class="btn btn-border-black">인증번호받기</a>
									<% Else '인증번호 재전송일 때%>
									<a href="javascript:void(0);" class="btn btn-border-black">인증번호재전송</a>
									<% End If %>
								</div>
								<div class="row">
									<div class="form-type">
										<label class="input-text">
											<input type="text" name="" id="" value="">
											<span class="time">00:00</span>
											<button type="button" class="btn btn-search color-black">확인</button>
										</label>
									</div>
								</div>
							</div>
						</dd>
						<dt>새비밀번호<span class="color-red">*</span></dt>
						<dd>
							<div class="form-type">
								<label class="input-text">
									<input type="password" name="" id="" value="" placeholder="새비밀번호">
								</label>
							</div>
							<span class="info-txt mt10">8자 이상의 영문, 숫자, 특수문자 중 2가지 조합</span>
						</dd>
						<dt>새비밀번호 확인<span class="color-red">*</span></dt>
						<dd>
							<div class="form-type">
								<label class="input-text">
									<input type="password" name="" id="" value="" placeholder="새비밀번호 확인">
								</label>
							</div>
						</dd>
					</dl>
				</div>

				<div class="btn-group col mb25"> 
					<a href="javascript:void(0)" class="btn btn-black">확인</a>
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