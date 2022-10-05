<!--#include virtual="/common/inc/config.asp"-->
<!-- #include virtual="/common/include/inc.meta.asp" -->

<!-- S : 페이지별 css / script -->
<link rel="stylesheet" type="text/css" href="/common/css/inc.cart.css?ver=<%= now() %>">
<!--// E : 페이지별 css / script -->

<!-- #include virtual="/common/include/inc.header.asp" -->
	
	<!-- S : content -->
	<div id="content" class="order-content">
		<!-- S : 페이지 헤더 -->
		<div class="content-header">
			<a href="javascript:history.back();" class="ico ico-back">돌아가기</a>
			<h2 class="dep-tit2">주문/결제</h2>
			<a href="javascript:void(0)" class="ico ico-myinfo">장바구니</a>
		</div>	
		<!--// E : 페이지 헤더 -->

		<!-- S : 페이지 내용 -->
		<div class="content-container">
			<div class="wide-layout">
				<div class="gray-box">
					<h3 class="tit fw700">
						<span class="color-red">홍구리</span> 회원님,<br>결제가 정상적으로 완료 되었습니다.<br>
					</h3>
					<p class="tit"><span class="color-gray">목표하시는 대학 입학까지 시대인재가<br> 함께 하겠습니다.</span></p>
					<% If false Then '회원 일 때 %>
					<p class="txt mt5"><span class="color-gray">주문번호</span>&nbsp;&nbsp;20210913110606024684</p>
					<p class="txt"><span class="color-gray">주문일자</span>&nbsp;&nbsp;2021-09-13 11:06</p>
					<% Else '비회원 일 때 %>
					<p class="txt mt5"><span class="color-gray">주문번호</span>&nbsp;&nbsp;20210913110606024684</p>
					<p class="txt"><span class="color-gray">주문일자</span>&nbsp;&nbsp;2021-09-13 11:06</p>
					<p class="txt color-gray mt10">
						<a href="javascript:void(0)" class="txt-underline">비회원 주문조회</a>에서 구매상품의 이용,<br>
						배송조회를 하실 수 있습니다.
					</p>
					<% End If %>
				</div>

				<dl class="list-toggle2">
					<dt>
						<a href="javascript:void(0)">
							이해원 모의고사 외1건
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
									</div>
								</div>
							</li>
							<% next %>
						</ul>
						<!--// E : 사이트 별 상품 리스트 -->
					</dd>
					<dt>
						<a class="float-area" href="javascript:void(0)">
							<strong class="fl">배송지</strong> 
						</a>
					</dt>
					<dd>
						<div class="price-area address-area">
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
									<span class="color-gray">휴대폰번호</span>
									<span>010-0000-0000</span>
								</li>
								<li>
									<span class="color-gray">전화번호</span>
									<span>010-0000-0000</span>
								</li>
								<li>
									<span class="color-gray">배송요청</span>
									<span>경비실 요청</span>
								</li>
							</ul>
						</div>
					</dd>
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

				<div class="content-area">
					<!-- S : 회원일 때 -->
					<div class="btn-group"> 
						<a href="javascript:void(0);" class="btn btn-border-black">주문 상세보기</a>
						<a href="/" class="btn btn-border-black">시대인재북스 메인</a>
					</div>
					<!--// E : 회원일 때 -->

					<!-- S : 비회원일 때 -->
					<div class="btn-group"> 
						<a href="javascript:void(0);" class="btn btn-border-black">비회원 주문조회</a>
						<a href="/" class="btn btn-border-black">시대인재북스 메인</a>
					</div>
					<!--// E : 비회원일 때 -->
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

	// 이메일 select
	$('#fnSelectEmail').change(function(){
		$('#fnSelectEmail option:selected').each(function() {
			if($(this).val() == '1') {
				$('#fnMemEmail2').val('');                      // 값초기화
				$('#fnMemEmail2').attr("readonly", false);      // 활성화
			} else {
				$('#fnMemEmail2').val($(this).val());           // 선택 값 입력
				//$('#fnMemEmail2').attr("disabled", true);     // 비활성화
				$('#fnMemEmail2').attr("readonly", true);       // 비활성화
			}
		});
	});



</script>