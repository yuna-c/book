
<!--#include virtual="/common/inc/config.asp"-->
<!-- #include virtual="/common/include/inc.meta.asp" -->

<!-- S : 페이지별 css / script -->
<link rel="stylesheet" type="text/css" href="/common/css/inc..css?ver=<%= now() %>">
<!--// E : 페이지별 css / script -->

<!-- #include virtual="/common/include/inc.header.asp" -->
	
	<style>
		.btn-count-wrap{ height:32px; margin-right:32px; display:inline-block; position:relative; border:1px solid #dfdfdf; font-size:0; vertical-align:top; box-sizing:border-box; }
		.btn-count-wrap:before{ content:''; width:1px; position:absolute; top:0; left:32px; bottom:0; background-color:#dfdfdf; }
		.btn-count-wrap:after{ content:''; width:1px; position:absolute; top:0; right:32px; bottom:0; background-color:#dfdfdf; }
		.btn-count-wrap > *{ line-height:32px; vertical-align:top; }
		.btn-count-wrap .btn-minus, .btn-count-wrap .btn-plus{ width:32px; display:inline-block; position:relative; background-repeat:no-repeat; background-position:50% 50%; text-indent:-9999em; }
		.btn-count-wrap .btn-minus{ background-image:url("data:image/svg+xml,%3Csvg width='12' height='1' viewBox='0 0 12 1' fill='none' xmlns='http://www.w3.org/2000/svg'%3E%3Crect width='12' height='1' fill='black' fill-opacity='0.93'/%3E%3C/svg%3E%0A"); }
		.btn-count-wrap .btn-plus{ background-image:url("data:image/svg+xml,%3Csvg width='12' height='13' viewBox='0 0 12 13' fill='none' xmlns='http://www.w3.org/2000/svg'%3E%3Cpath fill-rule='evenodd' clip-rule='evenodd' d='M6.5 6V0.5H5.5V6H0V7H5.5V12.5H6.5V7H12V6H6.5Z' fill='black' fill-opacity='0.93'/%3E%3C/svg%3E%0A"); }
		.btn-count-wrap > span{ width:64px; display:inline-block; font-size:14px; text-align:center; }

	</style>
	<!-- S : content -->
	<div id="content">
		<!-- S : 페이지 헤더 -->
		<div class="content-header">
			<a href="javascript:history.back();" class="ico ico-back">돌아가기</a>
			<h2 class="dep-tit2">이롷게 고칠꼬야</h2>
			<a href="javascript:void(0)" class="ico ico-myinfo">장바구니</a><!--onclick="fnOpenNav('lnb');"-->
		</div>	
		<!--// E : 페이지 헤더 -->
		
		<!-- S : 페이지 내용 -->
		<div class="content-container">
			<div class="content-layout">
				<div class="btn-count-wrap">
                    <a href="javascript:void(0);" onclick="fnChangeCount(jQuery(this), '<%=tblBasketIdx%>');" class="btn-minus">수량 감소</a>
                    <span>1</span>
                    <a href="javascript:void(0);" onclick="fnChangeCount(jQuery(this), '<%=tblBasketIdx%>');" class="btn-plus">수량</a>
                </div>
			</div>
		</div>
		<!--// E : 페이지 내용 -->
	</div>
	<!--// E : content -->

<!-- #include virtual="/common/include/inc.footer.asp" -->

<script>
	// 상품갯수조절
    function fnChangeCount(pObj, tblBasketIdx){
        var f_parents = pObj.parents('.btn-count-wrap');
        var f_input = f_parents.find('input');
        var f_span = f_parents.find('span');
        var f_count = parseInt(f_span.text());

        if(pObj.hasClass('btn-minus')){
            --f_count;

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