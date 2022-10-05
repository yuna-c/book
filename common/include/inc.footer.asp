		<%
		Select Case fncRequestVariables("HTTP_HOST")
			Case "dm.sdijbooks.com"
				PC_DOMAIN = "//dev.sdijbooks.com"
			Case "m.sdijbooks.com"
				PC_DOMAIN = "//www.sdijbooks.com"
			Case "dmn.sdijbooks.com"
				PC_DOMAIN = "//devn.sdijbooks.com"
			Case "mn.sdijbooks.com"
				PC_DOMAIN = "//wwwn.sdijbooks.com"
		End Select 

		If GO_PC_URL = "" Then
			GO_PC_URL = PC_DOMAIN
		End If
		%>
		
		<!-- S : footer -->
		<div id="footer">
			<div class="content-layout">
				<div class="family-site">
					<dl class="list-toggle">
						<dt>
							<a href="javascript:void(0)">
								Family Site
							</a>
						</dt>
						<dd>
							<ul>
								<li><a href="//m.sdij.com/aca/" target="_blank">시대인재</a></li>
								<li><a href="//m.sdij.com/sdn/" target="_blank">시대인재N 재수종합</a></li>
							</ul>
						</dd>
					</dl>
				</div>
			
				<div class="site-menu">
					<ul>
				 
						<% If COOK_ID <> "" Then %>
							<li><a href="/member/logout.asp">로그아웃</a></li>
							<li><a href="/mypage/regist_modify_login.asp">정보수정</a></li>
						<% Else %>
							<li><a href="/member/login.asp">로그인</a></li>
							<li><a href="/member/login.asp">회원가입</a></li>
						<% End If%>
						
						<li><a href="/board/default.asp">고객센터</a></li>
						<li><a href="javascript:void(0)" onclick="IfApplyStepF('applystep01_pop.asp')">이용약관</a></li>
						<li><a href="javascript:void(0)" onclick="IfApplyStepF('applystep02_pop.asp')">개인정보방침</a></li>
						<!-- <li><a href="javascript:location.href='//dev.sdijbooks.com'">PC버전</a></li> -->
					</ul>
				</div>

				<div class="corperation">
					<ul>
						<li>㈜ 하이컨시북스</li>
						<li>주소 : 우) 06178 서울특별시 강남구 삼성로 434 5층 (대치동, 쥬비스타워)</li>
						<li>대표이사: 오우석</li>
						<li>사업자등록번호 :  477-87-00759 /</li>
						<li><span>고객센터:1522-0568</span> <span>FAX : 02-539-2377</span></li>
						<li>통신판매업신고 : 2019-서울강남-00233&nbsp;&nbsp;<a href="javascript:window.open('http://www.ftc.go.kr/bizCommPop.do?wrkr_no=4778700759', 'bizCommPop', 'width=750, height=700;');" class="txt-underline">정보확인</a></li>
						<li>신고기관명 : 서울특별시 강남구청</li>
						<li><a href="mailto:SDIJ@SDIJ.COM" class="txt-underline">SDIJ@SDIJ.COM</a></li>
					</ul>
				</div>

				<p class="copyright">Copyright © ㈜ 하이컨시북스. All Rght Reserved.</p>
			</div>
		</div>
		<!--// E : footer -->

		<div class="top-btn"><a href="#top"><i class="ico ico-top">top</i></a></div>
	</div>	
	<!-- // E : wrap -->	
 
<script type="text/javascript">
 
	//이용약관
	var IfApplyStepF = function(url) {
		window.open("/member/" + url, "applyStepPop");
	};
	</script>
	
	<iframe id="hiddenIframe" name="hiddenIframe" src="" width="0" height="0" style="display:none;"></iframe>
	<%
		Set DbCon = Nothing
	%>
	
	<!-- #include virtual = "/common/inc/log.asp" -->
