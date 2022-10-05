<!--#include virtual="/common/inc/config.asp"-->
<!-- #include virtual="/common/include/inc.meta.asp" -->

<!-- S : 페이지별 css / script -->
<link rel="stylesheet" type="text/css" href="/common/css/inc.board.css?ver=<%= now() %>">
<!--// E : 페이지별 css / script -->

<!-- #include virtual="/common/include/inc.header.asp" -->
	
	<!-- S : content -->
	<div id="content" class="notice-content">
		<!-- S : 페이지 헤더 -->
		<div class="content-header">
			<a href="javascript:history.back();" class="ico ico-back">돌아가기</a>
			<h2 class="dep-tit2">공지사항</h2>
			<a href="javascript:void(0)" class="ico ico-myinfo">장바구니</a>
		</div>	
		<!--// E : 페이지 헤더 -->

		<!-- S : 페이지 내용 -->
		<div class="content-container">
				
				<div class="content-layout pt30">
					<div class="search-area">
						<div class="search-form">
							<label class="input-search on">
								<input type="text" id="" name="" value="" placeholder="검색어를 입력하세요." required="">
							</label>
							<button type="button" class="btn del" onclick="delInputVal(this)">
								<span class="ico ico-del" onclick="delInput(this)">삭제</span>
							</button>
							<button type="button" class="btn">
								<i class="ico ico-search">검색</i>
							</button>
						</div>
					</div>
				</div>
				
				<% If true Then '공지사항 있을 때 %>
				<div class="notice-area">
					<dl class="list-toggle">
						<dt>
							<a href="javascript:void(0)">
								<i class="ico ico-exclamation">공지</i>
								<strong>[공지] 북스 설연휴 배송 안내</strong>
								<p class="txt-info">2022-01-20</p>
							</a>
						</dt>
						<dd>
							<div class="txt-area">
								안녕하세요.<br><br>

								시대인재북스를 이용해주시는 고객님들께 깊은 감사의 말씀 드립니다.<br><br>
								설 연휴로 인하여 고객님들께서 주문하신 상품의 배송업무에 대해 아래와 같이 알려드리니 이용하시는 데 확인 부탁 드리겠습니다.설 연휴로 인하여 고객님들께서 주문하신 상품의 배송업무에 대해 아래와 같이 알려드리니 이용하시는 데 확인 부탁 드리겠습니다.설 연휴로 인하여 고객님들께서 주문하신 상품의 배송업무에 대해 아래와 같이 알려드리니 이용하시는 데 확인 부탁 드리겠습니다.설 연휴로 인하여 고객님들께서 주문하신 상품의 배송업무에 대해 아래와 같이 알려드리니 이용하시는 데 확인 부탁 드리겠습니다.설 연휴로 인하여 고객님들께서 주문하신 상품의 배송업무에 대해 아래와 같이 알려드리니 이용하시는 데 확인 부탁 드리겠습니다.<br>

								공지 내용이 보여집니다.<br> 

								<div class="file-area">
									<a href="javascript:void(0)" class="btn"><i class="ico-hwp">ico-hwp</i>SD 모의평가 FINAL 1회 듣기파일 SD 모의평가 FINAL 1회 듣기파일 SD 모의평가 FINAL 1회 듣기파일SD 모의평가 FINAL 1회 듣기파일SD 모의평가 FINAL 1회 듣기파일</a>
									<a href="javascript:void(0)" class="btn"><i class="ico-pdf">ico-pdf</i>SD 모의평가 FINAL 1회 듣기파일SD 모의평가 FINAL 1회 듣기파일.pdf</a>
									<a href="javascript:void(0)" class="btn"><i class="ico-zip">ico-zip</i>SD 모의평가 FINAL 1회 듣기파일.zip</a>
									<a href="javascript:void(0)" class="btn"><i class="ico-word">ico-word</i>SD 모의평가 FINAL 1회 듣기파일.zip</a>
									<a href="javascript:void(0)" class="btn"><i class="ico-file">ico-file</i>SD 모의평가 FINAL 1회 듣기파일.zip</a>
								</div>
							</div>
						</dd>
						<% For i = 1 to 10 %>
						<dt>
							<a href="javascript:void(0)">
								<p class="tit">[공지] 북스 설연휴 배송 안내 북스 설연휴 배송 안내 북스 설연휴 배송 안내 북스 설연휴 배송 안내 북스 설연휴 배송 안내 북스 설연휴 배송 안내 북스 설연휴 배송 안내 북스 설연휴 배송 안내 북스 설연휴 배송 안내</p>
								<p class="txt-info">2022-01-20</p>
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