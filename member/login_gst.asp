<!--#include virtual="/common/inc/config.asp"-->
<!-- #include virtual="/common/include/inc.meta.asp" -->

<!-- S : 페이지별 css / script -->
<link rel="stylesheet" type="text/css" href="/common/css/inc.member.css?ver=<%= now() %>">
<!--// E : 페이지별 css / script -->

<!-- #include virtual="/common/include/inc.header.asp" -->
	
	<!-- S : content -->
	<div id="content" class="geust-content">
		<!-- S : 페이지 헤더 -->
		<div class="content-header">
			<a href="javascript:history.back();" class="ico ico-back">돌아가기</a>
			<h2 class="dep-tit2">비회원 주문 조회</h2>
			<a href="javascript:void(0)" class="ico ico-myinfo">장바구니</a>
		</div>	
		<!--// E : 페이지 헤더 -->

		<!-- S : 페이지 내용 -->
		<div class="content-container">
			<div class="wide-layout">
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
						<dt>비밀번호<span class="color-red">*</span></dt>
						<dd>
							<div class="form-type">
								<label class="input-text">
									<input type="text" name="" id="" value="" placeholder="비밀번호 입력">
								</label>
							</div>
						</dd>
					</dl>
				</div>

				<div class="content-area pb0">
					<!-- S : btn-group -->
					<div class="btn-group"> 
						<a href="javascript:void(0)" class="btn btn-black">확인</a>
					</div>
					<!--// E : btn-group -->
				</div>

				<div class="info-area">
					<a href="/yuna/member/login_gst_find_id.asp" class="txt-underline">주문 비밀번호가 기억나지 않을 경우</a>
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