// 인증관련 Interval 변수
var InterValTimer = 0;
var setInterValTimer = null;

var nmReg =/^[가-힣]{2,10}|[a-zA-Z]{2,10}\s[a-zA-Z]{2,10}$/;                                             // 한글, 영문만 사용
var idReg = /^[a-z]+[a-z0-9]{5,19}$/g;                                                                  // 영문자로 시작 및 영문, 숫자, 특수문자_ 만 사용
var regExp1 = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*$/;                                                     // 이메일 계정 체크
var regExp2 = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;                                     // 이메일 도메인 체크
//var pwReg = /^.*(?=.{8,20})(?=.*[0-9])(?=.*[a-zA-Z])(?=.*[!@#$%^&*()-_+=]).*$/;                       // 영문, 숫자, 특수문자 포함 비밀번호
var regExp = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;     // 이메일 한줄 텍스트 입력 시 사용

//숫자만 입력
function onlyNumber(event){
	event = event || window.event;
	var keyID = (event.which) ? event.which : event.keyCode;
	if ( (keyID >= 48 && keyID <= 57) || (keyID >= 96 && keyID <= 105) || keyID == 8 || keyID == 46 || keyID == 37 || keyID == 39 || keyID == 9 ) 
		return;
	else
		return false;
}

function removeChar(event) {
	event = event || window.event;
	var keyID = (event.which) ? event.which : event.keyCode;
	if ( keyID == 8 || keyID == 46 || keyID == 37 || keyID == 39 || keyID == 9 ) 
		return;
	else
		event.target.value = event.target.value.replace(/[^0-9]/g, "");
}


// 인증번호받기
var IfGetNumberAuth = function(authHp, tTimer, smsGubun) {
    if (setInterValTimer != null) {
        clearInterval(setInterValTimer);
    }

    var params = "mode=GET";
        params += "&authHp=" + authHp;
        params += "&smsGubun=" + smsGubun;

    $.ajax({
        type: "POST",
        url: "/common/ajax/auth_number_proc.asp",
        timeout: 5000,
        data: params,
        async: false,
        dataType: "json",
        success: function(msg) {
            alert("인증번호가 발급되었습니다.");
            
            // 인증번호 발급키
            $("#authIdx").val(msg.status);

            // Timer 시간 만료 체크
            $("#authTimeFlag").val("Y");

            // Timer 계산
            IfIntervalTimer(tTimer);
        },
        error : function(data, msg) {
            alert("관리자에게 문의하세요.(" + msg + ")");
        }
    });
};

// 인증번호 시간계산
var IfIntervalTimer = function(tTimer) {
    var tMin = "0";
    var tSec = "00";
    InterValTimer = tTimer;
    
    setInterValTimer = setInterval(function() {
        InterValTimer -= 1;
        
        if (InterValTimer >= 0) {
            tMin = parseInt(InterValTimer / 60,0);
            tSec = parseInt(InterValTimer % 60,0);

            if (tSec < 10) {
                tSec = "0" + tSec;
            }
        }
    
        $("#authTimer").html(tMin + ":" + tSec);

        if (InterValTimer <= 0) {
            $("#authTimeFlag").val("N");
            clearInterval(setInterValTimer);
        } 
    }, 1000);
};

// 인증번호 확인 체크
var IfAuthConfirm = function(authHp) {
    var strStatus = 100;
    var authIdx = $("#authIdx").val();
    var authNumber = $("#authNumber").val();
    var authTimeFlag = $("#authTimeFlag").val();
    
    if (authNumber == "") {
        alert("인증번호를 입력하세요.");
        return false;
    }

    if (authTimeFlag == "N") {
        alert("인증번호를 확인해주세요.");
        return false;
    }

    var params = "mode=SET";
        params += "&authHp=" + authHp;
        params += "&authIdx=" + authIdx;
        params += "&authNumber=" + authNumber;

    $.ajax({
        type: "POST",
        url: "/common/ajax/auth_number_proc.asp",
        timeout: 5000,
        data: params,
        async: false,
        dataType: "json",
        success: function(msg) {
            strStatus = msg.status;
        },
        error : function(data, msg) {
            alert("관리자에게 문의하세요.(" + msg + ")");
            return false;
        }
    });

    if (strStatus != "200") {
        alert("인증번호가 잘못 입력되었습니다.");
        return false;
    }

    return true;
};

