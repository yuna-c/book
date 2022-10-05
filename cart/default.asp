<!--#include virtual="/common/inc/config.asp"-->
<!-- #include virtual="/common/include/inc.meta.asp" -->

<!-- S : 페이지별 css / script -->
<link rel="stylesheet" type="text/css" href="/common/css/inc.cart.css?ver=<%= now() %>">
<!--// E : 페이지별 css / script -->

<!-- #include virtual="/common/include/inc.header.asp" -->
	
	<!-- S : content -->
	<div id="content" class="buy-content">
		<!-- S : 페이지 헤더 -->
		<div class="content-header">
			<a href="javascript:history.back();" class="ico ico-back">돌아가기</a>
			<h2 class="dep-tit2">장바구니</h2>
			<a href="javascript:void(0)" class="ico ico-myinfo">장바구니</a>
		</div>	
		<!--// E : 페이지 헤더 -->

		<!-- S : 페이지 내용 -->
		<div class="content-container">
			<div class="wide-layout">
				<div class="cart-header">
					<div class="input-check">
						<label class="input-checkbox">
							<input type="checkbox" onchange="fnCartCheck(this);">
							<i class="ico-checkbox"></i>
							전체선택&nbsp;(5)
						</label>
					</div>
					<a href="javascript:void(0)" class="btn btn-sm btn-border-gray">선택삭제</a>
					<a href="javascript:void(0)" class="btn btn-sm btn-border-gray">전체삭제</a>
				</div>

				<div class="cart-content">
					<h4 class="tit-dep4">일반결제</h4>
				
					<!-- S : 사이트 별 상품 리스트 -->
					<ul class="store-list">
						<% for e = 1 to 5 %>
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
									<span class="tit">
										<a href="javascript:void(0);">2022 이해원 모의고사 시즌2</a>
									</span>
									<strong class="price">5,000원&nbsp; <span class="txt-through">10,000원</span></strong>
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
						<% next %>
					</ul>
					<!--// E : 사이트 별 상품 리스트 -->
					
				</div>

				<hr class="hr">

				<dl class="list-toggle2">
					<dt>
						<a class="float-area" href="javascript:void(0)">
							<strong class="fl">총 결제예정금액</strong> 
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
				</dl>

				<hr class="hr">
				
				<div class="info-area">
					<h4 class="tit-dep5">장바구니 안내사항</h4>

					<ul class="list-dotted">
                        <li>장바구니에 담겨진 상품/강좌/교재/도서는 30일 동안 보관됩니다. (단, 판매종료 상품은 별도 고지없이 삭제)</li>
                        <li>교재 배송비는 주문 1건당 2,500원입니다. </li>
                        <li>변심에 의한 반송 시, 환불 금액에서 왕복 배송비 6,000원이 제외됩니다. </li>
                        <li>교재가 포함된 상품 또는 강좌의 결제를 취소하시면 해당 교재도 함께 취소됩니다. </li>
                        <li>수강중인 강좌와 교재는 수강 중 재구매 할 수 없습니다. </li>
                    </ul>

					<a href="javascript:void(0)" class="txt-underline">시대인재 상품별 환불 규정</a>
					<a href="javascript:void(0)" class="txt-underline">교재 배송 및 구매 안내</a>
				</div>
				
				<hr class="hr">

				<div class="content-area">
					<!-- S : btn-group -->
					<div class="btn-group"> 
						<a href="./order.asp" class="btn btn-black">주문하기</a>
					</div>
					<!--// E : btn-group -->
				</div>
			</div>
		</div>
		<!--// E : 페이지 내용 -->
		
		<!-- S : 페이지 버튼 
		<div class="content-footer">
			<div class="btn-layer">
				<a href="javascript:void(0)" class="btn btn-default">총 N 건 주문하기</a>
			</div>
		</div>
		// E : 페이지 버튼 -->
	</div>
	<!--// E : content -->

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