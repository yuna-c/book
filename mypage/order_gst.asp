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
			<h2 class="dep-tit2">주문/배송조회</h2>
			<a href="javascript:void(0)" class="ico ico-myinfo">장바구니</a>
		</div>	
		<!--// E : 페이지 헤더 -->

		<!-- S : 페이지 내용 -->
		<div class="content-container">
			<div class="wide-layout">
				<div class="info-area">
					<% If false Then '회원 일 때 %>
					<div class="gray-box">
						<a href="javascript:void(0)" class="txt" onclick="fnOpenModal('.modal-order');">주문/배송 안내 +</a>
					</div>
					<% Else '비회원 일 때 %>
					<div class="gray-box non">
						<a href="javascript:void(0)" class="float-area" onclick="fnOpenModal('.modal-nonmem');">
							<span class="fl">주문/배송 안내 +</span>
							<span class="fr">*비회원으로 주문하셨습니다.</span>
						</a>
						
					</div>
					<% End If %>
				</div>

				<% If true Then '리스트가 있을 때%>
				<div class="list-type2">
					<ul>
						<li>
							<div class="tit-area">
								<span>2021-09-13</span>
								<a href="/yuna/mypage/orderView.asp" class="txt-underline">주문상세</a>
							</div>

							<ul class="store-list">
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
										</div>
									</div>

									<div class="btn-group"> 
										<a href="/yuna/mypage/orderCancel.asp" class="btn btn-border-gray">취소/환불</a>
										<a href="/yuna/mypage/orderView.asp" class="btn btn-border-gray">배송조회</a>
									</div>
								</li>
							</ul>
						</li>
						<li>
							<div class="tit-area">
								<span>2021-09-14</span>
								<a href="javascript:void(0)" class="txt-underline">주문상세</a>
							</div>

							<ul class="store-list">
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
										</div>
									</div>

									<div class="btn-group"> 
										<a href="./orderCancel.asp" class="btn btn-border-gray">취소/환불</a>
										<a href="./orderView.asp" class="btn btn-border-gray">배송조회</a>
									</div>
								</li>
							</ul>
						</li>
						<li>
							<div class="tit-area">
								<span>2021-09-15</span>
								<a href="javascript:void(0)" class="txt-underline">주문상세</a>
							</div>

							<ul class="store-list">
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
										</div>
									</div>

									<div class="btn-group"> 
										<a href="javascript:void(0);" class="btn btn-border-gray">취소/환불</a>
										<a href="javascript:void(0);" class="btn btn-border-gray">배송조회</a>
									</div>
								</li>
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
										</div>
									</div>

									<div class="btn-group"> 
										<a href="./orderCancel.asp" class="btn btn-border-gray">취소/환불</a>
										<a href="./orderView.asp" class="btn btn-border-gray">배송조회</a>
									</div>
								</li>
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
										</div>
									</div>

									<div class="btn-group"> 
										<a href="./orderCancel.asp" class="btn btn-border-gray">취소/환불</a>
										<a href="./orderView.asp" class="btn btn-border-gray">배송조회</a>
									</div>
								</li>
							</ul>
						</li>
					</ul>
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
	<!-- #include file ="./inc.orderInfo.asp" -->
	<!-- #include file ="./inc.orderNon.asp" -->
	<!--// E : dim -->		


<!-- #include virtual="/common/include/inc.footer.asp" -->

<script>
	$(function(){});
</script>