// 회원 중복 체크
var IfMemDuplicationCheck = function(memType, memHp) {
    var params = "memType=" + memType ;
        params += "&memHp=" + memHp;

    $.ajax({
        type: "POST",
        url: "/common/ajax/mem_duplication_proc.asp",
        timeout: 5000,
        data: params,
        async: false,
        dataType: "json",
        success: function(msg) {
            strStatus = msg.status;
        },
        error : function(data, msg) {
            alert("관리자에게 문의하세요.(" + msg + ")");
            return false;
        }
    });

    if (strStatus != "200") {
        alert("이미 등록되어 있는 핸드폰 번호입니다.");
        return false;
    }

    return true;
};

// Set Cookie
var setCookie = function(cname, cvalue, exdays) {
    var d = new Date();
    var expires = "";
    if (exdays != "") {
        d.setTime(d.getTime() + (exdays * 24 * 60 * 60 * 1000));
        expires = "expires="+d.toUTCString();
    }
    
    document.cookie = cname + "=" + cvalue + ";" + expires + ";path=/;"; 
};

// Get Cookie
var getCookie = function(cname) {
    var name = cname + "=";
    var ca = document.cookie.split(';');
    for(var i = 0; i < ca.length; i++) {
        var c = ca[i];
        while (c.charAt(0) == ' ') {
            c = c.substring(1);
        }
        if (c.indexOf(name) == 0) {
            return c.substring(name.length, c.length);
        }
    }
    return "";
};

// 메뉴 LNB 이동
var IfSiteLocation = function(site_cd) {
    /*
    if (site_cd == "905003") {
        alert("시대인재 Books는 9월 25일 오픈됩니다.  잠시만 기다려 주세요.");
        return;
    }
    */

    var expdate = new Date();
    setCookie("site_cd", "", expdate.getTime() - 1);
    setCookie("site_cd", site_cd, 1);
    if (site_cd == "905001"){
        location.href = "/on/";
    } else if (site_cd == "905002"){
        location.href = "/academy/";
    } else if (site_cd == "905003"){
        // location.href = "/mall/launching.asp";
        location.href = "/books/";
    } else if (site_cd == "905004") {
        location.href = "/jaejong/";
    } else{
        location.href = "/academy/";
    }
    //window.document.location.href = window.document.URL;
};

 //콤마찍기
function comma(str) {
    str = String(str);
    return str.replace(/(\d)(?=(?:\d{3})+(?!\d))/g, '$1,');
}

//콤마해제
function uncomma(str) {
    str = String(str);
    return str.replace(/[^\d]+/g, '');
}

//숫자만 입력 체크
function IsNumber(strNumber) {
    var reg = RegExp(/^(\d|-)?(\d|,)*\.?\d*$/);

    return reg .test(strNumber);
}

//1자리 숫자 앞에 0 붙이기
function itoStr(num) {
    num < 10 ? num = '0' + num : num;

    return num.toString();
}

// 텍스트 길이 확인 (Byte) 
function checkTextLenByte(obj, mLen) {
    var i, len;
    var byteLen = 0;
    var value = obj.value;

    for (i=0, len=value.length; i<len; i++) {
        ++byteLen;

        if ((value.charCodeAt(i) < 0) || (value.charCodeAt(i) > 127)) ++byteLen;

        if (byteLen > mLen) {
            alert("1~"+(mLen / 2)+"자의 한글, 또는 2~"+mLen+"자의 영문, 숫자, 문장기호로 입력이 가능합니다.");
            obj.value = value.substring(0, i);
            obj.focus();
            return false;
        }
    }
    
    return true;
}

