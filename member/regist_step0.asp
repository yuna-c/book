<!--#include virtual="/common/inc/config.asp"-->
<!-- #include virtual="/common/include/inc.meta.asp" -->

<!-- S : 페이지별 css / script -->
<link rel="stylesheet" type="text/css" href="/common/css/inc.regist.css?ver=<%= now() %>">
<!--// E : 페이지별 css / script -->

<!-- #include virtual="/common/include/inc.header.asp" -->
	
	<!-- S : content -->
	<div id="content" class="regist-content">
		<!-- S : 페이지 헤더 -->
		<div class="content-header">
			<a href="javascript:history.back();" class="ico ico-back">돌아가기</a>
			<h2 class="dep-tit2">시대인재 통합 회원가입</h2>
			<a href="javascript:void(0)" class="ico ico-myinfo">장바구니</a>
		</div>	
		<!--// E : 페이지 헤더 -->

		<!-- S : 페이지 내용 -->
		<div class="content-container">
			<div class="wide-layout">
				<div class="content-layout">
					<div class="info-area">
						<h3 class="tit-dep6">
							시대인재 통합 회원가입<br>
							<small>회원이 되시면 하나의 ID와 비밀번호로 시대인재 및 시대인재북스 사이트를 모두 이용하실 수 있습니다.</small>	
						</h3>
						<a href="javascript:void(0)" class="txt-underline">시대인재 가입 여부 확인</a>
					</div>

					<div class="btn-group col"> 
						<a href="./regist_step1.asp" class="btn btn-black">시대인재 회원가입</a>
						<!-- <a href="javascript:void(0)" class="btn btn-border-black">시대인재 가입 여부 확인</a> -->
					</div>
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