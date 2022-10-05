<%

	CurMenu = request.servervariables("HTTP_url")  
    BackUrl =   "javascript:history.back();"

    
    '게시판
	If InStr(CurMenu, "/board/default.asp") > 0 Then
		CurMenuTitle = "고객센터1"
	ElseIf InStr(CurMenu, "/board/qna_list.asp") > 0 Then
        CurMenuTitle = "1:1 상담1"
	ElseIf InStr(CurMenu, "/board/qna_apply.asp") > 0 Then
        CurMenuTitle = "1:1 상담1"
    ElseIf InStr(CurMenu, "/board/notice_list.asp") > 0 Then
        CurMenuTitle = "공지사항1"
    ElseIf InStr(CurMenu, "/board/faq") > 0 Then
        CurMenuTitle = "FAQ1"

	'my'
    ElseIf InStr(CurMenu, "/mypage/default.asp") > 0 Then
        CurMenuTitle = "마이페이지1"
    ElseIf InStr(CurMenu, "/mypage/order.asp") > 0 Then
        CurMenuTitle = "주문/배송조회1"
    ElseIf InStr(CurMenu, "/mypage/orderView.asp") > 0 Then
        CurMenuTitle = "주문 상세조회1"
    ElseIf InStr(CurMenu, "/mypage/orderCancel") > 0 Then
        CurMenuTitle = "환불신청1"


    'member'
    ElseIf InStr(CurMenu, "/member/login_gst_find_id.asp") > 0 Then
        CurMenuTitle = "주문 비밀번호 찾기1"
    ElseIf InStr(CurMenu, "/member/login_gst.asp") > 0 Then
        CurMenuTitle = "비회원 주문 조회1"
    ElseIf InStr(CurMenu, "/member/login.asp") > 0 Then
        CurMenuTitle = "로그인1"
    ElseIf InStr(CurMenu, "/member/regist_find_id") > 0 Then
        CurMenuTitle = "아이디찾기1"
    ElseIf InStr(CurMenu, "/member/regist_find_pwd.asp") > 0 Then
        CurMenuTitle = "비밀번호 찾기1"
    ElseIf InStr(CurMenu, "/member/login_gst_find.asp") > 0 Then
        CurMenuTitle = "주문번호 찾기1" 
    ElseIf InStr(CurMenu, "/member/regist_step") > 0 Then
        CurMenuTitle = "시대인재 통합 회원가입1"    
    ElseIf InStr(CurMenu, "/member/regist_find_all_send.asp") > 0 Then
        CurMenuTitle = "아이디찾기1"    
    ElseIf InStr(CurMenu, "/member/regist_find_school.asp") > 0 Then
        CurMenuTitle = "학교검색1"    
        BackUrl =   "javascript:this.close();"
    ElseIf InStr(CurMenu, "/member/login_gst_findout.asp") > 0 Then
        CurMenuTitle = "주문번호 찾기1"   
    ElseIf InStr(CurMenu, "/mypage/regist_modify") > 0 Then
        CurMenuTitle = "회원정보 수정1"   
     

    'recruit'
    ElseIf InStr(CurMenu, "/recruit/") > 0 Then
        CurMenuTitle = "인재채용1"  
    
    'pay'
    ElseIf InStr(CurMenu, "/pay/cart/default.asp") > 0 Then
        CurMenuTitle = "장바구니1"  
        
    ElseIf InStr(CurMenu, "/pay/cart/checkout.asp") > 0 Then
        CurMenuTitle = "주문/결제1"  
    ElseIf InStr(CurMenu, "/pay/payend.asp") > 0 Then
        CurMenuTitle = "주문/결제1"  
    ElseIf InStr(CurMenu, "/pay/error.asp") > 0 Then
        CurMenuTitle = "주문/결제1"  
    End If	
%>

<div class="content-header">
	<a href="<%=BackUrl%>" class="ico ico-back">돌아가기</a>
	<h2 class="dep-tit2"><%=CurMenuTitle%></h2>
    <% IF COOK_ID = "" THEN %>
        <a href="/member/login.asp" class="ico ico-myinfo">장바구니</a>
    <% ELSE %>
	    <a href="/pay/cart/default.asp" class="ico ico-myinfo">장바구니</a>
    <% END IF %>
</div>	