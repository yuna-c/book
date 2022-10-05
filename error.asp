<!--#include virtual="/common/inc/config.asp"-->
<!-- #include virtual="/common/include/inc.meta.asp" -->

<!-- S : 페이지별 css / script -->
<style>
	#wrap{ height:100%; }
	#footer{ display:none; }
	.top-btn{ display:none; }
</style>
<!--// E : 페이지별 css / script -->

<!-- #include virtual="/common/include/inc.header.asp" -->
	
	<!-- S : content -->
	<div id="content" class="flex-container">
		<!-- S : 페이지 헤더 -->
		<div class="content-header">
			<a href="javascript:history.back();" class="ico ico-back">돌아가기</a>
			<h2 class="dep-tit2">
				<a href="/">
					<i class="ico ico-books">북스로고</i>
				</a>
			</h2>
			<a href="javascript:void(0)" class="ico ico-myinfo">장바구니</a>
		</div>
		<!--// E : 페이지 헤더 -->

		<!-- S : 페이지 내용 -->
		<div class="content-container">
				
			<div class="error-area">
				<i class="ico ico-error"></i>
				<h3 class="tit-dep1">페이지 오류 안내</h3>

				<p class="txt">
					해당 페이지에 오류가 발생 하였습니다.<br>
					홈페이지 이용에 불편을 드려 죄송합니다.<br>
					잠시 후에 이용해 주십시오.
				</p>
			</div>
		
		</div>
		<!--// E : 페이지 내용 -->
	</div>
	<!--// E : content -->

<!-- #include virtual="/common/include/inc.footer.asp" -->

<script>
	$(function(){});
</script>