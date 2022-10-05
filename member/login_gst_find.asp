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
			<h2 class="dep-tit2">주문번호 찾기</h2>
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
						<dt>이름<span class="color-red">*</span></dt>
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
	
</script>