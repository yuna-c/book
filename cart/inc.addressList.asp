<div class="modal-wrap">
	<div class="modal-bg"></div>

	<div class="modal-container modal-list">
		<div class="modal-header">
			<a href="javascript:void(0)" class="ico ico-back" onclick="fnCloseModal('.modal-list');">돌아가기</a>
			<h2 class="dep-tit2">배송지 목록</h2>
			<a href="javascript:void(0)" class="ico ico-myinfo">장바구니</a> 
		</div>

		<div class="modal-content">
			<!-- S : 배송지 변경하기 -->
			<div class="info-area p0">
				<div class="gray-box">
					<a href="javascript:void(0);" class="btn btn-border-black" onclick="fnOpenModal('.modal-add');">배송지추가</a>
					<p>배송지 목록은 최대 5개까지 등록할 수 있습니다.</p>
				</div>
			</div>

			<div class="add-area">
				<ul>
					<% For i = 1 to 10 %>
					<li>
						
						<div class="txt-area">
							<a href="javascript:void(0)">
								<p class="name">우리집/정수민</p>
								<p class="address">
									(06178)<br>
									서울 강남구 삼성로 434 (쥬비스타워)<br>
									202-1310호
								</p>
								<p class="cellphone">010-0000-0000</p>
							</a>
							<p class="color-gray">
								<a href="javascript:void(0)" onclick="fnOpenModal('.modal-addChange');">수정</a>
								<a href="javascript:void(0)" onclick="IfMyDelvDelProc()">삭제</a>
							</p>
						</div>
					</li>
					<% Next %>
					<li class="no-data">
						<p>배송지 내역이 없습니다.</p>
					</li>
				</ul>
			</div>
			<!--// E : 배송지 변경하기 -->
		</div>
	</div>

</div>