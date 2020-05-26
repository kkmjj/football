
// opener관련 오류가 발생하는 경우 아래 주석을 해지하고, 사용자의 도메인정보를 입력합니다. ("팝업API 호출 소스"도 동일하게 적용시켜야 합니다.)
document.domain = "localhost";

function goPopup(){
	// 주소검색을 수행할 팝업 페이지를 호출합니다.
	// 호출된 페이지(jusopopup.jsp)에서 실제 주소검색URL(http://www.juso.go.kr/addrlink/addrLinkUrl.do)를 호출하게 됩니다.
	var pop = window.open("/kitri/jusoPopup.jsp","pop","width=570,height=420, scrollbars=yes, resizable=yes"); 
	
	// 모바일 웹인 경우, 호출된 페이지(jusopopup.jsp)에서 실제 주소검색URL(http://www.juso.go.kr/addrlink/addrMobileLinkUrl.do)를 호출하게 됩니다.
    //var pop = window.open("/popup/jusoPopup.jsp","pop","scrollbars=yes, resizable=yes"); 
}


function jusoCallBack(roadFullAddr,roadAddrPart1,addrDetail,roadAddrPart2,engAddr, jibunAddr, zipNo, admCd, rnMgtSn, bdMgtSn,detBdNmList,bdNm,bdKdcd,siNm,sggNm,emdNm,liNm,rn,udrtYn,buldMnnm,buldSlno,mtYn,lnbrMnnm,lnbrSlno,emdNo){
		// 팝업페이지에서 주소입력한 정보를 받아서, 현 페이지에 정보를 등록합니다.
		$("[name=ADDRESS]").val(roadAddrPart1+roadAddrPart2);
		$("[name=ADDRESS_DETAIL]").val(addrDetail);
		$("[name=ZIP_CODE]").val(zipNo);

		disable_change();
}

function disable_change() {
	var TITLE = $("#TITLE").val();
	var PER = $("#PER").val();
	var DATETIME = $("#DATETIME").val();
	var ADDRESS = $("#ADDRESS").val();
	var ADDRESS_DETAIL = $("#ADDRESS_DETAIL").val();

	if (TITLE != "" && PER != "" && DATETIME != "" && ADDRESS != ""
			&& ADDRESS_DETAIL != "") {
		$("#insertsubmit").removeAttr("disabled");
	} else {
		$("#insertsubmit").attr("disabled", "disabled");
	}
}

function checkForm() {
	document.content_form.target = "_parent";
}

$(document).ready(function() {
	$('#summernote').summernote({
		height : 450,
		lang : 'ko-KR'
	});
});
$('.datepicker').datepicker({
	format : "yyyy/mm/dd",
    startDate: 'd'
});