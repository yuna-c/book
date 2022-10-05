 <!--#include virtual="/common/inc/config.asp"-->
<!-- #include virtual="/common/include/inc.meta.asp" -->

<!-- S : 페이지별 css / script -->
<link rel="stylesheet" type="text/css" href="/common/css/inc.book.css?ver=<%= now() %>">
<!--// E : 페이지별 css / script -->

<!-- #include virtual="/common/include/inc.header.asp" -->
	
	<!-- S : content -->
		<div id="content" class="detail-content">
			<!-- S : 페이지 헤더 -->
			<div class="content-header">
				<!-- <a href="javascript:history.back();" class="ico ico-back">돌아가기</a> -->
				<h2 class="dep-tit2">
					<a href="/">
						<i class="ico ico-books">북스로고</i>
					</a>
				</h2>
				<!--
				<% if true then '패키지 일때 %>
				<h2 class="dep-tit2">패키지</h2>
				<% Else '도서 상세 일때  %>
				<h2 class="dep-tit2">도서상세</h2>
				<% End If %>
				-->
				<a href="javascript:void(0)" class="ico ico-myinfo">장바구니</a><!--onclick="fnOpenNav('lnb');"-->
			</div>	
			<!--// E : 페이지 헤더 -->

			<!-- S : 페이지 내용 -->
			<div class="content-container">
				<!-- S : 가격 영역 -->
				<div class="content-layout">
					<div class="book pt25">
						<div class="img-area relative">
							<span class="absolute new">
								<i class="ico ico-new">new</i>
							</span>
							<a href="javascript:void(0)">
								<img src="https://via.placeholder.com/220x312" alt="책 이미지">
							</a>
							<span class="absolute sticker sticker-gray">지구과학</span>
						</div>
						<ul class="info-area">
							<li class="sticker-area">
								<span class="sticker2 sticker-skyblue">BEST</span>
								<span class="sticker2 sticker-gray">소득공제</span>
							</li>
							<li class="tit-area">
								<p>한권으로 완성하는 수학 수학1·2(상) : 수학1 기본개념 2023 한권으로 완성하는 수학 수학1·2(상) : 수학1 기본개념 2023</p>
							</li>
							<li class="txt-area">
								<p>평가원·수능 10개년 모든 문항 수록한 수학 개념서</p>
								<p class="tit">
									<% if false then '패키지 일때 %>
									<span class="txt">이해원 저</span>
									<span class="txt">시대인재북스</span>
									<span class="txt">2021년 7월 23일</span>
									<span class="sticker2 sticker-gray">초판</span>
									<% Else '도서 상세 일때  %>
									<span class="txt">이해원 저</span>
									<span class="txt">시대인재북스</span>
									<% End If %>
								</p>
							</li>
							<li class="price-area">
								<p>
									<span class="price color-red"><strong>10%</strong></span>
									<span class="price"><strong>25,000</strong>원</span>
									<span class="color-gray txt-through">22,500원</span>
								</p>	
							</li>
						</ul>
						<div class="txt-area">
							<div class="sticker-area">
								
							</div>
							<div class="tit-area">
							</div>	
						</div>	
					</div>
				</div>
				<!--// E : 가격 영역 -->
				
				<!-- S : 혜택 -->
				<div class="wide-layout border-layout">
					<ul class="info-area p25">
						<!--
						<li>
							<dl class="float-area">
								<dt>혜택</dt>
								<dd>
									[기본적립] NNNN원 적립 [ N% 적립 ]<br>
									[기본적립] NNNN원 적립 [ N% 적립 ]
								</dd>
							</dl>
						</li>
						-->
						<li>
							<dl class="float-area">
								<dt>배송비</dt>
								<dd>2,500원</dd>
							</dl>
						</li>
						<li>
							<dl class="float-area">
								<dt>도착예정일</dt>
								<dd>입고일 (2021-09-24) 이후 도착 예정</dd>
							</dl>
						</li>
					</ul>
				</div>
				<!--// E : 혜택 -->
				<% if false then '패키지 일때 %>
				<!-- S : 패키지도서 -->
				<div class="package-layout">
					<h3 class="tit-dep3">패키지도서</h3>
					<!-- S : 슬라이드 영역-->
					<div class="slide-pick swiper-container swiper-slide-type3">
						<ul class="swiper-wrapper">
							<%
								For i=0 To 5
							%>
							<li class="swiper-slide">
								<a href="javascript:void(0)">
									<div class="book">
										<i class="ico ico-new">new</i>
										<div class="img-area">
											<img src="https://via.placeholder.com/122x173" alt="이미지">
										</div>
										<div class="txt-area">
											<p class="tit txt-overflow">한권으로 완성하는 수학 수학1·2(상) : 수학1 기본개념 한권으로 완성하는 수학 수학1·2(상) : 수학1 기본개념 한권으로 완성하는 수학 수학1·2(상) : 수학1 기본개념</p>
											<p class="txt txt-ellipsis color-black"><strong>27,900</strong>원</p>
										</div>
									</div>
								</a>	
							</li>
							<%
								NEXT
							%>
						</ul>
						
						<div class="swiper-button-next"></div>
						<div class="swiper-button-prev"></div>
						<div class="swiper-pagination"></div>
					</div>
					<!--// E : 슬라이드 영역-->
				</div>
				<!--// E : 패키지도서 -->

				<% Else '도서 상세 일때  %>
				<!-- S : 연관도서 -->
				<div class="package-layout">
					<h3 class="tit-dep3">연관도서</h3>
					<!-- S : 슬라이드 영역-->
					<div class="slide-pick swiper-container swiper-slide-type3">
						<ul class="swiper-wrapper">
							<%
								For i=0 To 5
							%>
							<li class="swiper-slide">
								<a href="javascript:void(0)">
									<div class="book">
										<i class="ico ico-new">new</i>
										<div class="img-area">
											<img src="https://via.placeholder.com/122x173" alt="이미지">
										</div>
										<div class="txt-area">
											<p class="tit txt-overflow">최대 3줄 노출 최대 3줄 노출 최대 3줄 노출 최대 3줄 노출 최대 3줄 노출</p>
											<p class="txt txt-ellipsis">바생바습 바생바습 바생바습 바생바습</p>
										</div>
									</div>
								</a>	
							</li>
							<%
								NEXT
							%>
						</ul>
						
						<div class="swiper-button-next"></div>
						<div class="swiper-button-prev"></div>
						<div class="swiper-pagination"></div>
					</div>
					<!--// E : 슬라이드 영역-->
				</div>
				<!--// E : 연관도서 -->
				<% End If %>

				<!-- S : 도서 소개 영역 -->
				<div class="wide-layout">
					<!-- S : 중간 배너 -->
					<div class="event-slide swiper-container swiper-slide-type4">
						<div class="swiper-wrapper">
							<a href="javascript:void(0)" class="swiper-slide first-slide" style="background-color:#ededed">
								<img src="https://via.placeholder.com/768x300" alt="슬라이드 이미지 1">
							</a>
							<a href="javascript:void(0)" class="swiper-slide" style="background-color:#ededed">
								<img src="https://via.placeholder.com/768x300" alt="슬라이드 이미지 2">
							</a>
							<a href="javascript:void(0)" class="swiper-slide" style="background-color:#ededed">
								<img src="https://via.placeholder.com/768x300" alt="슬라이드 이미지 3">
							</a>
						</div>
						
						<div class="swiper-button-next"></div>
						<div class="swiper-button-prev"></div>
						<div class="swiper-pagination"></div>
					</div>
					<!-- // E : 중간 배너 -->

					<!-- S : 셀렉트 영역 : 패키지 일 때 노출  
					<div class="filter-area">
						<div class="btn-area select-area relative">
							<button class="btn" id="select">
								한권으로 완성하는 수학 기하 : 기하 교과·실전개념 2023 
							</button>

							<div class="drop-area">
								<button class="btn" onclick="selectBtn(this)">한권으로 완성하는 수학 기하 : 기하 교과·실전개념 2023</button>
								<button class="btn" onclick="selectBtn(this)">한권으로 완성하는 수학 수학1·2(상)</button>
								<button class="btn" onclick="selectBtn(this)">한권으로 완성하는 수학 수학1·2(상) : 수학1 기본개념 2023</button>
							</div>
						</div>
					</div>
					// E : 셀렉트 영역 : 패키지 일 때 노출  -->

					<!-- S : 책 소개 -->
					<div class="book-area">
						<h4 class="tit-dep3 mb20">책소개</h4>
						
						<div class="table-area">
							<table>
								<colgroup>
									<col style="width:80px;">
									<col style="width:auto;">
								</colgroup>
								<tbody>

									<% if false then '패키지 일때 %>
										<tr>
											<th>저자</th>
											<td>이해원</td>
										</tr>
										<tr>
											<th>출판일</th>
											<td>2022냔 01월 25일</td>
										</tr>
										<tr>
											<th>판형</th>
											<td>A4 (210 X 297 mm) </td>
										</tr>
										<tr>
											<th>페이지</th>
											<td>440쪽 (본문 392쪽 / 해설/ 48) 쪽</td>
										</tr>
										<tr>
											<th>ISBN</th>
											<td>979-11-90829-87-8</td>
										</tr>

									<% Else '도서 상세일때 %>
										<tr>
											<th>판형</th>
											<td>A4 (210 X 297 mm) </td>
										</tr>
										<tr>
											<th>페이지</th>
											<td>440쪽 (본문 392쪽 / 해설/ 48) 쪽</td>
										</tr>
										<tr>
											<th>ISBN</th>
											<td>979-11-90829-87-8</td>
										</tr>
									<% End If %>
								</tbody>
							</table>
						</div>
						
						<p class="tit">1. 그 어떤 책, 강의보다 먼저 봐야 하는 책입니다.</p>	

						<div class="read-more">
							<div class="content">
								수학에 대한 기본 마인드를 정립해주고, 교과서에 있는 개념과 교과서에는 없지만 수능에 자주 나오는 개념을 어떻게 바라보고 어떻게 공부하는지 [교과서 지도서]를 기반으로 가이드라인을 정확하게
								잡아주는 책이기 때문에 반드시 최우선적으로 봐야하는 교재입니다. 저자는 7차 수능을 시작부터 끝까지 17년간 직접 경험하면서 역대 KICE 수학영역 가형 중 전국 만점자 숫자가 가장 적었던 시험에서 만점을 받기도 했습니다. 
								그 이후 수학과에 입학하여 대학교에서도 수학을 전공하고 졸업하였습니다. 수학에 대한 기본 마인드를 정립해주고, 교과서에 있는 개념과 교과서에는 없지만 수능에 자주 나오는 개념을 어떻게 바라보고 어떻게 공부하는지 [교과서 지도서]를 
								기반으로 가이드라인을 정확하게 잡아주는 책이기 때문에 반드시 최우선적으로 봐야하는 교재입니다. 저자는 7차 수능을 시작부터 끝까지 17년간 직접 경험하면서 역대 KICE 수학영역 가형 중 전국 만점자 숫자가 가장 적었던 시험에서 만점을
								받기도 했습니다. 그 이후 수학과에 입학하여 대학교에서도 수학을 전공하고 졸업하였습니다.수학에 대한 기본 마인드를 정립해주고, 교과서에 있는 개념과 교과서에는 없지만 수능에 자주 나오는 개념을 어떻게 바라보
								수학에 대한 기본 마인드를 정립해주고, 교과서에 있는 개념과 교과서에는 없지만 수능에 자주 나오는 개념을 어떻게 바라보고 어떻게 공부하는지 [교과서 지도서]를 기반으로 가이드라인을 정확하게
								잡아주는 책이기 때문에 반드시 최우선적으로 봐야하는 교재입니다. 저자는 7차 수능을 시작부터 끝까지 17년간 직접 경험하면서 역대 KICE 수학영역 가형 중 전국 만점자 숫자가 가장 적었던 시험에서 만점을 받기도 했습니다. 
								그 이후 수학과에 입학하여 대학교에서도 수학을 전공하고 졸업하였습니다. 수학에 대한 기본 마인드를 정립해주고, 교과서에 있는 개념과 교과서에는 없지만 수능에 자주 나오는 개념을 어떻게 바라보고 어떻게 공부하는지 [교과서 지도서]를 
								기반으로 가이드라인을 정확하게 잡아주는 책이기 때문에 반드시 최우선적으로 봐야하는 교재입니다. 저자는 7차 수능을 시작부터 끝까지 17년간 직접 경험하면서 역대 KICE 수학영역 가형 중 전국 만점자 숫자가 가장 적었던 시험에서 만점을
								받기도 했습니다. 그 이후 수학과에 입학하여 대학교에서도 수학을 전공하고 졸업하였습니다.수학에 대한 기본 마인드를 정립해주고, 교과서에 있는 개념과 교과서에는 없지만 수능에 자주 나오는 개념을 어떻게 바라보
								수학에 대한 기본 마인드를 정립해주고, 교과서에 있는 개념과 교과서에는 없지만 수능에 자주 나오는 개념을 어떻게 바라보고 어떻게 공부하는지 [교과서 지도서]를 기반으로 가이드라인을 정확하게
								잡아주는 책이기 때문에 반드시 최우선적으로 봐야하는 교재입니다. 저자는 7차 수능을 시작부터 끝까지 17년간 직접 경험하면서 역대 KICE 수학영역 가형 중 전국 만점자 숫자가 가장 적었던 시험에서 만점을 받기도 했습니다. 
								그 이후 수학과에 입학하여 대학교에서도 수학을 전공하고 졸업하였습니다. 수학에 대한 기본 마인드를 정립해주고, 교과서에 있는 개념과 교과서에는 없지만 수능에 자주 나오는 개념을 어떻게 바라보고 어떻게 공부하는지 [교과서 지도서]를 
								기반으로 가이드라인을 정확하게 잡아주는 책이기 때문에 반드시 최우선적으로 봐야하는 교재입니다. 저자는 7차 수능을 시작부터 끝까지 17년간 직접 경험하면서 역대 KICE 수학영역 가형 중 전국 만점자 숫자가 가장 적었던 시험에서 만점을
								받기도 했습니다. 그 이후 수학과에 입학하여 대학교에서도 수학을 전공하고 졸업하였습니다.수학에 대한 기본 마인드를 정립해주고, 교과서에 있는 개념과 교과서에는 없지만 수11111111

								 <a href="javascript:void(0)" class="btn btn-gray btn-more">더보기 + </a>
							</div>
						</div>
					</div>
					<!-- // E : 책 소개 -->

					<!-- S: toggle-list -->
					<dl class="list-toggle">
						<dt>
							<a href="javascript:void(0);">
								<strong>책서평 & 출판사 리뷰</strong> 
							</a>
						</dt>
						<dd>
							<div class="info">
								◆ 김현성(서울대학교 의예과)<br>
								한완수는 정말 좋은 공부 소스라고 생각합니다. 수학을 잘하는 사람들이 머릿속으로만 하고 넘어가는 생각. 그 흘러가는 생각들을 하나하나 잡아서 기록해 놓은 게 한완수입니다. 수학을 정말 잘하는 친구 있죠? 그 친구는 한완수와 유사한 생각의 흐름을 머릿속에서 자연스럽게 할 겁니다. 아무도 가르쳐 주지 않았지만, 스스로 응용해내는 거죠. 모든 사람들이 수학의 다양한 영역에서 이런 생각을 해낼 수는 없습니다. 
							</div>
						</dd>
						<dt>
							<a href="javascript:void(0)">
								<strong>목차</strong> 
							</a>
						</dt>
						<dd>
							<ul class="info">
								<li>0. 도서 소개</li>
								<li>1. 생명과학의 역사</li>
								<li>2. 세포의 특성</li>
								<li>3. 세포 호흡과 광합성</li>
							</ul>
						</dd>
						<dt>
							<a href="javascript:void(0)">
								<strong>저자소개</strong> 
							</a>
						</dt>
						<dd>
							<div class="info">
								UAA&DCAF는 2015년 7월 첫 출판물을 시작으로 지금까지 33권의 수능 생명과학 Ⅰ/Ⅱ 도서를 출판한 컨텐츠 연구팀입니다. 우리가 생각하는 올바르고 도움이 되는 문항을 세상에 선보이며, 우수한 수험서를 접근의 허들을 낮춰 전국에 소개하고 싶다는 생각으로 시작된 우리는 어느덧 8년차에 접어들고 있습니다.
							</div>
						</dd>
						<dt>
							<a href="javascript:void(0);">
								<strong>정오표&부가자료</strong> 
							</a>
						</dt>
						<dd>
							<!-- S : file-area -->
							<div class="file-area">
								<a href="javascript:void(0)" class="btn"><i class="ico-hwp">ico-hwp</i>SD 모의평가 FINAL 1회 듣기파일 SD 모의평가 FINAL 1회 듣기파일 SD 모의평가 FINAL 1회 듣기파일SD 모의평가 FINAL 1회 듣기파일SD 모의평가 FINAL 1회 듣기파일</a>
								<a href="javascript:void(0)" class="btn"><i class="ico-pdf">ico-pdf</i>SD 모의평가 FINAL 1회 듣기파일SD 모의평가 FINAL 1회 듣기파일.pdf</a>
								<a href="javascript:void(0)" class="btn"><i class="ico-zip">ico-zip</i>SD 모의평가 FINAL 1회 듣기파일.zip</a>
								<a href="javascript:void(0)" class="btn"><i class="ico-word">ico-word</i>SD 모의평가 FINAL 1회 듣기파일.zip</a>
								<a href="javascript:void(0)" class="btn"><i class="ico-file">ico-file</i>SD 모의평가 FINAL 1회 듣기파일.zip</a>
							</div>
							<!--// E : file-area -->
						</dd>
					</dl>
					<!-- // E : toggle-list -->

					<!-- S : 북리뷰 
					<div class="review-area">
						<h4 class="tit-dep3">북리뷰&nbsp;(4)</h4>
						
						<div class="btn-group mt20">
							<button type="button" class="btn btn-border" onclick="fnOpenModal('.modal-review');">리뷰쓰기</button>
						</div>
						
						<ul class="list-dotted">
							<li>교재 구매 후 리뷰 작성 시 NNN원의 시대인재 북스포인트를 드립니다. (한 ID당 한 교재에 한하여 1회만 지급)</li>
							<li>동일 교재를 여러권 구매하여 북리뷰를 작성했더라도 북스포인트는 최대 200P만 지급됩니다.</li>
							<li>북리뷰와 맞지 않는 리뷰 작성 및 근거 없는 비방글은 예고 없이 삭제되며, 포인트가 회수됩니다. </li>
							<li>구매자가 상품 출고 후 작성한 한줄평에 대해서만 북스포인트가 지급됩니다.</li>
						</ul>
						
						<div class="reply-area">
							<ul>
								<li>
									<div class="info-txt">
										<strong class="name">홍*지</strong>
										<span class="date">2021-08-24</span>
									</div>
									<div class="reply-txt">
										이미 알고 있는 너무 기초적인 경제상식들로 많은 분량을 소비해, 정작 저자의 자소서를 읽는 정도로 만족해야 하는 점이 아쉽고, 저자의 방향성이나 통찰력은 그닥 표현되고 있지 않아서, 아주 경제에 문외한이 분들이 상식을 채운다는 정도에서 만족하면 좋을 서적.
									</div>
								</li>
								<li>
									<div class="info-txt">
										<strong class="name">김*호</strong>
										<span class="date">2021-08-24</span>
									</div>
									<div class="reply-txt">
										생각한 것보다 좋다니 이게 머신 말이고
									</div>
								</li>
								<li>
									<div class="info-txt">
										<strong class="name">김*호</strong>
										<span class="date">2021-08-24</span>
									</div>
									<div class="reply-txt">
										생각한 것보다 좋다니 이게 머신 말이고
									</div>
								</li>
								<li>
									<div class="info-txt">
										<strong class="name">김*호</strong>
										<span class="date">2021-08-24</span>
									</div>
									<div class="reply-txt">
										생각한 것보다 좋다니 이게 머신 말이고
									</div>
								</li>
							</ul>
							
							<div class="btn-group">
								<button type="button" class="btn btn-border">리뷰 더 보기 +</button>
							</div>
						</div>
					</div>
					// E : 북리뷰 -->
				</div>
				<!--// E : 도서 소개 영역 -->
					
				<!-- S : 도서 문의 영역 -->
				<div class="wide-layouy border-layout">
					<div class="inquiry-area p25">
						<h4 class="tit-dep3">도서문의</h4>	
						<p class="txt">
							배송/결제/다운로드 오류 관련 문의는 고객센터에서 가능합니다. (도서 내용 관련 문의는 접수가 어려운 점 양해 부탁드립니다.)
						</p>
						<div class="btn-group mt20">
							<button type="button" class="btn btn-border">고객센터 바로가기</button>
						</div>
					</div>
				</div>
				<!--// E : 도서 문의 영역 -->
			</div>
			<!--// E : 페이지 내용 -->
			
			<!-- S : 페이지 버튼 -->
			<div class="content-footer">
				<div class="btn-layer">
					<!--
					<a href="javascript:void(0)" class="btn" onclick="fnOpenModal('.modal-share');"><i class="ico ico-share">공유하기</i></a>
					<a href="javascript:void(0)" class="btn" onclick="fnOpenModal('.modal-alam');"><i class="ico ico-alam">알림설정</i></a>
					-->
					<a href="javascript:void(0)" class="btn btn-default" onclick="fnOpenModal('.modal-buy');">도서구매</a>
				</div>
			</div>
			<!--// E : 페이지 버튼 -->
		</div>
		<!--// E : content -->
	
	<!-- S : dim -->
	<link rel="stylesheet" type="text/css" href="/common/css/inc.dim.css?ver=<%= now() %>">
	<!-- #include file ="./inc.bookBuy.asp" -->
	<!-- #include file ="./inc.bookReview.asp" -->
	<!-- #include file ="./inc.bookAlam.asp" -->
	<!-- #include file ="./inc.bookShare.asp" -->
	<!--// E : dim -->		

<!-- #include virtual="/common/include/inc.footer.asp" -->

<script>
	$(function(){
		// select btn
		$('.select-area').on('click', function(){
			$(this).toggleClass('selected');
		});

		$('.btn-more').on('click', function(){
            $(this).parents('.read-more').toggleClass('on');
        });
	});

	// 상품갯수조절
    function fnChangeCount(pObj, tblBasketIdx){
        var f_parents = pObj.parents('.btn-count-wrap');
        var f_input = f_parents.find('input');
        var f_span = f_parents.find('span');
        var f_count = parseInt(f_span.text());

        if(pObj.hasClass('btn-minus')){
            --f_count;
			alert("최소 구매수량은 1권 입니다");
            if(f_count < 1) return;
        }
        else{
            if (f_count >= 99)
            {
                alert("최대 구매수량은 99권 입니다");
                return;
            }
            ++f_count;
        }

        f_input.attr('value',f_count);
        f_span.text(f_count);
    }
</script>