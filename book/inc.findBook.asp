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