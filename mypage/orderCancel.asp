<!--#include virtual="/common/inc/config.asp"-->
<!-- #include virtual="/common/include/inc.meta.asp" -->

<!-- S : 페이지별 css / script -->
<link rel="stylesheet" type="text/css" href="/common/css/inc.mypage.css?ver=<%= now() %>">
<!--// E : 페이지별 css / script -->

<!-- #include virtual="/common/include/inc.header.asp" -->
	
	<!-- S : content -->
	<div id="content" class="cancel-content">
		<!-- S : 페이지 헤더 -->
		<div class="content-header">
			<a href="javascript:history.back();" class="ico ico-back">돌아가기</a>
			<h2 class="dep-tit2">환불신청</h2>
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
					<dd class="p0">
						<!-- S : 사이트 별 상품 리스트 -->
						<div class="cart-header">
							<div class="input-check">
								<label class="input-checkbox">
									<input type="checkbox" onchange="fnCartCheck(this);">
									<i class="ico-checkbox"></i>
									전체선택&nbsp;(4)
								</label>
							</div>
							
							<!--<a href="javascript:void(0)" class="btn btn-sm btn-border-gray">선택삭제</a>
							<a href="javascript:void(0)" class="btn btn-sm btn-border-gray">전체삭제</a>-->
							
						</div>

						<div class="cart-content">
							<h4 class="tit-dep4">일반결제</h4>
						
							<ul class="store-list">
								<% for e = 1 to 2 %>
								<li>
									<div class="float-area">
										<div class="fl">
											<label class="input-checkbox"> 
												<input type="checkbox">
												<i class="ico-checkbox"></i>
												
												<div class="img-area">
													<span class="bg">
														<img src="https://via.placeholder.com/45x60" alt="book-img">
													</span>
												</div>
											 </label>
										</div>

										 <div class="txt-area fr">
											<strong class="situation">진행현황</strong>
											<span class="tit">
												<a href="javascript:void(0);">2022 이해원 모의고사 시즌2</a>
											</span>
											<span class="color-gray">3개</span>
											<strong class="total">15,000원</strong>
										 </div>
										 
										 <div class="close">
											<a href="javascript:void(0)" class="item-close">
												<i class="ico ico-close"></i>
											</a>
										</div>

										<div class="item-control">
											<div class="btn-count-wrap">
												<a href="javascript:void(0);" onclick="fnChangeCount(jQuery(this), '<%=tblBasketIdx%>');" class="btn-minus">수량 감소</a>
												<span>1</span>
												<a href="javascript:void(0);" onclick="fnChangeCount(jQuery(this), '<%=tblBasketIdx%>');" class="btn-plus">수량</a>
											</div>
										</div>
									</div>
								</li>
								<li>
									<div class="float-area">
										<div class="fl">
											<label class="input-checkbox"> 
												<input type="checkbox">
												<i class="ico-checkbox"></i>
												
												<div class="img-area">
													<span class="bg">
														<img src="https://via.placeholder.com/45x60" alt="book-img">
													</span>
												</div>
											 </label>
										</div>

										 <div class="txt-area fr">
										 	<strong class="situation">진행현황</strong>
											<span class="tit">
												<a href="javascript:void(0);">2022 이해원 모의고사 시즌2</a>
											</span>
											<span class="color-gray">5개(취소 1개)</span>
											<strong class="total">15,000원 <span class="color-gray fw400">(취소 1,000원)</span></strong>
										 </div>
										 
										 <div class="close">
											<a href="javascript:void(0)" class="item-close">
												<i class="ico ico-close"></i>
											</a>
										</div>
									</div>
								</li>
								<% next %>
							</ul>
						</div>
						<!--// E : 사이트 별 상품 리스트 -->
					</dd>
					<dt>
						<a class="float-area" href="javascript:void(0)">
							<strong class="fl">환불 예정금액</strong> 
							<span class="fr color-red">00,000원</span>
						</a>
					</dt>
					<dd>
						<div class="price-area">
							<ul>
								<li>
									<span class="color-gray">주문금액</span>
									<span>00,000원</span>
								</li>
								<li>
									<span class="color-gray">기존 환불 금액</span>
									<span>0,000원</span>
								</li>
								<li>
									<span class="color-gray">환불 후 구매 금액</span>
									<span>0,000원</span>
								</li>
							</ul>
						</div>
					</dd>
				</dl>

				<div class="info-area border-top">
					<!-- <h4 class="tit-dep5">장바구니 안내사항</h4>-->
					<ul class="list-dotted">
                        <li>환불 예정 금액과 실제 환불 금액은 다를 수 있습니다.</li>
                        <li>출고대기 상태의 교재 또는 도서가 있는 경우 고객센터 1522-0568로 문의 바랍니다.</li>
                    </ul>
				</div>

				<hr class="hr">

				<div class="content-area">
					<!-- S : btn-group -->
					<div class="btn-group"> 
						<a href="./orderCanceled.asp" class="btn btn-border-black">환불신청</a>
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

	// 전체선택
	function fnCartCheck(obj){
        var $this = $(obj);
        var $thisCheck = $this.prop('checked');

        $this.parents('.cart-header').next('.cart-content').find('input[type="checkbox"]').prop('checked', $thisCheck);
    }

	// 상품갯수조절
    function fnChangeCount(pObj, tblBasketIdx){
        var f_parents = pObj.parents('.btn-count-wrap');
        var f_input = f_parents.find('input');
        var f_span = f_parents.find('span');
        var f_count = parseInt(f_span.text());

        if(pObj.hasClass('btn-minus')){
            --f_count;

            if(f_count < 1) return;
        }
        else{
            if (f_count >= 99)
            {
                alert("최대 구매수량은 99권 입니다");
                return;
            }
            ++f_count;
        }

        f_input.attr('value',f_count);
        f_span.text(f_count);
    }
</script>