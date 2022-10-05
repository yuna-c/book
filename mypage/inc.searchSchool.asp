<div class="modal-wrap">
	<div class="modal-bg"></div>

	<div class="modal-container modal-school">
		<div class="modal-header">
			<a href="javascript:void(0)" class="ico ico-back" onclick="fnCloseModal('.modal-school');">돌아가기</a>
			<h2 class="dep-tit2">학교검색</h2>
			<a href="javascript:void(0)" class="ico ico-myinfo">장바구니</a> 
		</div>

		<div class="modal-content">
			<!-- S : 학교 선택 -->
			<div class="board-layout">
				<div class="board-tab">
					<div class="tab-list">
						<a href="javascript:void(0);">중학교</a>
						<a href="javascript:void(0);" class="selected">고등학교</a>
					</div>
					<!-- S : 학교 검색 -->
					<div class="search-area">
						<div class="search-form">
							<label class="input-search on">
								<input type="text" id="" name="" value="리라" placeholder="검색어 2자 이상 입력" required>
							</label>
							<button type="button" class="btn del" onclick="delInputVal(this)">
								<span class="ico ico-del" onclick="delInput(this)">삭제</span>
							</button>
							<button type="button" class="btn">
								<i class="ico ico-search">검색</i>
							</button>
						</div>
					</div>
					<!--// E : 학교 검색 -->
					<div class="tab-content tab-on">
						<div class="school-list">
							<ul>
								<% For i = 1 to 10 %>
								<li><a href="javascript:void(0);">리라아트중학교</a></li>
								<li><a href="javascript:void(0);">휘문중학교</a></li>
								<li><a href="javascript:void(0);">이화여자중학교</a></li>
								<% Next %>
								<li class="no-data">
									일치하는 학교명이 없습니다.
								</li>	
							</ul>
						</div>
					</div>
					<div class="tab-content">
						<div class="school-list">
							<ul>
								<% For i = 1 to 10 %>
								<li><a href="javascript:void(0);">리라아트고등학교</a></li>
								<li><a href="javascript:void(0);">휘문고등학교</a></li>
								<li><a href="javascript:void(0);">이화여자고등학교</a></li>
								<% Next %>
								<li class="no-data">
									일치하는 학교명이 없습니다.
								</li>	
							</ul>
						</div>
					</div>
				</div>
			</div>
			<!--// E : 학교 선택 -->
		</div>
	</div>

</div>

<script>
	function delInputVal(i){
        $(i).parents().children().find("input").val("");
    }
	function delInput(i){
        //$(i).parents().children().find(".on").remove();
		$(i).parents().children().find(".input-search").next().children().css({"display":"none"});
    }
</script>