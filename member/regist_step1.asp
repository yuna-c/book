<!--#include virtual="/common/inc/config.asp"-->
<!-- #include virtual="/common/include/inc.meta.asp" -->

<!-- S : 페이지별 css / script -->
<link rel="stylesheet" type="text/css" href="/common/css/inc.regist.css?ver=<%= now() %>">
<!--// E : 페이지별 css / script -->

<!-- #include virtual="/common/include/inc.header.asp" -->
	
	<!-- S : content -->
	<div id="content" class="regist-content">
		<!-- S : 페이지 헤더 -->
		<div class="content-header">
			<a href="javascript:history.back();" class="ico ico-back">돌아가기</a>
			<h2 class="dep-tit2">시대인재 통합 회원가입</h2>
			<a href="javascript:void(0)" class="ico ico-myinfo">장바구니</a>
		</div>	
		<!--// E : 페이지 헤더 -->

		<!-- S : 페이지 내용 -->
		<div class="content-container">
			<div class="wide-layout">
				<div class="content-layout">
					<div class="info-area">
						<h3 class="tit-dep6">
							시대인재 통합 회원가입<br>
							<small>회원이 되시면 하나의 ID와 비밀번호로 시대인재 및 시대인재북스 사이트를 모두 이용하실 수 있습니다.</small>	
						</h3>
						<a href="javascript:void(0)" class="txt-underline">시대인재 가입 여부 확인</a>
					</div>
				</div>
				

				<hr class="hr">
				
				<div class="content-layout mt25">
					<div class="board-layout">
						<div class="board-tab">
							<div class="tab-list2">
								<a href="javascript:void(0);" class="selected">14세 미만<br>미성년<br>회원가입</a>
								<a href="javascript:void(0);">만 14세 이상<br>학생<br>회원가입</a>
								<a href="javascript:void(0);">학부모/일반<br>회원가입</a>
							</div>
							<!-- S : 14세 미만 미성년 회원 가입 -->
							<div class="tab-content tab-on">
								<span class="info-txt mb20">만 14세 미만 회원으로 가입하시려면 보호자(부모님, 법정 대리인)의 동의가 필요합니다.</span>

								<div class="form-area border-top">
									<dl>
										<dt>보호자 이름<span class="color-red">*</span></dt>
										<dd>
											<div class="form-type">
												<label class="input-text">
													<input type="text" name="" id="" value="" placeholder="">
												</label>
											</div>
										</dd>
										<dt>보호자 휴대폰번호<span class="color-red">*</span></dt>
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

												<ul class="list-dotted mb20">
													<li>입력한 휴대폰번호로 인증번호가 발송됩니다.</li>
													<li>1개의 휴대폰번호로 1개의 아이디만 가입 가능합니다.</li>
												</ul>
											</div>
										</dd>
									</dl>
								</div>
							</div>
							<!--// E : 14세 미만 미성년 회원 가입 -->

							<!-- S : 14세 이상 학생 회원 가입 -->
							<div class="tab-content">
								<div class="form-area">
									<dl>
										<dt>이름<span class="color-red">*</span></dt>
										<dd>
											<div class="form-type">
												<label class="input-text">
													<input type="text" name="" id="" value="" placeholder="">
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

												<ul class="list-dotted mb20">
													<li>입력한 휴대폰번호로 인증번호가 발송됩니다.</li>
													<li>1개의 휴대폰번호로 1개의 아이디만 가입 가능합니다.</li>
												</ul>
											</div>
										</dd>
									</dl>
								</div>
							</div>
							<!--// E : 14세 이상 학생 회원 가입 -->

							<!-- S : 학부모/일반 회원 가입 -->
							<div class="tab-content">
								<div class="form-area">
									<dl>
										<dt>이름<span class="color-red">*</span></dt>
										<dd>
											<div class="form-type">
												<label class="input-text">
													<input type="text" name="" id="" value="" placeholder="">
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

												<ul class="list-dotted mb20">
													<li>입력한 휴대폰번호로 인증번호가 발송됩니다.</li>
													<li>1개의 휴대폰번호로 1개의 아이디만 가입 가능합니다.</li>
												</ul>
											</div>
										</dd>
									</dl>
								</div>
							</div>
							<!--// E : 학부모/일반 회원 가입 -->
						</div>
					</div>

					<div class="btn-group pt75"> 
						<a href="./regist_step2.asp" class="btn btn-black">확인</a>
					</div>
				</div>

			</div>
		</div>
		<!--// E : 페이지 내용 -->
	</div>
	<!--// E : content -->

<!-- #include virtual="/common/include/inc.footer.asp" -->

<script>
	$(function(){});
</script>