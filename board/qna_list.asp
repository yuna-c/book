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
			<h2 class="dep-tit2">1:1 상담</h2>
			<a href="javascript:void(0)" class="ico ico-myinfo">장바구니</a>
		</div>	
		<!--// E : 페이지 헤더 -->

		<!-- S : 페이지 내용 -->
		<div class="content-container">
				
				<div class="info-area p0">
					<div class="gray-box pb15">
						<p class="info-txt txt-left">사이트 이용, 상품, 건의 및 제안 글을 작성 해주세요.<br> 
							저희는 항상 시대의 인재의 소리에 귀 기울이고 있습니다. 
						</p>
					</div>
				</div>
				
				<div class="content-layout">
					<div class="btn-group mb15">
						<a href="javascript:void(0)" class="btn btn-border-black">1:1 상담하기</a>
					</div>

					<div class="search-area">
						<div class="search-form mb15">
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
				<div class="notice-area mt0">
					<dl class="list-toggle">
						<% For i = 1 to 5 %>
						<!-- S : 답변 대기 -->
						<dt>
							<a href="javascript:void(0)">
								<p class="txt">
									<span>결제/취소</span>
									<span>결제방법</span>
								</p>
								<div class="float-area">
									<p class="txt-overflow fl">
										휴대폰 결제방법 알려주세요.휴대폰 결제방법 알려주세요.
									</p>	
									<p class="fr sticker sticker-red">답변 대기</p>
								</div>
								<div class="txt">
									<p class="color-gray">2022-01-20</p>
								</div>
							</a>
						</dt>
						<dd>
							<div class="txt-area">
								<div class="float-area mb10">
									<h5 class="tit-dep4 fl">질문.</h5>
									<a href="javascript:void(0)" class="fr txt-underline">수정</a>
								</div>
								
								안녕하세요.<br><br>

								시대인재북스를 이용해주시는 고객님들께 깊은 감사의 말씀 드립니다.<br><br>
								설 연휴로 인하여 고객님들께서 주문하신 상품의 배송업무에 대해 아래와 같이 알려드리니 이용하시는 데 확인 부탁 드리겠습니다.설 연휴로 인하여 고객님들께서 주문하신 상품의 배송업무에 대해 아래와 같이 알려드리니 이용하시는 데 확인 부탁 드리겠습니다.설 연휴로 인하여 고객님들께서 주문하신 상품의 배송업무에 대해 아래와 같이 알려드리니 이용하시는 데 확인 부탁 드리겠습니다.설 연휴로 인하여 고객님들께서 주문하신 상품의 배송업무에 대해 아래와 같이 알려드리니 이용하시는 데 확인 부탁 드리겠습니다.설 연휴로 인하여 고객님들께서 주문하신 상품의 배송업무에 대해 아래와 같이 알려드리니 이용하시는 데 확인 부탁 드리겠습니다.<br>

								공지 내용이 보여집니다.<br> 

								<div class="file-area">
									<a href="javascript:void(0)" class="btn"><i class="ico-pdf">ico-pdf</i>SD 모의평가 FINAL 1회 듣기파일SD 모의평가 FINAL 1회 듣기파일.pdf</a>
								</div>
							</div>
						</dd>
						<!--// E : 답변 대기 -->

						<!-- S : 답변 완료 -->
						<dt>
							<a href="javascript:void(0)">
								<p class="txt">
									<span>결제/취소</span>
									<span>결제방법</span>
								</p>
								<div class="float-area">
									<p class="txt-overflow fl">
										휴대폰 결제방법 알려주세요.휴대폰 결제방법 알려주세요.휴대폰 결제방법 알려주세요.휴대폰 결제방법 알려주세요.휴대폰 결제방법 알려주세요.휴대폰 결제방법 알려주세요.휴대폰 결제방법 알려주세요.휴대폰 결제방법 알려주세요.휴대폰 결제방법 알려주세요.휴대폰 결제방법 알려주세요.
									</p>	
									<p class="fr sticker sticker-gray">답변 완료</p>
								</div>
								<div class="txt">
									<p class="color-gray">2022-01-20</p>
								</div>
							</a>
						</dt>
						<dd>
							<div class="txt-area">
								<div class="float-area mb10">
									<h5 class="tit-dep4 fl">질문.</h5>
									<a href="javascript:void(0)" class="fr txt-underline">수정</a>
								</div>
								
								안녕하세요.<br><br>

								시대인재북스를 이용해주시는 고객님들께 깊은 감사의 말씀 드립니다.<br><br>
								설 연휴로 인하여 고객님들께서 주문하신 상품의 배송업무에 대해 아래와 같이 알려드리니 이용하시는 데 확인 부탁 드리겠습니다.설 연휴로 인하여 고객님들께서 주문하신 상품의 배송업무에 대해 아래와 같이 알려드리니 이용하시는 데 확인 부탁 드리겠습니다.설 연휴로 인하여 고객님들께서 주문하신 상품의 배송업무에 대해 아래와 같이 알려드리니 이용하시는 데 확인 부탁 드리겠습니다.설 연휴로 인하여 고객님들께서 주문하신 상품의 배송업무에 대해 아래와 같이 알려드리니 이용하시는 데 확인 부탁 드리겠습니다.설 연휴로 인하여 고객님들께서 주문하신 상품의 배송업무에 대해 아래와 같이 알려드리니 이용하시는 데 확인 부탁 드리겠습니다.<br>

								공지 내용이 보여집니다.<br> 

								<div class="file-area">
									<a href="javascript:void(0)" class="btn"><i class="ico-pdf">ico-pdf</i>SD 모의평가 FINAL 1회 듣기파일SD 모의평가 FINAL 1회 듣기파일.pdf</a>
								</div>
							</div>

							<div class="txt-area border-top">
								<h5 class="tit-dep4 mb10">답변.</h5>

								안녕하세요. 고객님 <br><br>

								제품 문제로 불편을 드려 죄송합니다.<br><br>

								해당 내용 관련하여 유선상 안내드린 부분으로 <br>
								간략하게 답변 남기는 점 양해 말씀드리겠습니다. <br>
								그럼, 즐거운 하루 보내세요. <br>

								감사합니다.

								<span class="date">2021.12.21</span>
								<div class="file-area">
									<a href="javascript:void(0)" class="btn"><i class="ico-file">ico-file</i>SD 모의평가 FINAL 1회 듣기파일.zip</a>
								</div>
							</div>
						</dd>
						<!--// E : 답변 완료 -->
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