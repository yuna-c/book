<!--#include virtual="/common/inc/config.asp"-->
<!-- #include virtual="/common/include/inc.meta.asp" -->

<!-- S : 페이지별 css / script -->
<link rel="stylesheet" type="text/css" href="/common/css/inc..css?ver=<%= now() %>">
<!--// E : 페이지별 css / script -->

<!-- #include virtual="/common/include/inc.header.asp" -->
	
	<!-- S : content -->
	<div id="content">
		<div class="content-container">
			

		<style>
		[class^='ico-']{ background-position:50% 50%; }
/* input, select, textarea */
.input-checkbox{ display:inline-block; position:relative; font-size:18px; cursor:pointer; }
.input-checkbox input[type='checkbox']{ width:0; height:0; position:absolute; opacity:0; }
.input-checkbox .ico-checkbox{ width:24px; height:24px; background-image:url(//img.sdij.com/sdijx/common/ico_checkbox.png); }
.input-checkbox input[type='checkbox']:checked ~ .ico-checkbox{ background-image:url(//img.sdij.com/sdijx/common/ico_checkbox_on.png); }

.input-radio{ display:inline-block; position:relative; font-size:18px; cursor:pointer; }
.input-radio input[type='radio']{ width:0; height:0; position:absolute; opacity:0; }
.input-radio .ico-radio{ width:24px; height:24px; background-image:url(//img.sdij.com/sdijx/common/ico_radio.png); }
.input-radio input[type='radio']:checked ~ .ico-radio{ background-image:url(//img.sdij.com/sdijx/common/ico_radio_on.png); }


/* btn */
.btn{ height:40px; line-height:38px; padding:0 20px; display:inline-block; position:relative; background-color:#fff; border:none; border:1px solid #000; border:1px solid #000; border-radius:20px; font-size:14px; font-weight:700; letter-spacing:-0.44px; text-align:center; vertical-align:top; overflow:hidden; transition:all .3s ease-out .3s; cursor:pointer; }
.btn:hover, .btn:focus{ background-color:#fff; border-color:#7f7f7f; color:#7f7f7f; transition:all .3s ease-out .3s; }
.btn:hover:before{ z-index:10; transform:scaleX(1); transition:all .5s ease-out; }
.btn-M{ height:32px; line-height:30px; padding:0 12px; border-radius:16px; }
.btn-L{ height:48px; line-height:46px; border-radius:24px; }

.sort-area{ margin-bottom:20px; display:flex; align-items:center; }
.sort-area .info-txt{ font-weight:700; }
.sort-area .sort-side{ margin-left:auto; }
.sort-area .btn{ height:30px; line-height:28px; padding:0 10px; font-size:12px; }
.sort-area .input-date{ width:148px; display:inline-flex; }
.sort-area .input-date input{ height:30px; line-height:28px; border:none; border-radius:15px; font-size:14px; font-weight:500; }
.sort-area .toggle-radio span{ height:30px; line-height:28px; padding:0 10px; border:none; border-radius:15px; font-size:14px; font-weight:500; }
.sort-area .form-toggle > *{ margin:0 5px; flex:none; }
.sort-area .date-sort .dash{ margin:0 5px; }
.sort-area .date-sort + .form-toggle{ margin-left:15px; }

.sort-area.sort-border{ padding:10px 0; position:relative; }
.sort-area.sort-border:before, .sort-area.sort-border:after{ content:''; height:10px; display:block; position:absolute; top:0; left:0; right:0; background:linear-gradient(to right, #000 33%, rgba(255, 255, 255, 0) 34%) 0 0 repeat-x; background-size:3px 1px; }
.sort-area.sort-border:after{ top:auto; bottom:0; background-position:0 100%; }

.filter-area{ margin:0 -5px; font-size:0; }
.filter-area > *{ margin:0 5px; }
.filter-area .btn.on{ background-color:#ceffea; border-color:#ceffea; }
.filter-area .btn.selected{ background-color:#ceffea; border-color:#000; }
.filter-area .btn .num{ width:16px; height:16px; line-height:16px; margin-left:2px; display:none; position:relative; top:-1px; background-color:#e9e9e9; border-radius:8px; text-align:center; vertical-align:baseline; }
.filter-area .btn.selected .num{ display:inline-block; }

/* popover */
.popover-wrap{ padding:20px; display:none; position:absolute; background-color:#fff; border-radius:10px; box-shadow:0 8px 16px 0 rgba(0, 0, 0, .2); z-index:999; }
.popover-container{ display:none; }

.popover-container .popover-header{ display:none; }
.popover-container .popover-header .btn-close{ width:20px; height:24px; display:block; position:absolute; top:26px; right:20px; font-size:0; z-index:999; }
.popover-container .popover-header .btn-close:before{ content:''; width:100%; height:2px; position:absolute; top:5px; left:0; background-color:#000; transform:translateY(300%) rotate(-45deg); }
.popover-container .popover-header .btn-close:after{ content:''; width:100%; height:2px; position:absolute; top:auto; bottom:5px; background-color:#000; transform:translate(0, -6px) rotate(45deg); }

.popover-container .popover-tit{ margin:20px 0 10px; font-weight:500; }
.popover-container .popover-tit:first-child{ margin-top:0; }
.popover-container .filter-check{ width:360px; }
.popover-container .filter-check > .input-checkbox{ margin-bottom:10px; display:block; }

.popover-container .popover-btn{ padding-top:20px; text-align:right; }
		</style>

		<!-- S : 검색 영역 -->
		<div class="sort-area sort-border">
			<!-- S : 필터 -->
			<div class="filter-area">
				<a href="javascript:void(0)" onclick="fnOpenPopover('.popover-grade', this);" class="btn btn-grade">
					단계
					<span class="num"></span>
				</a>
				<a href="javascript:void(0)" onclick="fnOpenPopover('.popover-curri', this);" class="btn btn-curri">
					진행(월)
					<span class="num"></span>
				</a>
				<a href="javascript:void(0)" onclick="fnOpenPopover('.popover-subject', this);" class="btn btn-subject">
					과목
					<span class="num"></span>
				</a>
			</div>
			<!--// E : 필터 -->

			<div class="sort-side btn-area">
				<!-- S : 검색 input -->
				<label class="input-search">
					<input type="text" id="" name="" placeholder="검색어를 입력해주세요.">
				</label>
				<!--// E : 검색 input -->

				<!-- S : 리스트 정렬 -->
				<label class="select select-sort">
					<select>
						<option hidden>정렬</option>
						<option value="">최신순</option>
					</select>
				</label>
				<!--// E : 리스트 정렬 -->
			</div>
		</div>
		<!--// E : 검색 영역 -->





		<!-- S : popover --> 
		<div class="popover-wrap">
			<!-- S : 필터(단계) -->
			<div class="popover-container popover-grade">
				<div class="popover-header">
					<h3 class="tit-dep4">필터</h3>

					<a href="javascript:void(0);" class="btn-close"><span>팝업 닫기</span></a>
				</div>

				<div class="popover-content">
					<h3 class="popover-tit">단계</h3>

					<div class="filter-check">
						<label class="input-checkbox">
							<input type="checkbox" onclick="fnSearchFilter(this, '.btn-grade')">
							<i class="ico-checkbox"></i>
							기초
						</label>

						<label class="input-checkbox">
							<input type="checkbox" onclick="fnSearchFilter(this, '.btn-grade')">
							<i class="ico-checkbox"></i>
							개념
						</label>

						<label class="input-checkbox">
							<input type="checkbox" onclick="fnSearchFilter(this, '.btn-grade')">
							<i class="ico-checkbox"></i>
							문제풀이
						</label>

						<label class="input-checkbox">
							<input type="checkbox" onclick="fnSearchFilter(this, '.btn-grade')">
							<i class="ico-checkbox"></i>
							서바이벌
						</label>

						<label class="input-checkbox">
							<input type="checkbox" onclick="fnSearchFilter(this, '.btn-grade')">
							<i class="ico-checkbox"></i>
							파이널
						</label>
					</div>
				</div>

				<div class="popover-btn">
					<a href="javascript:void(0)" class="btn btn-black btn-submit">저장</a>
				</div>
			</div>
			<!--// E : 필터(단계) -->

			<!-- S : 필터(진행(월)) -->
			<div class="popover-container popover-curri">
				<div class="popover-header">
					<h3 class="tit-dep4">필터</h3>

					<a href="javascript:void(0);" class="btn-close"><span>팝업 닫기</span></a>
				</div>

				<div class="popover-content">
					<h3 class="popover-tit">진행(월)</h3>

					<div class="filter-check row row-col2">
						<label class="input-checkbox w100">
							<input type="checkbox" onclick="fnSearchFilter(this, '.btn-curri')" class="check-all">
							<i class="ico-checkbox"></i>
							전체
						</label>

						
						<label class="input-checkbox">
							<input type="checkbox" onclick="fnSearchFilter(this, '.btn-curri')">
							<i class="ico-checkbox"></i>
							1월
						</label>
						
						<label class="input-checkbox">
							<input type="checkbox" onclick="fnSearchFilter(this, '.btn-curri')">
							<i class="ico-checkbox"></i>
							2월
						</label>
						
						<label class="input-checkbox">
							<input type="checkbox" onclick="fnSearchFilter(this, '.btn-curri')">
							<i class="ico-checkbox"></i>
							3월
						</label>
						
						<label class="input-checkbox">
							<input type="checkbox" onclick="fnSearchFilter(this, '.btn-curri')">
							<i class="ico-checkbox"></i>
							4월
						</label>
						
						<label class="input-checkbox">
							<input type="checkbox" onclick="fnSearchFilter(this, '.btn-curri')">
							<i class="ico-checkbox"></i>
							5월
						</label>
						
						<label class="input-checkbox">
							<input type="checkbox" onclick="fnSearchFilter(this, '.btn-curri')">
							<i class="ico-checkbox"></i>
							6월
						</label>
						
						<label class="input-checkbox">
							<input type="checkbox" onclick="fnSearchFilter(this, '.btn-curri')">
							<i class="ico-checkbox"></i>
							7월
						</label>
						
						<label class="input-checkbox">
							<input type="checkbox" onclick="fnSearchFilter(this, '.btn-curri')">
							<i class="ico-checkbox"></i>
							8월
						</label>
						
						<label class="input-checkbox">
							<input type="checkbox" onclick="fnSearchFilter(this, '.btn-curri')">
							<i class="ico-checkbox"></i>
							9월
						</label>
						
						<label class="input-checkbox">
							<input type="checkbox" onclick="fnSearchFilter(this, '.btn-curri')">
							<i class="ico-checkbox"></i>
							10월
						</label>
						
						<label class="input-checkbox">
							<input type="checkbox" onclick="fnSearchFilter(this, '.btn-curri')">
							<i class="ico-checkbox"></i>
							11월
						</label>
						
						<label class="input-checkbox">
							<input type="checkbox" onclick="fnSearchFilter(this, '.btn-curri')">
							<i class="ico-checkbox"></i>
							12월
						</label>
						
					</div>
				</div>

				<div class="popover-btn">
					<a href="javascript:void(0)" class="btn btn-black btn-submit">저장</a>
				</div>
			</div>
			<!--// E : 필터(진행(월)) -->

			<!-- S : 필터(과목) -->
			<div class="popover-container popover-subject">
				<div class="popover-header">
					<h3 class="tit-dep4">필터</h3>

					<a href="javascript:void(0);" class="btn-close"><span>팝업 닫기</span></a>
				</div>

				<div class="popover-content">
					<h3 class="popover-tit">과목</h3>

					<div class="filter-check row row-col2">
						<label class="input-checkbox">
							<input type="checkbox" value="국어" onclick="fnSearchFilter(this, '.btn-subject')">
							<i class="ico-checkbox"></i>
							국어
						</label>

						<label class="input-checkbox">
							<input type="checkbox" onclick="fnSearchFilter(this, '.btn-subject')">
							<i class="ico-checkbox"></i>
							영어
						</label>

						<label class="input-checkbox">
							<input type="checkbox" onclick="fnSearchFilter(this, '.btn-subject')">
							<i class="ico-checkbox"></i>
							수학
						</label>

						<label class="input-checkbox">
							<input type="checkbox" onclick="fnSearchFilter(this, '.btn-subject')">
							<i class="ico-checkbox"></i>
							과탐
						</label>

						<label class="input-checkbox">
							<input type="checkbox" onclick="fnSearchFilter(this, '.btn-subject')">
							<i class="ico-checkbox"></i>
							사탐
						</label>

						<label class="input-checkbox">
							<input type="checkbox" onclick="fnSearchFilter(this, '.btn-subject')">
							<i class="ico-checkbox"></i>
							한국사
						</label>
					</div>
				</div>

				<div class="popover-btn">
					<a href="javascript:void(0)" class="btn btn-black btn-submit">저장</a>
				</div>
			</div>
			<!--// E : 필터(과목) -->
		</div>

		<script>
			// popover open
			function fnOpenPopover(obj, pos){ // fnOpenPopover(오픈하고 싶은 class or id)
				var $popover = $(obj),
					$posObj = $(pos),

					$posTop = $posObj.offset().top + $('#wrap').scrollTop() + $posObj.height() + 10,
					$posLeft = $posObj.offset().left;

				if( $popover.siblings().length < 0 ) $popover.siblings().hide();

				$posObj.addClass('on');

				if( isMobile() ){ // mobile popover open
					$popover.show().parents('.popover-wrap').addClass('popover-m').show();
				}else{ // pc popover open
					$popover.show().parents('.popover-wrap').css({'top' : $posTop + 'px', 'left' : $posLeft + 'px'}).show();

					$(document).mouseup(function(e){
						if ( !$popover.parents('.popover-wrap').is(e.target) && $popover.parents('.popover-wrap').has(e.target).length === 0 ){
							$posObj.removeClass('on');
							$popover.hide().parents('.popover-wrap').hide();
						}
					});
				}

				$popover.on('click', '.btn-close, .btn-submit', function(){
					$posObj.removeClass('on');
					$popover.hide().parents('.popover-wrap').hide();
				});
			}
			
			function isMobile(){
				var UserAgent = navigator.userAgent,
					UserPlatform = window.navigator.platform,
					macPlatforms = ['Macintosh', 'MacIntel', 'MacPPC', 'Mac68K'],
					touchPoints = navigator.maxTouchPoints;

				if( UserAgent.match(/iPhone|iPod|iPad|Android|Windows CE|BlackBerry|Symbian|Windows Phone|webOS|Opera Mini|Opera Mobi|POLARIS|IEMobile|lgtelecom|nokia|SonyEricsson/i) !== null || UserAgent.match(/LG|SAMSUNG|Samsung/) !== null ){ // mobile
					return true;
					
				}else{ // pc
					if( macPlatforms.indexOf(UserPlatform) !== -1 ){ // mac os
						if( touchPoints > 0 ){ // ipad safari
							return true;
						}else{
							return false;
						}
					}else{ 
						return false;
					}
				}
			}


			// 검색 필터 클릭 시 
			function fnSearchFilter(obj, btnObj){
				var $obj = $(obj);
				var $btnObj = $(btnObj);
		
				// 월별 전체 클릭 시
				if( $obj.hasClass('check-all') === true ){
					var $checked = $obj.prop('checked');
					console.log($obj.parent().parent());
					$obj.parent().parent().find('input[type="checkbox"]').prop('checked', $checked);
				}
		
				// 필터 개수 표기
				var num = $obj.parents('.popover-container').find('input[type="checkbox"]:checked').not('.check-all').length;
		
				if( num === 0 ){
					$btnObj.removeClass('selected');
				}else{
					$btnObj.addClass('selected').children('.num').text(num);
					$btnObj.addClass('selected').find('input[name=name]').val();
				
				}
			}
		</script>
		<!--// E : popover -->
		</div>
	</div>
	<!--// E : content -->

<!-- #include virtual="/common/include/inc.footer.asp" -->

<script>
	$(function(){});
</script>