$(function() {
    // 숫자만 입력
    $(".onlyNumber").css("imeMode","disabled").keypress(function(event) {
        if(event.which && (event.which < 48 || event.which > 57) ) {
            event.preventDefault();
        }
    }).keyup(function() {
        if ($(this).val() != null && $(this).val() != '') {
            $(this).val($(this).val().replace(/[^0-9]/g, ''));
        }
    });
    
    // maxlength 길이만큼만 적용(모바일에서는 maxlength가 적용되지 않는다.)
    $(".onlyMaxlength").css("imeMode","disabled").keyup(function() {
        if (this.value.length > this.maxLength){
            this.value = this.value.slice(0, this.maxLength);
        }
    });

	if($(".clsDate").length > 0){
		// Datepicker Set s
		$.datepicker.setDefaults({
			dateFormat: 'yy-mm-dd',
			prevText: '이전 달',
			nextText: '다음 달',
			monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
			monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
			dayNames: ['일', '월', '화', '수', '목', '금', '토'],
			dayNamesShort: ['일', '월', '화', '수', '목', '금', '토'],
			dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],
			showMonthAfterYear: true,
			yearSuffix: '년'
		});

		$( ".clsDate" ).datepicker();
		// Datepicker Set e
	}



});

// 택배사 주문조회
var delv = function(delv_num){
    // window.open('https://www.doortodoor.co.kr/parcel/doortodoor.do?fsp_action=PARC_ACT_002&fsp_cmd=retrieveInvNoACT&invc_no='+delv_num);

    window.open('http://nplus.doortodoor.co.kr/web/detail.jsp?slipno='+delv_num);
};

/*-----------------------------------------------------------------------
 업 무 명 : Daum 공통 지도 팝업
 모듈기능 : Daum 공통 지도 팝업
 작성일자 : 2017/03/28
 작 성 자 : 이재충
 변수내용 : mapAddr: 주소(필수), mapInfo: 정보
-----------------------------------------------------------------------
 변경일자   변경자  변동내역
-----------------------------------------------------------------------

-----------------------------------------------------------------------*/
var IfMapView = function(mapAddr, mapInfo) {
    //alert(mapAddr);
    var tUrl = "/common/daum_map.asp?mapAddr=" + mapAddr;
         tUrl += "&mapInfo=" + mapInfo;

    var tOpt = "width=530,height=530,scrollbars=no,toolbar=no,menubar=no,resizable=yes";

    window.open(tUrl, "mapPop", tOpt);
};


/*-----------------------------------------------------------------------
 업 무 명 : 카카오멥 지도 검색 ( 새창 )
 모듈기능 : 카카오멥 지도 검색 ( 새창 )
 작성일자 : 2018/01/31
 작 성 자 : kym
 변수내용 : 검색어
-----------------------------------------------------------------------
 변경일자   변경자  변동내역
-----------------------------------------------------------------------

-----------------------------------------------------------------------*/
var IfKakaoMap = function(mapSearch) 
{
	var mapUrl = "http://map.daum.net/link/search/"+ mapSearch
	window.open(mapUrl);
}

/*-----------------------------------------------------------------------
 업 무 명 : Daum 공통 우편번호
 모듈기능 : Daum 공통 우편번호
 작성일자 : 2017/03/28
 작 성 자 : 이재충
 변수내용 : sPost: 우편번호, sAddr1: 주소1
-----------------------------------------------------------------------
 변경일자   변경자  변동내역
-----------------------------------------------------------------------

-----------------------------------------------------------------------*/
var IfDaumPostCode = function(sPost, sAddr1) {
    new daum.Postcode({
        oncomplete: function(data) {
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

            // 각 주소의 노출 규칙에 따라 주소를 조합한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var fullAddr = ''; // 최종 주소 변수
            var extraAddr = ''; // 조합형 주소 변수

            // 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
            if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                fullAddr = data.roadAddress;

            } else { // 사용자가 지번 주소를 선택했을 경우(J)
                fullAddr = data.jibunAddress;
            }

            // 사용자가 선택한 주소가 도로명 타입일때 조합한다.
            if(data.userSelectedType === 'R'){
                //법정동명이 있을 경우 추가한다.
                if(data.bname !== ''){
                    extraAddr += data.bname;
                }
                // 건물명이 있을 경우 추가한다.
                if(data.buildingName !== ''){
                    extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
                fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
            }

            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            $("#" + sPost).val(data.zonecode);
            $("#" + sAddr1).val(fullAddr);
        }
    }).open();
};



