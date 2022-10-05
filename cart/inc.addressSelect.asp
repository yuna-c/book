<div class="modal-wrap">
	<div class="modal-bg"></div>

	<div class="modal-container modal-select">
		<div class="modal-header">
			<a href="javascript:void(0)" class="ico ico-back" onclick="fnCloseModal('.modal-select');">돌아가기</a>
			<h2 class="dep-tit2">최근 배송지 선택</h2>
			<a href="javascript:void(0)" class="ico ico-myinfo">장바구니</a> 
		</div>

		<div class="modal-content">
			<!-- S : 최근 배송지 선택 -->
			<div class="info-area p0">
				<div class="gray-box">
					<ul class="list-dotted">
						<li>최근 배송된 주소지입니다.(최대 5개까지 보관)</li>
						<li>선택하시면 자동으로 주소지가 입력됩니다.</li>
					</ul>
				</div>
			</div>

			<div class="add-area">
				<ul>
					<% For i = 1 to 10 %>
					<li>
						<a href="javascript:void(0)">
							<div class="txt-area">
								<p class="name">정수민</p>
								<p class="address">
									(06178)<br>
									서울 강남구 삼성로 434 (쥬비스타워)<br>
									202-1310호
								</p>
								<p class="cellphone">010-0000-0000</p>
								<a href="javascript:void(0)" class="color-gray" onclick="IfMyDelvDelProc()">삭제</a>
							</div>
						</a>
					</li>
					<% Next %>
					<li class="no-data">
						<p>배송지 내역이 없습니다.</p>
					</li>
				</ul>
			</div>
			<!--// E : 최근 배송지 선택 -->
		</div>
	</div>

</div>