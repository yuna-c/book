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
			<div class="content-layout">
				<div class="form-area">
					<dl>
						<% If false Then '14세 미만 미성년 회원 가입일 때 %>
						<dt>이름<span class="color-red">*</span></dt>
						<dd>
							<div class="form-type">
								<label class="input-text">
									<input type="text" name="" id="" value="" placeholder="">
								</label>
							</div>
						</dd>
						<dt>아이디<span class="color-red">*</span></dt>
						<dd>
							<div class="form-type">
								<div class="row">
									<label class="input-text">
										<input type="text" name="" id="" value="" placeholder="">
										<button type="button" class="btn btn-search color-black">중복확인</button>
									</label>
								</div>
							</div>
							<span class="info-txt mb20">6자 이상의 영문, 영문+숫자조합</span>
						</dd>
						<dt>비밀번호<span class="color-red">*</span></dt>
						<dd>
							<div class="form-type">
								<div class="row">
									<label class="input-text">
										<input type="password" name="" id="" value="" placeholder="">
									</label>
								</div>
							</div>
							<span class="info-txt mb20">8자 이상의 영문, 숫자, 특수문자 중 2가지 조합</span>
						</dd>
						<dt>비밀번호확인<span class="color-red">*</span></dt>
						<dd>
							<div class="form-type">
								<label class="input-text">
									<input type="password" name="" id="" value="" placeholder="">
								</label>
							</div>
						</dd>
						<dt>생년월일<span class="color-red">*</span></dt>
						<dd>
							<div class="form-type flex-area">
								<span class="col col-30">	
									<label class="select">
										<select name="" id="">
											<option value="일">년</option>
											<option value="2022">2022</option>
										</select>
									</label>
								</span>

								<span class="col col-30">	
									<label class="select">
										<select name="" id="">
											<option value="월">월</option>
											<option value="1">1</option>
											<option value="2">2</option>
											<option value="3">3</option>
											<option value="4">4</option>
											<option value="5">5</option>
											<option value="6">6</option>
											<option value="7">7</option>
											<option value="8">8</option>
											<option value="9">9</option>
											<option value="10">10</option>
											<option value="11">11</option>
											<option value="12">12</option>
										</select>
									</label>
								</span>

								<span class="col col-30">	
									<label class="select">
										<select name="" id="">
											<option value="일">일</option>
											<option value="1">1</option>
											<option value="2">2</option>
											<option value="3">3</option>
											<option value="4">4</option>
											<option value="5">5</option>
											<option value="6">6</option>
											<option value="7">7</option>
											<option value="8">8</option>
											<option value="9">9</option>
											<option value="10">10</option>
											<option value="11">11</option>
											<option value="12">12</option>
											<option value="13">13</option>
											<option value="14">14</option>
											<option value="15">15</option>
											<option value="16">16</option>
											<option value="17">17</option>
											<option value="18">18</option>
											<option value="19">19</option>
											<option value="20">20</option>
											<option value="21">21</option>
											<option value="22">22</option>
											<option value="23">23</option>
											<option value="24">24</option>
											<option value="25">25</option>
											<option value="26">26</option>
											<option value="27">27</option>
											<option value="28">28</option>
											<option value="29">29</option>
											<option value="30">30</option>
											<option value="31">31</option>
										</select>
									</label>
								</span>
							</div>
						</dd>
						<dt>성별<span class="color-red">*</span></dt>
						<dd>
							<div class="radio-area border-none">
								<ul>
									<li>
										<label class="input-radio">
											<input type="radio" checked>
											<i class="ico-radio"></i>
											<span>남자</span>
										</label>
									</li>
									<li>
										<label class="input-radio">
											<input type="radio">
											<i class="ico-radio"></i>
											<span>여자</span>
										</label>
									</li>
								</ul>
							</div>
						</dd>
						<dt>휴대폰번호<span class="color-red">*</span></dt>
						<dd>
							<div class="form-type">
								<div class="row border-none disabled">
									<span class="col-35">
										<label class="select">
											<select name="" id="" disabled>
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
											<input type="text" name="" id="" value="" placeholder="0000" maxlength="4"  readonly="readonly">
										</label>
										<span>-</span>
										<label class="input-text">
											<input type="text" name="" id="" value="" placeholder="0000" maxlength="4" readonly="readonly">
										</label>
									</span>
								</div>
							</div>
						</dd>
						<dt>상품, 입시, 이벤트 정보 알림</dt>
						<dd>
							<div class="radio-area border-none">
								<ul>
									<li>
										<label class="input-radio">
											<input type="radio" checked>
											<i class="ico-radio"></i>
											<span>받음</span>
										</label>
									</li>
									<li>
										<label class="input-radio">
											<input type="radio">
											<i class="ico-radio"></i>
											<span>받지않음</span>
										</label>
									</li>
								</ul>
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
						<dt>상품, 입시, 이벤트 정보 알림</dt>
						<dd>
							<div class="radio-area border-none">
								<ul>
									<li>
										<label class="input-radio">
											<input type="radio" checked>
											<i class="ico-radio"></i>
											<span>받음</span>
										</label>
									</li>
									<li>
										<label class="input-radio">
											<input type="radio">
											<i class="ico-radio"></i>
											<span>받지않음</span>
										</label>
									</li>
								</ul>
							</div>
						</dd>
						<dt>주소<span class="color-red">*</span></dt>
						<dd>
							<div class="form-type mb12">
								<label class="input-text">
									<input type="text" name="" id="" value="06178" readonly>
									<button type="button" class="btn btn-search color-black">검색</button>
								</label>
							</div>

							<div class="form-type mb12">
								<label class="input-text">
									<input type="text" name="" id="" value="서울 강남구 삼성동 333" readonly>
								</label>
							</div>
							
							<div class="form-type">
								<label class="input-text">
									<input type="text" name="" id="" value="" placeholder="나머지 주소">
								</label>
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

						<% Else '일반 회원가입일 때 %>
						<dt>이름<span class="color-red">*</span></dt>
						<dd>
							<div class="form-type">
								<label class="input-text">
									<input type="text" name="" id="" value="" placeholder="">
								</label>
							</div>
						</dd>
						<dt>아이디<span class="color-red">*</span></dt>
						<dd>
							<div class="form-type">
								<div class="row">
									<label class="input-text">
										<input type="text" name="" id="" value="" placeholder="">
										<button type="button" class="btn btn-search color-black">중복확인</button>
									</label>
								</div>
							</div>
							<span class="info-txt mb20">6자 이상의 영문, 영문+숫자조합</span>
						</dd>
						<dt>비밀번호<span class="color-red">*</span></dt>
						<dd>
							<div class="form-type">
								<div class="row">
									<label class="input-text">
										<input type="password" name="" id="" value="" placeholder="">
									</label>
								</div>
							</div>
							<span class="info-txt mb20">8자 이상의 영문, 숫자, 특수문자 중 2가지 조합</span>
						</dd>
						<dt>비밀번호확인<span class="color-red">*</span></dt>
						<dd>
							<div class="form-type">
								<label class="input-text">
									<input type="password" name="" id="" value="" placeholder="">
								</label>
							</div>
						</dd>
						<dt>생년월일<span class="color-red">*</span></dt>
						<dd>
							<div class="form-type flex-area">
								<span class="col col-30">	
									<label class="select">
										<select name="" id="">
											<option value="일">년</option>
											<option value="2022">2022</option>
										</select>
									</label>
								</span>

								<span class="col col-30">	
									<label class="select">
										<select name="" id="">
											<option value="월">월</option>
											<option value="1">1</option>
											<option value="2">2</option>
											<option value="3">3</option>
											<option value="4">4</option>
											<option value="5">5</option>
											<option value="6">6</option>
											<option value="7">7</option>
											<option value="8">8</option>
											<option value="9">9</option>
											<option value="10">10</option>
											<option value="11">11</option>
											<option value="12">12</option>
										</select>
									</label>
								</span>

								<span class="col col-30">	
									<label class="select">
										<select name="" id="">
											<option value="일">일</option>
											<option value="1">1</option>
											<option value="2">2</option>
											<option value="3">3</option>
											<option value="4">4</option>
											<option value="5">5</option>
											<option value="6">6</option>
											<option value="7">7</option>
											<option value="8">8</option>
											<option value="9">9</option>
											<option value="10">10</option>
											<option value="11">11</option>
											<option value="12">12</option>
											<option value="13">13</option>
											<option value="14">14</option>
											<option value="15">15</option>
											<option value="16">16</option>
											<option value="17">17</option>
											<option value="18">18</option>
											<option value="19">19</option>
											<option value="20">20</option>
											<option value="21">21</option>
											<option value="22">22</option>
											<option value="23">23</option>
											<option value="24">24</option>
											<option value="25">25</option>
											<option value="26">26</option>
											<option value="27">27</option>
											<option value="28">28</option>
											<option value="29">29</option>
											<option value="30">30</option>
											<option value="31">31</option>
										</select>
									</label>
								</span>
							</div>
						</dd>
						<dt>성별<span class="color-red">*</span></dt>
						<dd>
							<div class="radio-area border-none">
								<ul>
									<li>
										<label class="input-radio">
											<input type="radio" checked>
											<i class="ico-radio"></i>
											<span>남자</span>
										</label>
									</li>
									<li>
										<label class="input-radio">
											<input type="radio">
											<i class="ico-radio"></i>
											<span>여자</span>
										</label>
									</li>
								</ul>
							</div>
						</dd>
						<dt>휴대폰번호<span class="color-red">*</span></dt>
						<dd>
							<div class="form-type">
								<div class="row disabled">
									<span class="col-35">
										<label class="select">
											<select name="" id="" disabled>
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
											<input type="text" name="" id="" value="" placeholder="0000" maxlength="4" readonly>
										</label>
										<span>-</span>
										<label class="input-text">
											<input type="text" name="" id="" value="" placeholder="0000" maxlength="4" readonly>
										</label>
									</span>
								</div>
							</div>
						</dd>
						<dt>상품, 입시, 이벤트 정보 알림</dt>
						<dd>
							<div class="radio-area border-none">
								<ul>
									<li>
										<label class="input-radio">
											<input type="radio" checked>
											<i class="ico-radio"></i>
											<span>받음</span>
										</label>
									</li>
									<li>
										<label class="input-radio">
											<input type="radio">
											<i class="ico-radio"></i>
											<span>받지않음</span>
										</label>
									</li>
								</ul>
							</div>
						</dd>
						<dt>학교정보<span class="color-red">*</span></dt>
						<dd>
							<div class="form-type">
								<label class="input-text">
									<input type="text" name="" id="" value="" placeholder="OOO학교" disabled>
									<button type="button" class="btn btn-search color-black" onclick="fnOpenModal('.modal-school');">검색</button>
								</label>
							</div>
						</dd>
						<dt>계열/학년<span class="color-red">*</span></dt>
						<dd>
							<div class="form-type flex-area">
								<span class="col col-50">	
									<label class="select">
										<select name="" id="">
											<option value="계열">계열</option>
											<option value="이과">이과</option>
											<option value="문과">문과</option>
											<option value="예체능">예체능</option>
											<option value="기타">기타</option>
										</select>
									</label>
								</span>

								<span class="col col-50">	
									<label class="select">
										<select name="" id="">
											<option value="학년">학년</option>
											<option value="1학년">1학년</option>
											<option value="2학년">2학년</option>
											<option value="3학년">3학년</option>
											<option value="졸업생">졸업생</option>
										</select>
									</label>
								</span>
							</div>
						</dd>
						<dt>시대인재 재원여부<span class="color-red">*</span></dt>
						<dd>
							<div class="form-type flex-area">
								<span class="col col-50">	
									<label class="select">
										<select name="" id="">
											<option value="선택">선택</option>
											<option value="없음">없음</option>
											<option value="재원했었음">재원했었음</option>
											<option value="현재재원중">현재재원중</option>
										</select>
									</label>
								</span>

								<span class="col col-50">	
									<label class="select">
										<select name="" id="">
											<option value="재원캠퍼스">재원캠퍼스</option>
											<option value="대치">대치</option>
											<option value="분당">분당</option>
										</select>
									</label>
								</span>
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
						<dt>상품, 입시, 이벤트 정보 알림</dt>
						<dd>
							<div class="radio-area border-none">
								<ul>
									<li>
										<label class="input-radio">
											<input type="radio" checked>
											<i class="ico-radio"></i>
											<span>받음</span>
										</label>
									</li>
									<li>
										<label class="input-radio">
											<input type="radio">
											<i class="ico-radio"></i>
											<span>받지않음</span>
										</label>
									</li>
								</ul>
							</div>
						</dd>
						<dt>주소<span class="color-red">*</span></dt>
						<dd>
							<div class="form-type mb12">
								<label class="input-text">
									<input type="text" name="" id="" value="06178" readonly>
									<button type="button" class="btn btn-search color-black">검색</button>
								</label>
							</div>

							<div class="form-type mb12">
								<label class="input-text">
									<input type="text" name="" id="" value="서울 강남구 삼성동 333" readonly>
								</label>
							</div>
							
							<div class="form-type">
								<label class="input-text">
									<input type="text" name="" id="" value="" placeholder="나머지 주소">
								</label>
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
						<% End If %>
					</dl>
				</div>
			</div>
			<hr class="hr">

			<div class="content-layout">
				<div class="info-area">
					<p class="tit">
						시대인재 및 시대인재 북스 사이트를 이용하기 위한 통합 이용약관, 정보 활용 및 개인정보 제3자 제공에 모두 동의 합니다.
					</p>
				</div>

				<div class="input-area">
					<div class="cart-header">
						<div class="input-check">
							<label class="input-checkbox">
								<input type="checkbox" onchange="fnCartCheck(this);" checked>
								<i class="ico-checkbox"></i>
								<p>전체동의</p>
							</label>
						</div>
					</div>

					<div class="cart-content">
						<ul>
							<li>
								<label class="input-checkbox"><!-- onclick="fnOpenModal('.modal-info');"-->
									<input type="checkbox">
									<i class="ico-checkbox"></i>
									<p class="txt-underline"><a href="https://m.sdijbooks.com/member/applystep01_pop.asp" target="_blank">[필수] 시대인재 이용약관</a></p>
								</label>
							</li>
							<li>
								<label class="input-checkbox">
									<input type="checkbox">
									<i class="ico-checkbox"></i>
									<p class="txt-underline"><a href="https://m.sdijbooks.com/member/applystep02_pop.asp" target="_blank">[필수] 개인정보 처리방침</a></p>
								</label>
							</li>
							<li>
								<label class="input-checkbox">
									<input type="checkbox">
									<i class="ico-checkbox"></i>
									<p class="txt-underline"><a href="https://m.sdijbooks.com/member/applystep03_pop.asp" target="_blank">[선택] 개인정보 수집 및 프로모션 이용 안내</a></p>
								</label>
							</li>
						</ul>
					</div>
				</div>

				<div class="btn-group"> 
					<a href="./regist_step3.asp" class="btn btn-black">확인</a>
				</div>
		</div>
		<!--// E : 페이지 내용 -->
	</div>
	<!--// E : content -->

	<!-- S : dim -->
	<link rel="stylesheet" type="text/css" href="/common/css/inc.dim.css?ver=<%= now() %>">
	<!-- #include file ="./inc.searchSchool.asp" -->
	<!--// E : dim -->		

<!-- #include virtual="/common/include/inc.footer.asp" -->

<script>
	$(function(){});

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

	// 전체선택
	function fnCartCheck(obj){
        var $this = $(obj);
        var $thisCheck = $this.prop('checked');

        $this.parents('.cart-header').next('.cart-content').find('input[type="checkbox"]').prop('checked', $thisCheck);
    }
</script>