// 파일 다운로드
var IfFileDownload = function(sFolderCd, sDownFileNm, sFileNm) {
    document.domain = "sdijbooks.com";

    var domain_url = "//file.sdijbooks.com";
	if (location.host == "devn.sdijbooks.com" || location.host == "dm.sdijbooks.com") {
		domain_url = "//dfile.sdijbooks.com";
	}

    var tUrl = domain_url + "/file_download.asp?sFolderCd=" + sFolderCd;
        tUrl += "&sDownFileNm=" + sDownFileNm;
        tUrl += "&sFileNm=" + sFileNm;
   
    location.href = tUrl;   
};

// 파일 다운로드 - 경로설정
var IfFilePathDownload = function(sFolderPath, sDownFileNm, sFileNm) {
    document.domain = "sdijbooks.com";

    var domain_url = "//dfile.sdijbooks.com";
	if (location.host == "www.sdijbooks.com") {
		domain_url = "//file.sdijbooks.com";
	}

    var tUrl = domain_url + "/file_download.asp?sFolderPath=" + sFolderPath;
        tUrl += "&sDownFileNm=" + sDownFileNm;
        tUrl += "&sFileNm=" + sFileNm;


    location.href = tUrl;

};

// 레이어 팝업 정렬
jQuery.fn.center = function () {
    this.css("position","absolute");
    this.css("top", Math.max(0, (($(window).height() - $(this).outerHeight()) / 2) + $(window).scrollTop()) + "px");
    this.css("left", Math.max(0, (($(window).width() - $(this).outerWidth()) / 2) + $(window).scrollLeft()) + "px");
    return this;
}


var IfFindIdAct = function(){
	location.href="/member/regist_find_id.asp?loginFlg=M"; //이벤트용 메인용 확인 구분값(M : 메인)
};

var IfFindPwdAct = function(){
    location.href = "/member/regist_find_pwd.asp";
};

var IfJoinAct2 = function(){
    alert("2");
    location.href = "/member/regist_step1.asp";
};

var IfLoginAct = function(){
    location.href = "/member/login.asp";
};

/*
var IfSetTopInfo = function(menuName, cartCnt) {
	$("#header").find("h2 .tit").html(menuName);
	if(parseInt(cartCnt) > 0){
		$(".header").find("button.shopping").append("<sup class='count'>"+cartCnt+"</sup>");
	}
};
*/

//파일업로드
var IfFileGetAdd = function(sTagNm, sFileNm, sFolderCd, sGubun, sType) {
    document.domain = "sdijbooks.com";

	var domain_url = "//dfile.sdijbooks.com";
	if (location.host == "www.sdijbooks.com") {
		domain_url = "//file.sdijbooks.com";
	}

    var tUrl = domain_url + "/board_front_books_fileup_new.asp?sTagNm=" + sTagNm;
        tUrl += "&sFileNm=" + sFileNm;
        tUrl += "&sFolderCd=" + sFolderCd;
        tUrl += "&sGubun=" + sGubun;
		tUrl += "&sType=" + sType;
    var tOpt = "width=600,height=210,location=no, directories=no,resizable=no,status=no,toolbar=no,menubar=no";

    window.open(tUrl,"fileUploadPop",tOpt);
};

