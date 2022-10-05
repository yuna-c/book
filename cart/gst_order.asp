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
				<% If false Then '회원 일 때 %>
				<dl class="list-toggle2">
					<dt>
						<a href="javascript:void(0)">
							구매자
						</a>
					</dt>
					<dd>
						<div class="form-area">
							<dl>
								<dt>이름<span class="color-red">*</span></dt>
								<dd>
									<div class="form-type">
										<label class="input-text">
											<input type="text" name="" id="" value="김무스비" readonly>
										</label>
									</div>
								</dd>
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
									</div>
								</dd>
								<dt>이메일<span class="color-red">*</span></dt>
								<dd>
									<div class="form-type">
										<div class="row">
											<span class="col-100">
												<label class="input-text">
													<input type="text" id="fnMemEmail1" name="fnMemEmail1" value="">
												</label>
												<span class="at">@</span>
												<label class="input-text">
													<input type="text" id="fnMemEmail2" name="fnMemEmail2" readonly="readonly">
												</label>
											</span>
										</div>
										<div class="row">
											<span class="col-100">	
												<label class="select">
													<select name="" id="fnSelectEmail" name="fnSelectEmail">
														<option value="선택">선택</option>
														<option value="1">직접입력</option>
														<option value="gmail.com">gmail.com</option>
														<option value="hanmail.net">hanmail.net</option>
														<option value="hotmail.com">hotmail.com</option>
														<option value="nate.com">nate.com</option>
														<option value="naver.com">naver.com</option>
														<option value="yahoo.com">yahoo.com</option>
													</select>
												</label>
											</span>
										</div>
									</div>
								</dd>
							</dl>
						</div>
					</dd>
					<dt>
						<a href="javascript:void(0)">
							배송지
						</a>
					</dt>
					<dd>
						<div class="radio-area">
							<dl>
								<dt class="color-gray">배송지선택</dt>
								<dd>
									<ul>
										<li>
											<label class="input-radio">
												<input type="radio" checked>
												<i class="ico-radio"></i>
												<span>구매자정보 동일</span>
											</label>
										</li>
										<li>
											<label class="input-radio" onclick="fnOpenModal('.modal-select');">
												<input type="radio">
												<i class="ico-radio"></i>
												<span>최근 배송지</span>
											</label>
										</li>
										<li>
											<label class="input-radio" onclick="fnOpenModal('.modal-list');">
												<input type="radio">
												<i class="ico-radio"></i>
												<span>배송지 목록에서 선택</span>
											</label>
										</li>
										<li>
											<label class="input-radio">
												<input type="radio">
												<i class="ico-radio"></i>
												<span>직접 입력</span>
											</label>
										</li>
									</ul>
								</dd>
							</dl>
							<span class="info-txt mb20">등록된 배송지가 없는 경우, 주문 완료된 첫 배송지 정보가 기본 배송지로 자동 설정됩니다.</span>
						</div>

						<div class="form-area mt20">
							<dl>
								<dt>수령인<span class="color-red">*</span></dt>
								<dd>
									<div class="form-type">
										<label class="input-text">
											<input type="text" name="" id="" value="김무스비" readonly>
										</label>
									</div>
								</dd>
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
									</div>
								</dd>
								<dt>전화번호</dt>
								<dd>
									<div class="form-type">
										<div class="row">
											<span class="col-35">
												<label class="select">
													<select name="" id="">
														<option value="선택">선택</option>
														<option value="02">02</option>
														<option value="031">031</option>
														<option value="032">032</option>
														<option value="033">033</option>
														<option value="041">041</option>
														<option value="042">042</option>
														<option value="043">043</option>
														<option value="044">044</option>
														<option value="051">051</option>
														<option value="052">052</option>
														<option value="053">053</option>
														<option value="054">054</option>
														<option value="055">055</option>
														<option value="061">061</option>
														<option value="062">062</option>
														<option value="063">063</option>
														<option value="064">064</option>
														<option value="070">070</option>
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
								<dt>배송 메모</dt>
								<dd>
									<div class="form-type">
										<div class="textarea">
											<textarea name="" id="" placeholder="50byte 이내 배송 관련 메모를 작성하세요. 예) 경비실에 맡겨주세요." style="height:80px;"></textarea>
										</div>
									</div>
								</dd>
							</dl>
						</div>
					</dd>
					<dt>
						<a href="javascript:void(0)">
							주문상품
						</a>
					</dt>
					<dd>
						<!-- S : 사이트 별 상품 리스트 -->
						<ul class="store-list">
							<% for e = 1 to 5 %>
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
						<a href="javascript:void(0)">
							결제수단
						</a>
					</dt>
					<dd>
						<div class="radio-area2">
							<ul>
								<li>
									<label class="input-radio">
										<input type="radio" checked>
										<i class="ico-radio"></i>
										<span>신용/체크카드</span>
									</label>
								</li>
								<li>
									<label class="input-radio">
										<input type="radio">
										<i class="ico-radio"></i>
										<span>계좌이체</span>
									</label>
								</li>
								<li>
									<label class="input-radio">
										<input type="radio">
										<i class="ico-radio"></i>
										<span>무통장입금</span>
									</label>
								</li>
								<li>
									<label class="input-radio">
										<input type="radio">
										<i class="ico-radio"></i>
										<span>휴대폰결제</span>
									</label>
								</li>
							</ul>
						</div>

						<div class="info-area pl0 pr0">
							<ul class="list-dotted">
								<li>결제 수단별 문구 상이하게 노출</li>
								<li>결제 수단별 문구 상이하게 노출</li>
								<li>은행계좌에서 결제금액이 이체됩니다.</li>
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
				
				<div class="info-area p25">
					<h4 class="tit-dep5">장바구니 안내사항</h4>

					<ul class="list-dotted">
                        <li>교재/도서 배송기간 – 발송일로부터 서울 2~3일, 지방 3~4일(일요일 및 법정 공휴일 제외)</li>
                        <li>교재/도서가 포함된 강좌는 교재/도서가 반송되어야 취소할 수 있습니다.</li>
                        <li>수강중인 강좌와 교재는 수강 중 재구매할 수 없습니다.</li>
                    </ul>

					<a href="javascript:void(0)"class="txt-underline">시대인재 상품별 환불 규정</a>
					<a href="javascript:void(0)"class="txt-underline">교재 배송 및 구매 안내</a>
				</div>
				
				<hr class="hr">

				<div class="input-area">
					<label class="input-checkbox">
						<input type="checkbox">
						<i class="ico-checkbox"></i>
						<p>주문할 상품의 상품명, 상품가격, 배송 정보, 환불 규정을 확인하였으며, 구매에 동의합니다. (전자상거래법 제8조 2항) </p>
					</label>
				</div>

				<% Else '비회원 일 때 %>
				<dl class="list-toggle2">
					<dt>
						<a href="javascript:void(0)">
							구매자
						</a>
					</dt>
					<dd>
						<div class="form-area">
							<dl>
								<dt>이름<span class="color-red">*</span></dt>
								<dd>
									<div class="form-type">
										<label class="input-text">
											<input type="text" name="" id="" value="">
										</label>
									</div>
								</dd>
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
									</div>
								</dd>
								<dt>이메일<span class="color-red">*</span></dt>
								<dd>
									<div class="form-type">
										<div class="row">
											<span class="col-100">
												<label class="input-text">
													<input type="text" id="fnMemEmail1" name="fnMemEmail1" value="">
												</label>
												<span class="at">@</span>
												<label class="input-text">
													<input type="text" id="fnMemEmail2" name="fnMemEmail2" readonly="readonly">
												</label>
											</span>
										</div>
										<div class="row">
											<span class="col-100">	
												<label class="select">
													<select name="" id="fnSelectEmail" name="fnSelectEmail">
														<option value="선택">선택</option>
														<option value="1">직접입력</option>
														<option value="gmail.com">gmail.com</option>
														<option value="hanmail.net">hanmail.net</option>
														<option value="hotmail.com">hotmail.com</option>
														<option value="nate.com">nate.com</option>
														<option value="naver.com">naver.com</option>
														<option value="yahoo.com">yahoo.com</option>
													</select>
												</label>
											</span>
										</div>
									</div>
								</dd>
								<dt>주문 비밀번호<span class="color-red">*</span></dt>
								<dd>
									<div class="form-type">
										<label class="input-text">
											<input type="text" name="" id="" value="">
										</label>
									</div>
								</dd>
								<dt>주문 비밀번호 확인<span class="color-red">*</span></dt>
								<dd>
									<div class="form-type">
										<div class="row">
											<div class="form-type">
												<label class="input-text">
													<input type="text" name="" id="" value="">
												</label>
											</div>
										</div>
										<span class="info-txt mb5">비밀번호는 “주문 확인“ 시 필수 기재 사항으로 반드시 기억하셔야 합니다.</span>
										<span class="info-txt mb20">비밀번호는 숫자+영문 조합하여 최소 4자~최대 10자로 입력하세요.</span>
									</div>
								</dd>
							</dl>
						</div>
					</dd>
					<dt>
						<a href="javascript:void(0)">
							배송지
						</a>
					</dt>
					<dd>
						<div class="form-area">
							<dl>
								<dt>수령인<span class="color-red">*</span></dt>
								<dd>
									<div class="form-type">
										<label class="input-text">
											<input type="text" name="" id="" value="">
										</label>
									</div>
								</dd>
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
									</div>
								</dd>
								<dt>전화번호</dt>
								<dd>
									<div class="form-type">
										<div class="row">
											<span class="col-35">
												<label class="select">
													<select name="" id="">
														<option value="선택">선택</option>
														<option value="02">02</option>
														<option value="031">031</option>
														<option value="032">032</option>
														<option value="033">033</option>
														<option value="041">041</option>
														<option value="042">042</option>
														<option value="043">043</option>
														<option value="044">044</option>
														<option value="051">051</option>
														<option value="052">052</option>
														<option value="053">053</option>
														<option value="054">054</option>
														<option value="055">055</option>
														<option value="061">061</option>
														<option value="062">062</option>
														<option value="063">063</option>
														<option value="064">064</option>
														<option value="070">070</option>
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
								<dt>배송 메모</dt>
								<dd>
									<div class="form-type">
										<div class="textarea">
											<textarea name="" id="" placeholder="50byte 이내 배송 관련 메모를 작성하세요. 예) 경비실에 맡겨주세요." style="height:80px;"></textarea>
										</div>
									</div>
								</dd>
							</dl>
						</div>
					</dd>
					<dt>
						<a href="javascript:void(0)">
							주문상품
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
						<a href="javascript:void(0)">
							결제수단
						</a>
					</dt>
					<dd>
						<div class="radio-area2">
							<ul>
								<li>
									<label class="input-radio">
										<input type="radio">
										<i class="ico-radio"></i>
										<span>신용/체크카드</span>
									</label>
								</li>
								<li>
									<label class="input-radio">
										<input type="radio">
										<i class="ico-radio"></i>
										<span>계좌이체</span>
									</label>
								</li>
								<li>
									<label class="input-radio">
										<input type="radio">
										<i class="ico-radio"></i>
										<span>휴대폰결제</span>
									</label>
								</li>
							</ul>
						</div>

						<div class="info-area pl0 pr0">
							<ul class="list-dotted">
								<li>결제 수단별 문구 상이하게 노출</li>
								<li>결제 수단별 문구 상이하게 노출</li>
								<li>은행계좌에서 결제금액이 이체됩니다.</li>
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
				
				<div class="info-area p25">
					<h4 class="tit-dep5">장바구니 안내사항</h4>

					<ul class="list-dotted">
                        <li>교재/도서 배송기간 – 발송일로부터 서울 2~3일, 지방 3~4일(일요일 및 법정 공휴일 제외)</li>
                        <li>교재/도서가 포함된 강좌는 교재/도서가 반송되어야 취소할 수 있습니다.</li>
                        <li>수강중인 강좌와 교재는 수강 중 재구매할 수 없습니다.</li>
                    </ul>

					<div class="txt">
						<a href="javascript:void(0)"class="txt-underline">시대인재 상품별 환불 규정</a>
						<a href="javascript:void(0)"class="txt-underline">교재 배송 및 구매 안내</a>
					</div>
				</div>
				
				<hr class="hr">

				<div class="input-area">
					<div class="list-area">
						<ul>
							<li>
								<label class="input-checkbox">
									<input type="checkbox">
									<i class="ico-checkbox"></i>
									<p>비회원 구매 약관 동의</p>
								</label>
							</li>
							<li>
								<ul class="privacy-list">
									<li>
										<p>[필수] 수집하는 개인정보 항목</p>
										<span><a href="javascript:void" onclick="fnOpenModal('.modal-item');">보기</a></span>
									</li>
									<li>
										<p>[필수] 개인정보의 수집 및 이용 목적</p>
										<span><a href="javascript:void" onclick="fnOpenModal('.modal-purpose');">보기</a></span>
									</li>
									<li>
										<p>[필수] 개인정보의 보유 및 이용기간</p>
										<span><a href="javascript:void" onclick="fnOpenModal('.modal-period');">보기</a></span>
									</li>
								</ul>
							</li>
							<li>
								<label class="input-checkbox mb10">
									<input type="checkbox">
									<i class="ico-checkbox"></i>
									<p onclick="fnOpenModal('.modal-info');">[필수] 개인정보 위탁에 대한 안내</p>
								</label>
								<label class="input-checkbox">
									<input type="checkbox">
									<i class="ico-checkbox"></i>
									<p>주문할 상품의 상품명, 상품가격, 배송 정보, 환불 규정을 확인하였으며, 구매에 동의합니다. (전자상거래법 제8조 2항)</p>
								</label>
							</li>	
						</ul>
					</div>
				</div>
				<% End If %>
								
				<hr class="hr">

				<div class="content-area">
					<!-- S : btn-group -->
					<div class="btn-group"> 
						<a href="./orderEnd.asp" class="btn btn-black">결제하기</a>
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
	
	<!-- S : dim -->
	<link rel="stylesheet" type="text/css" href="/common/css/inc.dim.css?ver=<%= now() %>">
	<!-- #include file ="./inc.addressSelect.asp" -->
	<!-- #include file ="./inc.addressList.asp" -->
	<!-- #include file ="./inc.addressChange.asp" -->
	<!-- #include file ="./inc.addressAdd.asp" -->

	<!-- #include file ="./inc.privacyItem.asp" -->
	<!-- #include file ="./inc.privacyPurpose.asp" -->
	<!-- #include file ="./inc.privacyPeriod.asp" -->
	<!-- #include file ="./inc.privacyInfo.asp" -->
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
	
	var IfMyDelvDelProc = function() { /* delvSeq */
	confirm("해당 배송지를 삭제하시겠습니까?")
     /*if (confirm("해당 배송지를 삭제하시겠습니까?")) {
       $.ajax({
            type: "POST",
            url: "./delvUserDelProc.asp",
            timeout: 5000,
            data: {delvSeq: delvSeq},
            contentType: "application/x-www-form-urlencoded; charset=UTF-8",
            async: false,
            dataType: "json",
            success: function(msg) {
                if (msg.status == "200") {
                    IfDelvUserList();
                } else {
                    alert(msg.result);
                } 
            },
            error : function(data, msg) {
                alert("관리자에게 문의하세요.(" + msg + ")");
            }
        }); */
    }
</script>