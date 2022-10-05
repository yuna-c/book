<%
META_OG_TITLE       = "시대인재 북스"
META_DESCRIPTION    = "수능 전문 학습 서적 출판사, 도서, 학습서, 봉투 모의고사, 한완수, 한권으로 완성하는 수학, 포카칩 N제, 샤인미, 일격필살"
META_KEYWORDS       = "시대인재, 시대북스, 시대인재북스, 2019 수능대비, 봉투모의고사, 한완수, 도서, 입시, 모의고사"
%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<title>시대인재 북스</title>
    
    <meta property="og:url" content="<%=LCase(FullUrl)%>">
    <meta property="og:image" content="<%=META_OG_IMAGE%>">
    <meta property="og:title" content="<%=META_OG_TITLE%>">
    <meta property="og:description" content="<%=META_OG_DESCRIPTION%>">
    <meta property="og:site_name" content="<%=META_OG_TITLE%>">
    <meta property="og:type" content="mobile">

    <meta name="description" content="<%=META_DESCRIPTION%>">
    <meta name="author" content="<%=META_AUTHOR%>">
    <meta name="title" content="<%=META_OG_TITLE%>">
    <meta name="keywords" content="<%=META_KEYWORDS%>">

    <meta name="format-detection" content="telephone=no">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
    <meta name="apple-mobile-web-app-capable" content="yes">
	<meta name="naver-site-verification" content="53dec56f0aa9ac6f7f0844a9ae9ae525a3b4d126">

	<link rel="canonical" href="https://www.sdijbooks.com/">

    <link rel="image_src" href="<%=IMG_URL%>/mobile/m_logo_sidae.png">
	<link rel="shortcut icon" href="//img.sdij.com/common/favicon.png" type="image/x-icon">

    <link rel="stylesheet" type="text/css" href="/common/css/inc.reset.css?ver=<%= now() %>">
	<link rel="stylesheet" type="text/css" href="/common/css/inc.layout.css?ver=<%= now() %>">
	<link rel="stylesheet" type="text/css" href="/common/css/libs/swiper-bundle.min.css">
	<link rel="stylesheet" type="text/css" href="/common/css/inc.default.css?ver=<%= now() %>">

    <script type="text/javascript" src="/common/js/libs/jquery-1.12.3.min.js"></script>
	<!-- <script type="text/javascript"src="/yuna/common/js/libs/jquery.cycle2.carousel.min.js"></script> -->
	<script type="text/javascript"src="/common/js/libs/swiper-bundle.min.js"></script>
	<script type="text/javascript"src="/common/js/libs/jquery-scrolltofixed-min.js"></script>
    <script type="text/javascript"src="/common/js/libs/jquery.cycle2.js"></script>
	<script type="text/javascript"src="/common/js/common.js"></script>
	<script type="text/javascript"src="/common/js/inc.common.js"></script>

	<!-- 다음 우편번호 주소 -->
    <script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    
	<% If InStr(Host & NowUrl, "m.sdijbooks.com") Then %>
    <!-- Google Tag Manager -->
    <script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
    new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
    j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
    'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
    })(window,document,'script','dataLayer','GTM-WGRMTSR');</script>
    <!-- End Google Tag Manager -->
    <% End If %>

	<!-- Enliple Common Tracker v3.5 [공용] start -->
	<script type="text/javascript">
		function mobRf(){
			var rf = new EN();
			rf.setData("userid", "sdijbooks");
			rf.setSSL(true);
			rf.sendRf();
		}
	</script>
	<script src="https://cdn.megadata.co.kr/js/en_script/3.5/enliple_min3.5.js" defer="defer" onload="mobRf()"></script>
	<!-- Enliple Common Tracker v3.5 [공용] end -->

	<script type="text/javascript" charset="UTF-8" src="//t1.daumcdn.net/adfit/static/kp.js"></script>
	<script type="text/javascript">
        //kakaoPixel('5348860734797493672').pageView();
	</script>

	<!-- DSP 리타겟팅 Checking Script V.201603 Start-->
	<script type="text/javascript" async="true">
	function dsp_loadrtgJS(b,c){var d=document.getElementsByTagName("head")[0],a=document.createElement("script");a.type="text/javascript";null!=c&&(a.charset="euc-kr");a.src=b;a.async="true";d.appendChild(a)}function dsp_load_rtg(b){dsp_loadrtgJS(("https:"==document.location.protocol?" https://":" http://")+b,"euc-kr")}dsp_load_rtg("realdmp.realclick.co.kr/rtarget/rtget.js?dsp_adid=sdijbooks");
	</script>
	<!-- DSP 리타겟팅 Checking Script V.201603 End-->
</head>