//칼럼 - 책갈피 설정
var IfSetBookmark = function(obj, col_cd, login_chk) {

	var ans;
	var confirm1;
	var confirm2;
	var state;
	var origin_chk;

	if (login_chk=="N")	{
		ans = confirm("로그인 후 설정 가능합니다.\n\n로그인 하시겠습니까?");
		if(ans){
			document.location.href = "/member/login.asp";
		}
	}else{
	
		if(obj.checked){
			confirm1	= "해당 칼럼을 책갈피에 추가 하시겠습니까?";
			confirm2	= "책갈피에 추가 되었습니다. MY 서재 책갈피 목록으로 이동 하시겠습니까?";
			state		= "Y";
			origin_chk	= false;

		}else{
			confirm1	= "해당 칼럼의 책갈피를 해지하시겠습니까?";
			confirm2	= "책갈피가 해제 되었습니다. MY 서재 책갈피 목록으로 이동 하시겠습니까?";
			state		= "N";
			origin_chk	= true;
		}

		ans = confirm(confirm1);
		if(ans){

			var params = new Object();
				params.col_cd = col_cd;
				params.state = state;

			$.ajax({
				type: "POST",
				url: "bookmark_proc.asp",
				async: false,
				data: params,
				contentType: "application/x-www-form-urlencoded; charset=UTF-8",
				dataType: "Html",
				timeout: 5000,
				success: function(data) {
					if(confirm(confirm2)){	
						//location.href = "MY 서재 책갈피 목록.asp"
						alert("어딘지 몰라요~ 나중에 이동합시다 ㅋㅋㅋ")
					}else{
						location.reload();
					}

				},
				error: function(data, msg) {
					alert(msg);
				}
			});

		}else{

			obj.checked = origin_chk;
		}

	}
};

// 도서 및 패키지 상세화면
var IfDetailView = function(productType, productCd) {
    var tUrl = "/detail/book/?bookCd=" + productCd;
    if (productType == "310008") {
        tUrl = "/detail/pkg/?pkgCd=" + productCd;
    }

    document.location.href = tUrl;
};

// 자료실
var IfBookFlieDownload = function(file_url, path, fnm, realfnm) {
    location.href = file_url + "/book_file_download.asp?path="+path+"&fnm="+fnm+"&realfnm="+realfnm;
};

// 하나의 상품 장바구니 및 바로결제
var IfCartIn = function(buyFlg, productType, productCd, buyCnt, memId) {
    var params = new Object();
        params.buyFlg = buyFlg;
        params.cartInItem = productType + "|" + productCd + "|" + buyCnt;

	if (memId == "") {
		if (confirm("장바구니는 로그인 후 이용 가능합니다.\n비회원으로 구매하시겠습니까?")) {
			params.buyFlg = "pay";
		} else {
			location.href = "/member/login.asp";
			return;
		}
	}

    IfCartInProc(params);
};

// 장바구니 처리
var IfCartInProc = function(params) {
    $.ajax({
        type: "POST",
        url: "/pay/cart/cartIn.asp",
        timeout: 5000,
        data: params,
        async: false,
        dataType: "json",
        success: function(data) {
            if (data.status == "200") {
                if (params.buyFlg == "cart") {
                    if (confirm("상품이 장바구니에 담겼습니다.\n지금 확인하시겠습니까?")) {
                        document.location.href = "/pay/cart/default.asp";
                    }
                } else if (params.buyFlg == "pay") {
                    document.location.href = "/pay/cart/checkout.asp";
                }            
            } else {
                alert(data.result);
            }
        },
        error : function(data, msg) {
            alert("관리자에게 문의하세요.(" + msg + ")");
        }
    });
};

// 배너 이동
var IfBannerPop = function(linkUrl, landingType) {
    if (landingType == "1") {
        // 기존 페이지 이동
        document.location.href = linkUrl;
    } else if (landingType == "2") {
        // 새창으로 이동
        window.open(linkUrl, "banner", "_blank");
        
    } else if (landingType == "3") {
        // 새탭으로 이동
        window.open(linkUrl);
    }
}