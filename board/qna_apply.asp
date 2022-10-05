<!--#include virtual="/common/inc/config.asp"-->
<!-- #include virtual="/common/include/inc.meta.asp" -->

<!-- S : 페이지별 css / script -->
<link rel="stylesheet" type="text/css" href="/common/css/inc.board.css?ver=<%= now() %>">
<!--// E : 페이지별 css / script -->

<!-- #include virtual="/common/include/inc.header.asp" -->
	
	<!-- S : content -->
	<div id="content">
		<!-- S : 페이지 헤더 -->
		<div class="content-header">
			<a href="javascript:history.back();" class="ico ico-back">돌아가기</a>
			<h2 class="dep-tit2">1:1 상담</h2>
			<a href="javascript:void(0)" class="ico ico-myinfo">장바구니</a>
		</div>	
		<!--// E : 페이지 헤더 -->

		<!-- S : 페이지 내용 -->
		<div class="content-container">
			<div class="wide-layout">
				<div class="info-area p0">
					<div class="gray-box">
						<ul class="list-dotted">
							<li>1:1 상담은 등록 순서대로 순차 답변 됩니다.</li>
							<li>질문 분류가 명확하지 않을 경우 답변에 시일이 소요될 수 있습니다.</li> 
							<li>질문 작성 전 <a href="/yuna/board/faq_list.asp" class="txt-underline color-gray">FAQ</a>의 내용을 확인하면 더욱 빨고 쉽게 문제를 해결할 수 있습니다.</li>
						</ul>
					</div>
				</div>
				<div class="form-area form-area1">
					<dl>
						<dt>질문 분류<span class="color-red">*</span></dt>
						<dd>
							<div class="form-type flex-area">
								<span class="col col-50">	
									<label class="select">
										<select name="" id="">
											<option value="전체">전체</option>
											<option value="">사이트</option>
											<option value="">결제/취소</option>
											<option value="">동영상</option>
											<option value="">모바일/태블릿</option>
											<option value="">기타</option>
										</select>
									</label>
								</span>

								<span class="col col-50">	
									<label class="select">
										<select name="" id="">
											<option value="선택">선택</option>
										</select>
									</label>
								</span>
							</div>
						</dd>
						<dt>제목<span class="color-red">*</span></dt>
						<dd>
							<div class="form-type">
								<label class="input-text">
									<input type="text" name="" id="" value="" placeholder="제목을 입력하세요">
								</label>
							</div>
						</dd>
						<dt>내용<span class="color-red">*</span></dt>
						<dd>
							<div class="form-type">
								<div class="textarea">
									<textarea name="" id="" placeholder="내용을 입력하세요."></textarea>
								</div>
							</div>
						</dd>
						<dt>첨부파일</dt>
						<dd>
							<div class="form-type"> 
								<div class="row border-none">
									<label class="input-file btn btn-gray"><input type="file" multiple="">파일선택</label>
									<div class="file-area2">
										<div class="file-item">
											<p>image.jpg</p>
											<button type="button" class="btn" onclick="delInput(this)"><span class="ico">삭제</span></button>
										</div>
									</div>
								</div>
								<span class="info-txt color-red mb20">
									3MB 이하의 파일을 최대 5개까지 첨부하실 수 있습니다.<br>
									(exe, zip 등 일부 파일은 첨부 제외)
									</span>
							</div>
						</dd>

						<dt>답변알림</dt>
						<dd>
							<div class="form-type"> 
								<div class="flex-area mb10">
									<label class="input-checkbox pr20">
										<input type="checkbox">
										<i class="ico-checkbox"></i>
										SMS
									</label>

									<label class="input-checkbox"><!-- onclick="fnOpenModal('.modal-info');"-->
										<input type="checkbox">
										<i class="ico-checkbox"></i>
										이메일
									</label>
								</div>
								<span class="info-txt color-red mb20">정확한 알림을 위해 회원정보에 기재된 연락처를 확인하세요.</span>
							</div>
						</dd>
					</dl>
				</div>

				<div class="content-area">
					<!-- S : btn-group -->
					<div class="btn-group"> 
						<a href="./login_gst_findout.asp" class="btn btn-black">등록</a>
					</div>
					<!--// E : btn-group -->
				</div>
			</div>
		</div>
		<!--// E : 페이지 내용 -->
	</div>
	<!--// E : content -->

<!-- #include virtual="/common/include/inc.footer.asp" -->

<script>
	$(function(){});

	function delInputVal(i){
        $(i).prev("input").val("")
    }

    function delInput(i){
        $(i).parent(".file-item").remove()
    }
</script>