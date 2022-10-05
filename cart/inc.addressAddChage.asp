<div class="modal-wrap">
	<div class="modal-bg"></div>

	<div class="modal-container modal-addChange">
		<div class="modal-header">
			<a href="javascript:void(0)" class="ico ico-back" onclick="fnCloseModal('.modal-addChange');">돌아가기</a>
			<h2 class="dep-tit2">배송지 수정</h2>
			<a href="javascript:void(0)" class="ico ico-myinfo">장바구니</a> 
		</div>

		<div class="modal-content">
			<!-- S : 배송지 수정하기 -->
			<div class="add-area">
				<ul>
					<li>	
						<div class="form-area">
							<dl>
								<dt>배송지명<span class="color-red">*</span></dt>
								<dd>
									<div class="form-type">
										<label class="input-text">
											<input type="text" name="" id="" value="">
										</label>
									</div>
								</dd>
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
			<!--// E : 배송지 수정하기 -->
		</div>
	</div>

</div>