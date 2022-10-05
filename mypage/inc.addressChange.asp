<div class="modal-wrap">
	<div class="modal-bg"></div>

	<div class="modal-container modal-change">
		<div class="modal-header">
			<a href="javascript:void(0)" class="ico ico-back" onclick="fnCloseModal('.modal-change');">돌아가기</a>
			<h2 class="dep-tit2">배송지 변경하기</h2>
			<a href="javascript:void(0)" class="ico ico-myinfo">장바구니</a> 
		</div>

		<div class="modal-content">
			<!-- S : 배송지 변경하기 -->
			<div class="info-area p0">
				<div class="gray-box">
					<ul class="list-dotted pr20">
						<li>주문번호 당 하나의 배송지로만 변경 가능합니다. </li>
						<li>
							주문상품의 배송상태가 [배송준비중]일 때만 변경 가능하며
							[배송중] 상태의 상품 배송지 변경은 고객센터 (1522-0568 또는           
							1:1상담)로 문의주시기 바랍니다. 
						</li>
					</ul>
				</div>
			</div>

			<div class="add-area">
				<ul>
					<li>
						<h4 class="dep-tit6">현재배송지</h4>	
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
							</ul>
						</div>
					</li>
					<li>
						<h4 class="dep-tit6">변경배송지</h4>	
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
					</li>
					<li>
						<!-- S : btn-group -->
						<div class="btn-group mt30"> 
							<a href="javascript:void(0);" class="btn btn-black">저장</a>
						</div>
						<!--// E : btn-group -->
					</li>
				</ul>
			</div>
			<!--// E : 배송지 변경하기 -->
		</div>
	</div>

</div>