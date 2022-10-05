<!--#include virtual="/common/inc/config.asp"-->
<!-- #include virtual="/common/include/inc.meta.asp" -->

<!-- S : 페이지별 css / script -->
<link rel="stylesheet" type="text/css" href="/common/css/inc.mypage.css?ver=<%= now() %>">
<!--// E : 페이지별 css / script -->

<!-- #include virtual="/common/include/inc.header.asp" -->
	
	<!-- S : content -->
	<div id="content" class="order-content">
		<!-- S : 페이지 헤더 -->
		<div class="content-header">
			<a href="javascript:history.back();" class="ico ico-back">돌아가기</a>
			<h2 class="dep-tit2">주문 상세조회</h2>
			<a href="javascript:void(0)" class="ico ico-myinfo">장바구니</a>
		</div>	
		<!--// E : 페이지 헤더 -->

		<!-- S : 페이지 내용 -->
		<div class="content-container">
			<div class="wide-layout">

				<% If true Then '리스트가 있을 때%>
				<dl class="list-toggle2">
					<dt>
						<a class="order-area" href="javascript:void(0)">
							<strong>
								20210913110606024684
								<span class="txt">2021-09-13 11:06</span>
							</strong> 
						</a>
					</dt>
					<dd>
						<!-- S : 사이트 별 상품 리스트 -->
						<ul class="store-list">
							<% for e = 1 to 2 %>
							<li>
								<div class="float-area">
									<div class="fl">
										<div class="img-area">
											<span class="bg">
												<img src="https://via.placeholder.com/45x60" alt="book-img">
											</span>
										</div>
									</div>

									<div class="txt-area fr">
										<span class="tit">
											<a href="javascript:void(0);">2022 이해원 모의고사 시즌2</a>
										</span>
										<strong class="price">5,000원&nbsp; <span class="txt-through">10,000원</span></strong>
										<span class="color-gray">주문수량 10개</span>
										<strong class="total">15,000원</strong>
										<span class="color-red">진행현황</span>
									</div>
								</div>
							</li>
							<% next %>
						</ul>
						<!--// E : 사이트 별 상품 리스트 -->
					</dd>
					<dt>
						<a href="javascript:void(0)">
							배송정보
						</a>
					</dt>
					<dd>
						<div class="price-area address-area pb25">
							<ul>
								<li>
									<span class="color-gray">수령인</span>
									<span>홍은지</span>
								</li>
								<li>
									<span class="color-gray">주소</span>
									<span>(06178) 서울 강남구 삼성로 434 (쥬비스타워) 202-1310호</span>
								</li>
								<li>
									<span>&nbsp;</span>
									<span class="sticker-area"><a href="javascript:void(0);" class="sticker sticker-gray color-black" onclick="fnOpenModal('.modal-change');">배송지 변경</a></span>
								</li>
								<li>
									<span class="color-gray">휴대폰번호</span>
									<span>010-0000-0000</span>
								</li>
								<li>
									<span class="color-gray">전화번호</span>
									<span>010-0000-0000</span>
								</li>
								<li>
									<span class="color-gray">배송메모</span>
									<span>경비실 요청</span>
								</li>
							</ul>
						</div>
						<div class="info-area border-top pt25">
							<ul class="list-dotted">
								<li>주문번호 당 하나의 배송지로만 변경 가능합니다.</li> 
								<li>주문상품의 배송상태가 [배송준비중]일 때만 변경 가능하며 [배송중] 상태의 상품 배송지 변경은 고객센터(1522-0568 또는 1:1 상담)로 문의 주시기 바랍니다.</li>
								<li>[배송준비중]으로 노출 중인 상품이더라도 실제 상품이 포장되어 출고 직전인 경우 해당 메뉴를 통해 배송지 변경 불가하니 고객센터(1522-0568 또는 1:1 상담)로 문의 주시기 바랍니다.</li>
							</ul>
						</div>
					</dd>
					<dt>
						<a class="float-area" href="javascript:void(0)">
							<strong class="fl">총 결제금액</strong> 
							<span class="fr color-red">50,000원</span>
						</a>
					</dt>
					<dd>
						<div class="price-area">
							<ul>
								<li>
									<span class="color-gray">주문금액/1건(2개)</span>
									<span>50,000원</span>
								</li>
								<li>
									<span class="color-gray">총 할인금액</span>
									<span>-3,000원</span>
								</li>
								<li>
									<span class="color-gray">배송비</span>
									<span>+3,000원</span>
								</li>
							</ul>
						</div>
					</dd>
					<dt>
						<a href="javascript:void(0)">
							결제정보
						</a>
					</dt>
					<dd>
						<div class="price-area address-area">
							<ul>
								<li>
									<span class="color-gray">결제수단</span>
									<span class="sticker-area2">
										무통장입금
										<a href="javascript:void(0);" class="sticker sticker-gray color-black">영수증</a>
									</span>
								</li>
								<li>
									<span class="color-gray">결제금액</span>
									<span>19,800원</span>
								</li>
							</ul>
						</div>
					</dd>
					<dt>
						<a class="float-area" href="javascript:void(0)">
							<strong class="fl">주문상태</strong> 
							<span class="fr color-red">입금대기</span>
						</a>
					</dt>
					<dd>
						<div class="price-area address-area">
							<ul>
								<li>
									<span class="color-gray">입금기한</span>
									<span class="color-red">YYYY-MM-DD</span>
								</li>
								<li>
									<span class="color-gray">입금계좌번호</span>
									<span>123144566868799</span>
								</li>
								<li>
									<span class="color-gray">은행(예금주)</span>
									<span>우리은행 (하이컨시온)</span>
								</li>
								<li>
									<span class="color-gray">입금하실금액</span>
									<span>NN,NNN원</span>
								</li>
							</ul>
						</div>
					</dd>
				</dl>
				
				<hr class="hr">

				<div class="content-area">
					<!-- S : btn-group -->
					<div class="btn-group"> 
						<a href="javascript:void(0);" class="btn btn-border-black">환불신청</a>
					</div>
					<!--// E : btn-group -->
				</div>

				<% Else '리스트가 없을 때 %>
				<div class="no-data">	
					<p class="txt">최근 주문 내용 목록이 없습니다.</p>
				</div>
				<% End if%>
			</div>
		</div>
		<!--// E : 페이지 내용 -->
	</div>
	<!--// E : content -->

	<!-- S : dim -->
	<link rel="stylesheet" type="text/css" href="/common/css/inc.dim.css?ver=<%= now() %>">
	<!-- #include file ="./inc.addressList.asp" -->
	<!-- #include file ="./inc.addressChange.asp" -->
	<!--// E : dim -->		


<!-- #include virtual="/common/include/inc.footer.asp" -->

<script>
	$(function(){});
</script>