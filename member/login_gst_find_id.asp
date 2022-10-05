<!--#include virtual="/common/inc/config.asp"-->
<!-- #include virtual="/common/include/inc.meta.asp" -->

<!-- S : 페이지별 css / script -->
<link rel="stylesheet" type="text/css" href="/common/css/inc.member.css?ver=<%= now() %>">
<!--// E : 페이지별 css / script -->

<!-- #include virtual="/common/include/inc.header.asp" -->
	
	<!-- S : content -->
	<div id="content">
		<!-- S : 페이지 헤더 -->
		<div class="content-header">
			<a href="javascript:history.back();" class="ico ico-back">돌아가기</a>
			<h2 class="dep-tit2">주문 비밀번호 찾기</h2>
			<a href="javascript:void(0)" class="ico ico-myinfo">장바구니</a>
		</div>	
		<!--// E : 페이지 헤더 -->

		<!-- S : 페이지 내용 -->
		<div class="content-container">
			<div class="wide-layout">
				<div class="info-area p0">
					<div class="gray-box">
						<ul class="list-dotted">
							<li>최근 6개월 주문번호만 조회 가능합니다.</li>
							<li>구매자 정보를 입력해주세요.</li>
						</ul>
					</div>
				</div>
				<div class="form-area form-area1">
					<dl>
						<dt>주문번호<span class="color-red">*</span></dt>
						<dd>
							<div class="form-type">
								<label class="input-text">
									<input type="text" name="" id="" value="">
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
								<span class="info-txt mb20">주문 시 입력했던 핸드폰 번호를 입력해주세요.</span>
							</div>
						</dd>
					</dl>
				</div>

				<div class="content-area">
					<!-- S : btn-group -->
					<div class="btn-group"> 
						<a href="./login_gst_findout.asp" class="btn btn-black">확인</a>
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