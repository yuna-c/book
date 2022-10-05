<!--#include virtual="/common/inc/config.asp"-->
<!-- #include virtual="/common/include/inc.meta.asp" -->

<!-- S : 페이지별 css / script -->
<link rel="stylesheet" type="text/css" href="/common/css/inc.board.css?ver=<%= now() %>">
<!--// E : 페이지별 css / script -->

<!-- #include virtual="/common/include/inc.header.asp" -->
	
	<!-- S : content -->
	<div id="content" class="notice-content">
		
		<!-- S : 페이지 메뉴 -->
		<div class="tab-menu swiper-container swiper-slide-type2">
			<ul class="swiper-wrapper">
				<li class="swiper-slide selected"><a href="javascript:void(0)">주문/결제</a></li>
				<li class="swiper-slide"><a href="javascript:void(0)">취소/환불</a></li>
				<li class="swiper-slide"><a href="javascript:void(0)">사이트</a></li>
				<li class="swiper-slide"><a href="javascript:void(0)">배송</a></li>
				<li class="swiper-slide"><a href="javascript:void(0)">회원정보</a></li>
			</ul>
		</div>
		<!--// E : 페이지 메뉴 -->

		<!-- S : 페이지 헤더 -->
		<div class="content-header">
			<a href="javascript:history.back();" class="ico ico-back">돌아가기</a>
			<h2 class="dep-tit2">FAQ</h2>
			<a href="javascript:void(0)" class="ico ico-myinfo">장바구니</a>
		</div>	
		<!--// E : 페이지 헤더 -->

		<!-- S : 페이지 내용 -->
		<div class="content-container">
				
				<div class="info-area p0">
					<div class="gray-box">
						<ul class="list-dotted">
							<li>자주 묻는 질문과 답변을 모았습니다.</li> 
							<li>1:1 상담 요청 전, 유사 질문의 답변을 확인하면 보다 빠르게 궁금증을 해결할 수 있습니다.</li>
						</ul>
					</div>
				</div>
				
				<% If true Then '공지사항 있을 때 %>
				<div class="notice-area mt0">
					<dl class="list-toggle">
						<% For i = 1 to 10 %>
						<dt>
							<a href="javascript:void(0)">
								<p class="txt">
									<span>결제/취소</span>
									<span>결제방법</span>
								</p>
								<p class="tit">
									휴대폰 결제방법 알려주세요.휴대폰 결제방법 알려주세요.휴대폰 결제방법 알려주세요.휴대폰 결제방법 알려주세요.휴대폰 결제방법 알려주세요.휴대폰 결제방법 알려주세요.휴대폰 결제방법 알려주세요.휴대폰 결제방법 알려주세요.휴대폰 결제방법 알려주세요.휴대폰 결제방법 알려주세요.
								</p>	
							</a>
						</dt>
						<dd>
							<div class="txt-area">
								안녕하세요.<br><br>

								시대인재북스를 이용해주시는 고객님들께 깊은 감사의 말씀 드립니다.<br><br>
								설 연휴로 인하여 고객님들께서 주문하신 상품의 배송업무에 대해 아래와 같이 알려드리니 이용하시는 데 확인 부탁 드리겠습니다.설 연휴로 인하여 고객님들께서 주문하신 상품의 배송업무에 대해 아래와 같이 알려드리니 이용하시는 데 확인 부탁 드리겠습니다.설 연휴로 인하여 고객님들께서 주문하신 상품의 배송업무에 대해 아래와 같이 알려드리니 이용하시는 데 확인 부탁 드리겠습니다.설 연휴로 인하여 고객님들께서 주문하신 상품의 배송업무에 대해 아래와 같이 알려드리니 이용하시는 데 확인 부탁 드리겠습니다.설 연휴로 인하여 고객님들께서 주문하신 상품의 배송업무에 대해 아래와 같이 알려드리니 이용하시는 데 확인 부탁 드리겠습니다.<br>

								공지 내용이 보여집니다.<br> 

								<div class="file-area">
									<a href="javascript:void(0)" class="btn"><i class="ico-file">ico-file</i>SD 모의평가 FINAL 1회 듣기파일.zip</a>
								</div>
							</div>
						</dd>
						<% Next %>
					</dl>
				</div>
		
				<div class="btn-group p25">
					<button type="button" class="btn btn-border">더 보기 +</button>
				</div>

				<% Else '공지사항 없을 때 %>
				<div class="no-data">
					<p class="tit">등록된 게시글이 없습니다.</p>	
				</div>
				<% End if%>
			</div>
		</div>
		<!--// E : 페이지 내용 -->
	</div>
	<!--// E : content -->

<!-- #include virtual="/common/include/inc.footer.asp" -->

<script>
	$(function(){});

	function delInputVal(i){
        $(i).parents().children().find("input").val("");
    }
	function delInput(i){
        //$(i).parents().children().find(".on").remove();
		$(i).parents().children().find(".input-search").next().children().css({"display":"none"});
    }
</script>