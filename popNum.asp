<!--#include virtual="/common/inc/config.asp"-->
<!-- #include virtual="/common/include/inc.meta.asp" -->

<!-- S : 페이지별 css / script -->
<link rel="stylesheet" type="text/css" href="/common/css/inc.book.css?ver=<%= now() %>">
<!--// E : 페이지별 css / script -->

<!-- #include virtual="/common/include/inc.header.asp" -->
	
	<!-- S : content -->
	<div id="content">

		<!-- S : 페이지 내용 -->
		<div class="content-container book-container">
			
			<!-- S : 검색유형 -->
			<div class="sort-area mb20">
				<div class="filter-area">
					<div class="btn-area">
						<button class="btn vertical" onclick="fnOpenModal('.modal-sort');">
							유형·저자 검색
						</button>
					</div>
					<style>
						
					</style>
					<div class="btn-area select-area relative">
						<button class="btn horizontal" id="select">
							최신순
						</button>

						<div class="drop-area">
							<button class="btn" onclick="selectBtn(this)">최신순</button>
							<button class="btn" onclick="selectBtn(this)">인기순</button>
						</div>
					</div>
				</div>
			</div>
			
			<div class="content-layout">
			
			</div>
		</div>
		<!-- // E : 페이지 내용 -->
	</div>
	<!--// E : content -->

	<!-- S : dim -->
	<link rel="stylesheet" type="text/css" href="/common/css/inc.dim.css?ver=<%= now() %>">

	<div class="modal-wrap">
		<div class="modal-bg"></div>

		<div class="modal-container modal-sort">
			<div class="modal-header">
				<div class="logo">
					<a href="javascript:void(0)" onclick="fnCloseModal('.modal-sort');" >
						<i class="ico ico-close"></i>
					</a>
				</div>
			</div>

			<div class="modal-content mt40">
				<!-- S : 필터(단계) -->
				<div class="cheched-content cheched-type">
					<h3 class="filter-tit">유형</h3>

					<div class="filter-check">
						<label class="input-checkbox">
							<input type="checkbox" onclick="fnSearchFilter(this, '.btn-grade')" class="check-all">
							전체 선택
							<span class='bg'>&nbsp;</span>
						</label>

						<label class="input-checkbox selected">
							<input type="checkbox" onclick="fnSearchFilter(this, '.btn-grade')">
							개념+실전서
							<span class='bg'>&nbsp;</span>
						</label>

						<label class="input-checkbox selected">
							<input type="checkbox" onclick="fnSearchFilter(this, '.btn-grade')">
							N제
							<span class='bg'>&nbsp;</span>
						</label>

						<label class="input-checkbox">
							<input type="checkbox" onclick="fnSearchFilter(this, '.btn-grade')">
							모의고사
							<span class='bg'>&nbsp;</span>
						</label>

						<label class="input-checkbox">
							<input type="checkbox" onclick="fnSearchFilter(this, '.btn-grade')">
							기출
							<span class='bg'>&nbsp;</span>
						</label>

						<label class="input-checkbox">
							<input type="checkbox" onclick="fnSearchFilter(this, '.btn-grade')">
							아몰랑아몰랑
							<span class='bg'>&nbsp;</span>
						</label>
					</div>

					<h3 class="filter-tit mt40">저자</h3>

					<div class="filter-check">
						<label class="input-checkbox">
							<input type="checkbox" onclick="fnSearchFilter(this, '.btn-grade')">
							UAA팀, DCAF팀
							<span class='bg'>&nbsp;</span>
						</label>

						<label class="input-checkbox">
							<input type="checkbox" onclick="fnSearchFilter(this, '.btn-grade')">
							상상국어
							<span class='bg'>&nbsp;</span>
						</label>

						<label class="input-checkbox">
							<input type="checkbox" onclick="fnSearchFilter(this, '.btn-grade')">
							Co:Re 사회탐구연구소
							<span class='bg'>&nbsp;</span>
						</label>

						<label class="input-checkbox">
							<input type="checkbox" onclick="fnSearchFilter(this, '.btn-grade')">
							강철중
							<span class='bg'>&nbsp;</span>
						</label>

						<label class="input-checkbox">
							<input type="checkbox" onclick="fnSearchFilter(this, '.btn-grade')">
							In/del
							<span class='bg'>&nbsp;</span>
						</label>

						<label class="input-checkbox">
							<input type="checkbox" onclick="fnSearchFilter(this, '.btn-grade')">
							이상 도덕 윤리 연구
							<span class='bg'>&nbsp;</span>
						</label>

						<label class="input-checkbox">
							<input type="checkbox" onclick="fnSearchFilter(this, '.btn-grade')">
							TEAM PHASE
							<span class='bg'>&nbsp;</span>
						</label>

						<label class="input-checkbox">
							<input type="checkbox" onclick="fnSearchFilter(this, '.btn-grade')">
							강철중
							<span class='bg'>&nbsp;</span>
						</label>

						<label class="input-checkbox">
							<input type="checkbox" onclick="fnSearchFilter(this, '.btn-grade')">
							UAA팀, DCAF팀
							<span class='bg'>&nbsp;</span>
						</label>
					</div>
				</div>
				<!--// E : 필터(단계) -->
			</div>

			<div class="modal-footer modal-count">
				<a href="javascript:void(0)" class="btn btn-default btn-gray">초기화</a>
				<a href="javascript:void(0)" onclick="fnOpenPopover('.cheched-type', this);" class="btn btn-default btn-black btn-grade">도서찾기<span class="num"></span></a>
			</div>
		</div>

	</div>
	<!--// E : dim -->		


<!-- #include virtual="/common/include/inc.footer.asp" -->

<script>
	$(function(){});
	
	// select btn
	$('.select-area').on('click', function(){
		$(this).toggleClass('selected');
	});


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
		var num = $obj.parents('.cheched-content').find('input[type="checkbox"]:checked').not('.check-all').length;
	
		if( num === 0 ){
			$btnObj.removeClass('selected');
		}else{
			$btnObj.addClass('selected').children('.num').text("("+ num+ ")");
			$btnObj.addClass('selected').find('input[name=name]').val();
		
		}
	}
</script>