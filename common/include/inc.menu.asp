<%

	CurMenu = request.servervariables("HTTP_url")  
 
	If InStr(CurMenu, "/books/file/") > 0 Then
		CurMenu = "F"
	ElseIf InStr(CurMenu, "/authHome/") > 0 Then
		CurMenu = "A"	
	ElseIf InStr(CurMenu, "/books/") > 0 Then
		CurMenu = "B"
	End If	
%>

<div class="tab-menu swiper-container swiper-slide-type2">
	<ul class="swiper-wrapper">
		<li class='swiper-slide<% If CurMenu = "B" Then %> selected<% End if %>'><a href="/books/default.asp">도서</a></li>
		<li class='swiper-slide<% If CurMenu = "A" Then %> selected<% End if %>'><a href="/authHome/default.asp">저자</a></li>
		<!-- <li class="swiper-slide"><a href="javascript:void(0)">칼럼</a></li> -->
		<li class='swiper-slide<% If CurMenu = "F" Then %> selected<% End if %>'><a href="/books/file/default.asp">자료실</a></li>
		<!-- <li class="swiper-slide"><a href="javascript:void(0)">시대북스몰</a></li> -->
		<!-- <li class="swiper-slide"><a href="javascript:void(0)">시대북스몰</a></li> -->
	</ul>
</div>