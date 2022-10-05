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
						<a href="javascript:void(0)">
							환불/결제 취소 신청 사유
						</a>
					</dt>
					<dd>
						<div class="form-type">
							<div class="row">
								<span class="col-100">	
									<label class="select">
										<select name="" id="" name="">
											<option value="선택">선택</option>
										</select>
									</label>
								</span>
							</div>
							<div class="row">
								<span class="col-100">
									<label class="input-text">
										<input type="text" name="" id="" value="" placeholder="신청 사유 입력">
									</label>
								</span>
							</div>
							
						</div>
					</dd>
					<dt>
						<a href="javascript:void(0)">
							환불받을 계좌 정보
						</a>
					</dt>
					<dd>
						<div class="form-type">
							<div class="row">
								<span class="col-100">	
									<label class="select">
										<select name="" id="" name="">
											<option value="은행명">은행명</option>
										</select>
									</label>
								</span>
							</div>
							<div class="row">
								<span class="col-100">
									<label class="input-text">
										<input type="text" name="" id="" value="" placeholder="예금주명 입력">
									</label>
								</span>
							</div>
							<div class="row">
								<span class="col-100">
									<label class="input-text">
										<input type="text" name="" id="" value="" placeholder="계죄번호 (숫자만 입력)">
									</label>
								</span>
							</div>
						</div>
					</dd>
					<dt>
						<a href="javascript:void(0)">
							교재/도서를 수거할 주소 입력
						</a>
					</dt>
					<dd>
						<div class="form-area">
							<dl>
								<dt>휴대폰번호<span class="color-red">*</span></dt>
								<dd>
									<div class="form-type">
										<div class="row">
											<span class="col-35">
												<label class="select">
													<select name="" id="">
														<option value="선택">선택</option>
														<option value="010">010</option>
														<option value="011">011</option>
														<option value="016">016</option>
														<option value="017">017</option>
														<option value="018">018</option>
														<option value="019">019</option>
													</select>
												</label>
											</span>
											<span class="col-60">
												<label class="input-text">
													<input type="text" name="" id="" value="" placeholder="0000" maxlength="4">
												</label>
												<span>-</span>
												<label class="input-text">
													<input type="text" name="" id="" value="" placeholder="0000" maxlength="4">
												</label>
											</span>
										</div>
										<!--
										<div class="row border-none">
											<% If True Then '인증번호 받을 때%>
											<a href="javascript:void(0);" class="btn btn-border-black">인증번호받기</a>
											<% Else '인증번호 재전송일 때%>
											<a href="javascript:void(0);" class="btn btn-border-black">인증번호재전송</a>
											<% End If %>
										</div>
										
										<div class="row">
											<div class="form-type">
												<label class="input-text">
													<input type="text" name="" id="" value="">
													<span class="time">00:00</span>
													<button type="button" class="btn btn-search color-black">확인</button>
												</label>
											</div>
										</div>
										<span class="info-txt mb20">주문/배송 정보를 SMS로 안내해드리오니 정확하게 입력해주세요.</span>
										-->
									</div>
								</dd>
								<dt>주소<span class="color-red">*</span></dt>
								<dd>
									<div class="form-type mb12">
										<label class="input-text">
											<input type="text" name="" id="" value="" readonly>
											<button type="button" class="btn btn-search color-black">검색</button>
										</label>
									</div>

									<div class="form-type mb12">
										<label class="input-text">
											<input type="text" name="" id="" value="" placeholder="기본 주소" readonly>
										</label>
									</div>
									
									<div class="form-type">
										<label class="input-text">
											<input type="text" name="" id="" value="" placeholder="나머지 주소">
										</label>
									</div>
								</dd>
							</dl>
						</div>
					</dd>
					<!--
					<dt>
						<a class="float-area" href="javascript:void(0)">
							<strong class="fl">환불 예정금액</strong> 
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
					-->
				</dl>
				
				<hr class="hr">

				<div class="info-area border-top">
					<h4 class="tit-dep5">환불 관련 참고사항 안내</h4>
					<ul class="list-dotted">
                        <li>배송 전 : 즉시 환불 처리 가능</li> 
						<li>배송 중  : 배송 중지 신청 불가, 상품 수거 후 담당자가 상품 확인하여 환불 처리 진행</li> 
						<li>배송 완료 :  자동 반품 접수되며 상품 수거 후, 담당자가 상품 확인하여 환불 처리 진행</li> 
						<li>단, 배송 전이라도 주소 기재는 필수입니다.</li> 
						<li>무료로 배송 받은 후 고객의 변심으로 인한 취소 시 왕복 배송비 6,000원은 고객 부담이며, 반송 후 미사용 상품 상태 확인시에 최종 결제 금액에서 왕복 배송비 차감 후 환불 완료됩니다.</li>
                    </ul>

					<a href="javascript:void(0)"class="txt-underline mt10">시대인재 상품별 환불 규정</a>
				</div>

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