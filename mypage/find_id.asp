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
			<div class="content-layout">
				<div class="info-area">
					<h3 class="tit-dep6">
						아이디를 잊으셨나요?<br>
						<small>회원정보 상의 이름, 휴대폰번호로<br> 아이디를 찾을 수 있습니다.</small>	
					</h3>
				</div>

				<div class="form-area">
					<dl>
						<dt>이름<span class="color-red">*</span></dt>
						<dd>
							<div class="form-type">
								<label class="input-text">
									<input type="text" name="" id="" value="" placeholder="이름">
								</label>
							</div>
						</dd>
						<dt>휴대폰번호<span class="color-red">*</span></dt>
						<dd>
							<div class="form-type">
								<div class="row">
									<span class="col-35">
										<label class="select">
											<select name="" id="">
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
											<input type="text" name="" id="" value="" placeholder="0000" maxlength="4">
										</label>
										<span>-</span>
										<label class="input-text">
											<input type="text" name="" id="" value="" placeholder="0000" maxlength="4">
										</label> 
									</span>
								</div>
							</div>
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

	// 이메일 select
	$('#fnSelectEmail').change(function(){
		$('#fnSelectEmail option:selected').each(function() {
			if($(this).val() == '1') {
				$('#fnMemEmail2').val('');                      // 값초기화
				$('#fnMemEmail2').attr("readonly", false);      // 활성화
			} else {
				$('#fnMemEmail2').val($(this).val());           // 선택 값 입력
				//$('#fnMemEmail2').attr("disabled", true);     // 비활성화
				$('#fnMemEmail2').attr("readonly", true);       // 비활성화
			}
		});
	});
</script>