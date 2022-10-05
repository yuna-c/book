<!--#include virtual="/common/inc/config.asp"-->
<!-- #include virtual="/common/include/inc.meta.asp" -->

<!-- S : 페이지별 css / script -->
<link rel="stylesheet" type="text/css" href="/common/css/inc..css?ver=<%= now() %>">
<!--// E : 페이지별 css / script -->

<!-- #include virtual="/common/include/inc.header.asp" -->
	
	<!-- S : content -->
	<div id="content">
		<div class="content-container">
			<!-- S : swiper menu -->
			<!-- #include virtual="/common/include/inc.menu.asp" -->
			<!--// E : swiper menu -->

			<div class="content-layout">
				
				<div class="tab-type2">
					<ul>
						<li class="selected">
							<a href="javascript:void(0)">2뎁스 메뉴</a>
						</li>
						<li>
							<a href="javascript:void(0)">2뎁스 메뉴</a>
						</li>
					</ul>
				</div>

				<div class="tab-content tab-on">
					tab-content1
				</div>
				<div class="tab-content">
					tab-content2
				</div>
			</div>
		</div>
	</div>
	<!--// E : content -->

<!-- #include virtual="/common/include/inc.footer.asp" -->

<script>
	$(function(){});
</script>