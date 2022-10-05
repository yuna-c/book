<body>
	
	<%
	If COOK_ID <> "" Then 
		strSql = "SELECT COUNT(*) " & _
				"  FROM T_CART_ITEM WITH(NOLOCK) " & _
				" WHERE CI_MEM_ID = '" & COOK_ID & "' " & _
				"   AND CI_BUY_TYPE1 IN ('310003', '310008')"

		vCartCntList = DbCon.ExecRsList(strSql, adCmdText, Nothing, vCartCntListCnt, Nothing)

		If IsArray(vCartCntList) Then 
			cartCnt = vCartCntList(0,0)
		End If 
	End If 
	%>

	<!-- S : wrap -->
	<div id="wrap">
		<div id="top"></div>
		<!-- S : header-->
		<div id="header">
			<div class="content-layout">
				<!-- <a href="javascript:void(0)" class="ico ico-hamburger" onclick="fnOpenNav('lnb');">햄버거메뉴</a> -->

				<div class="logo">
					<a href="/">
						<i class="ico ico-books">북스로고</i>
					</a>
				</div>
				<% If COOK_ID = "" Then %>
					<a href="/member/login.asp" class="ico ico-myinfo">장바구니</a> 
				<% ELSE %>
					<a href="/pay/cart/default.asp" class="ico ico-myinfo">장바구니</a>
				<% END If %>
				 
			</div>
		</div>	
		<!--// E : header -->
			
		<!-- S : lnb -->
		<div id="lnb" class="lnb">
			<div class="logo">
				<a href="javascript:void(0)" class="nav-close">
					<i class="ico ico-close"></i>
				</a>
			</div>

			<div class="lnb-menu">
				<div class="lnb-header">
					<% If COOK_ID = "" Then %>
					<div class="sticker-area">
						<div class="sticker">
							<a href="javascript:location.href='/member/login.asp'">로그인</a>
						</div>
						<div class="sticker">
							<a href="javascript:location.href='/member/login.asp'">회원가입</a>
						</div>
					</div>
					<% Else '로그인 후 %>
					<div class="sticker-area">
						<p class="tit"><%=COOK_NM%></p>
						<a href="javascript:location.href='/member/logout.asp'" class="sticker sticker-gray">로그아웃</a>
					</div>
					<% End If %>
				</div>
				
				<div class="lnb-navi">
					<ul>
						<li>
							
							<% If COOK_ID = "" Then %>
								<a href="/member/login.asp"> 
							<% ELSE %>
								<a href="/pay/cart/default.asp">
							<% END If %>
							<i class="ico ico-delivery"></i>
							<span>장바구니</span>
						</a>
						</li>
						<li>
							<% If COOK_ID = "" Then %>
								<a href="/member/login.asp"> 
							<% ELSE %>
								<a href="/mypage/order.asp">
							<% END If %>
								<i class="ico ico-order"></i>
								<span>주문/ 배송</span>
							</a>
						</li>
						<li>
							<a href="/board/default.asp">
								<i class="ico ico-customer"></i></i>
								<span>고객센터</span>
							</a>
						</li>
						<li>
							 
							<% If COOK_ID = "" Then %>
								<a href="/member/login.asp"> 
							<% ELSE %>
								<a href="/mypage/default.asp"> 
							<% END If %>

							<i class="ico ico-personal"></i>
							<span>마이페이지</span>
							</a>
						</li>
					</ul>
				</div>

				<div class="lnb-content">
					<ul>
						<li>
							<a href="/books/default.asp" rel="nosublink">도서</a>
							<div class="lnb-list">
								<ul>
									<li>
										<a href="/books/default.asp?productType=310008" rel="nosublink">패키지</a>
									</li>
									<li>
										<a href="/books/default.asp?productType=310003&domCd=2001" rel="nosublink">국어</a>
									</li>
									<li>
										<a href="/books/default.asp?productType=310003&domCd=2003" rel="nosublink">수학</a>
									</li>
									<li>
										<a href="/books/default.asp?productType=310003&domCd=2002" rel="nosublink">영어</a>
									</li>
									<li>
										<a href="/books/default.asp?productType=310003&domCd=2004" rel="nosublink">한국사</a>
									</li>
									<li>
										<a href="/books/default.asp?productType=310003&domCd=2005" rel="nosublink">사회</a>
									</li>
									<li>
										<a href="/books/default.asp?productType=310003&domCd=2006" rel="nosublink">과학</a>
									</li>
									<li>
										<a href="/books/default.asp?productType=310003&domCd=2008" rel="nosublink">대학별</a>
									</li>
								</ul>
							</div>
						</li>
						<li>
							<a href="/authHome/default.asp">저자</a>
						</li>
						<!--
						<li>
							<a href="javascript:void(0)">칼럼</a>
						</li>
						
						<li class="event-area">
							<a href="javascript:void(0)">
								시대북스몰
								<span class="sticker sticker-round">
									오픈 이벤트 진행 중
								</span>
							</a>
						</li>
						-->
					</ul>
				</div>
				<div class="lnb-util">
					<h3 class="tit">
						교육 도서 집필에 소명을 가진<br>
						저자분들과의 만남을 기다리고 있습니다.
						<a href="/recruit/author/default.asp" target="_blank">저자신청<i class="ico ico-prev"></i></a>
					</h3>
					
				</div>
			</div>
		</div>
		<!--// E : lnb -->
	
		<!-- S : gnb -->
		<div id="gnb">
			<ul class="gnb-menu">
				<li>
					<a href="javascript:void(0)" onclick="fnOpenNav('lnb');">전체
						<i class="ico ico-hamburger"></i>
					</a>
				</li>
				<li>
					<a href="/books/search.asp">검색
						<i class="ico ico-search"></i>
					</a>
				</li>
				<li>
					<a href="/default.asp">홈
						<i class="ico ico-home"></i>
					</a>
				</li>
				<li>
					<% If COOK_ID = "" Then %>
						<a href="/member/login.asp">배송
					<% ELSE %>
						<a href="/mypage/order.asp">배송
					<% END If %>
						<i class="ico ico-order"></i>
					</a>
				</li>
				<li>
					<% If COOK_ID = "" Then %>
						<a href="/member/login.asp">마이페이지
					<% ELSE %>
						<a href="/mypage/default.asp">마이페이지
					<% END If %>
						<i class="ico ico-mypage"></i>
					</a>
				</li>
			</ul>
		</div>
		<!--// E : gnb -->
		
		

 