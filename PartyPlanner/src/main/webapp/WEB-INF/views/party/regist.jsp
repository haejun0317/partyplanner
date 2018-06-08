<%@ page contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>파티 개설하기 페이지</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta name="description" content="" />
<meta name="author" content="" />

<!-- css -->
<link
  href="https://fonts.googleapis.com/css?family=Noto+Serif:400,400italic,700|Open+Sans:300,400,600,700"
  rel="stylesheet">
<link href="/resources/bootstrap/css/bootstrap.css" rel="stylesheet" />
<link href="/resources/bootstrap/css/bootstrap-responsive.css"
  rel="stylesheet" />
<link href="/resources/bootstrap/css/fancybox/jquery.fancybox.css"
  rel="stylesheet">
<link href="/resources/bootstrap/css/jcarousel.css" rel="stylesheet" />
<link href="/resources/bootstrap/css/flexslider.css" rel="stylesheet" />
<link href="/resources/bootstrap/css/style.css" rel="stylesheet" />

<!-- 스마트에디터 -->
<link href="/resources/bootstrap/smarteditor/css/smart_editor2_in.css"
  rel="stylesheet" />
<link
  href="/resources/bootstrap/smarteditor/css/smart_editor2_items.css"
  rel="stylesheet" />
<link href="/resources/bootstrap/smarteditor/css/smart_editor2_out.css"
  rel="stylesheet" />
<link href="/resources/bootstrap/smarteditor/css/smart_editor2.css"
  rel="stylesheet" />
<link href="/resources/bootstrap/js/writeForm.js" rel="stylesheet" />

<link type="text/css" href="css/bootstrap.min.css" />

<!-- Theme skin -->
<link href="/resources/bootstrap/skins/default.css" rel="stylesheet" />


<!-- Fav and touch icons -->
<link rel="apple-touch-icon-precomposed" sizes="144x144"
  href="ico/apple-touch-icon-144-precomposed.png" />
<link rel="apple-touch-icon-precomposed" sizes="114x114"
  href="ico/apple-touch-icon-114-precomposed.png" />
<link rel="apple-touch-icon-precomposed" sizes="72x72"
  href="ico/apple-touch-icon-72-precomposed.png" />
<link rel="apple-touch-icon-precomposed"
  href="ico/apple-touch-icon-57-precomposed.png" />
<link rel="shortcut icon" href="ico/favicon.png" />

<!-- 달력 -->
<link rel="stylesheet"
  href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<!-- 스마트 에디터 api
<script type="text/javascript" src="/resources/js/jquery-1.11.3.min.js"/></script>
<script type="text/javascript" src="/resources/bootstrap/smarteditor/js/HuskyEZCreator.js" charset="utf-8"></script>-->

<!-- 타임피커 -->
<link type="text/css" href="css/bootstrap-timepicker.min.css" />
<link rel="stylesheet"
  href="//cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.css">
<script
  src="//cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.js"></script>

<!-- 우편번호 -->
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>

<!-- <script type="text/javascript" src="https://ajax.googLeapis.com/ajax/jquery/1.11.1/jquery.min.js"></script>
<script type="text/javascript" src="/recourse/bootstrap/datepicker/bootstrap-datepicker.js"></script>
<link rel="stylesheet" type="text/css" href="datepicker/bootstrap-datepicker.css"> -->


<style type='text/css'>


textarea {
    resize: none;
}

/** 이미지 업로드*/
.filebox input[type="file"] {
   position: absolute;
   width: 1px;
   height: 1px;
   padding: 0;
   margin: -1px;
   overflow: hidden;
   clip: rect(0, 0, 0, 0);
   border: 0;
}

.filebox label {
   display: inline-block;
   padding: .5em .75em;
   color: #999;
   font-size: inherit;
   line-height: normal;
   vertical-align: middle;
   background-color: #fdfdfd;
   cursor: pointer;
   border: 1px solid #ebebeb;
   border-bottom-color: #e2e2e2;
   border-radius: .25em;
} /* named upload */
.filebox .upload-name {
   display: inline-block;
   padding: .5em .75em;
   /* label의 패딩값과 일치 */
   font-size: inherit;
   font-family: inherit;
   line-height: normal;
   vertical-align: middle;
   background-color: #f5f5f5;
   border: 1px solid #ebebeb;
   border-bottom-color: #e2e2e2;
   border-radius: .25em;
   -webkit-appearance: none;
   /* 네이티브 외형 감추기 */
   -moz-appearance: none;
   appearance: none;
}

/* imaged preview */
.filebox .upload-display {
/* 이미지가 표시될 지역 */
  margin-bottom: 5px;
}

.button {
   background-color: #4CAF50;
   border: none;
   color: white;
   padding: 20px;
   text-align: center;
   text-decoration: none;
   display: inline-block;
   font-size: 16px;
   margin: 4px 2px;
   1
}

.button {
   border-radius: 8px;
}

table, tr, td, th {
   border-style: soild;
   border-color: #000;
   border-collapse: collapse;
}

td {
   margin: 2px;
   padding: 5px;
}
</style>


<script type="text/javascript">

var locked = false;
$(function(){
	$("#isgroups").change(function(){
		if($("#isgroups").prop("checked")){
			$("#groupNum").attr("disabled", false);
			
		}else{
			$("groupNum").attr("disabled", true);
		}
	});
});


$(function(){
$("#pay").change(function(){
	if($("#pay").prop("checked")){
		$("#payNum").attr("disable", false);
	}else{
		$("payNum").attr("disable", true);
	}
	
});
	
	
});




















   /** 이벤트 처리*/
   /** 이미지 업로드*/
   $(document).ready(function() {
       var fileTarget = $('.filebox .upload-hidden'); 
      fileTarget.on('change', function(){ // 값이 변경되면 
         if(window.FileReader){ // modern browser 
            var filename = $(this)[0].files[0].name; 
         } else { // old IE 
            var filename = $(this).val().split('/').pop().split('\\').pop(); // 파일명만 추출 
            } 
      // 추출한 파일명 삽입 
      $(this).siblings('.upload-name').val(filename); 
      });  

      $('#ex_filename').change(function name() {
         console.log(event.srcElement.files[0].name);
         $("#newupload").val(event.srcElement.files[0].name);
      });

   });

   /** 라디오버튼 : 신청방법 설정 */
   function selectApply() {
      console.log($('input[name=price]:checked').val());
   }

   /** 라디오버튼 : 익명 및 실명 신청 */
    function selectName() {
      console.log($('input[name=isname]:checked').val());
   } 

   /** 라디오버튼 : 프리미엄 등록 */
   function selectPremium() {
      $('input[name=premium]').attr('value', event.target.value);
      console.log($('input[name=premium]:checked').val());
   }

   /** 셀렉옵션 : 카테고리 */
   function selCategory(val) {
      $('input[name=category]').attr('value', event.target.value);
      console.log($('input[name=category]').val());

   }

   /** 체크 박스 : 동반여부 */
   function companyCheck() {
      $('input[name=partner]').attr('value', event.target.value);
      console.log($('input[name=partner]').val());
   }

   /** 체크 박스 : 제3자 정보제공 동의  */
   function selInfoCheck() {
      $('input[name=infoCheck]').attr('value', event.target.value);
      console.log($('input[name=infoCheck]').val());
   }


   /** 필드 : 우편 번호 찾기 테스트
   function selTextPost(post, address1, address2) {
      $('input[name=post]').attr('value', event.target.value);
      $('input[name=address1]').attr('value', event.target.value);
      $('input[name=address2]').attr('value', event.target.value);
      console.log($('input[name=post]').val()
            + $('input[name=address1]').val()
            + $('input[name=address2]').val());
      //   console.log($('input[name=address1]').val());
      //   console.log($('input[name=address2]').val());
   }*/

  
   /** 유료 신청 테스트*/
   function selcharged() {
      var value = $('input[name=price]:checked').val();
      console.log(value);
   }

   /** 서영이 
   /** 파티등록 클릭이벤트 --------------파티등록 하는 부분 --------------- */
   function postForm() {	   
	   	//console.log($("#categories").val());
		//console.log($("#partyNames").val());
		
		//console.log($("#partyNames").val());
		  //console.log($("#recstarts").val());
		  //console.log($("#recends").val());
		  //console.log($("#startdates").val());
		  //console.log($("#enddates").val());
		  //console.log($("#partytime").val());
		  //console.log($("#recruits").val());
		//  console.log($("#price").val());
		  console.log($("#pay").val());
		//  console.log($("#nopay").val());
		//  console.log($("#nonames").val());
		 // console.log($("#premiums").val());
		  //console.log($("#isgroups").val());
		  //console.log($("#usemileage").val());
		  //console.log($("#contents").val());
	   
	  
	  $("#newName").val($("#partyNames").val()); //파티명
	  $("#categories").val($("#newCategory").val()); //카테고리
	  $("#newupload").val($("#upload-name").val());  //모임사진
	  $("#newrecstart").val($("#recstarts").val());  //모임모집날짜 시작
	  $("#newrecend").val($("#recends").val());    //모임모집날짜 종료
	  $("#newstartdate").val($("#startdates").val()); //파티기간 시작
	  $("#newenddate").val($("#enddates").val()); //파티기간 종료
	  $().val($("#partytime").val()); //파티 시간 (컬럼없음)
	  $("#sample6_postcodeForm").val($("#sample6_postcode").val() + $("#sample6_address").val() + $("#sample6_address2").val()); 
	  $("#newrecruit").val($("#recruits").val()); //모집 인원
	  $("#newprice").val($('input[name="price"]:checked').val()); //신청방법 1-유료 신청
	  $("#newname").val($('input[name=isname]:checked').val()); //익명 등록
	  $("#newpremium").val($('input[name=premium]:checked').val()); //프리미엄 등록
	  $("#newmileage").val($("#usemileage"));//마일리지 넣는 곳이 없음
	  $("#newpartner").val($("#isgroups").val()); //동반인원
	  $("#newpartnernum").val($("#groupNum").val()); //동반인원
	  $("#newcontent").val($("#contents").val()); //모임소개
	  $("#newcheck").val($("#checks").val()); //출석번호
	  
	  //console.log($("#newCategory").val());
	  //console.log($("#newName").val());
	  console.log($("#upload-name").val());
	  //console.log($("#recstarts").val());
	  //console.log($("#recends").val());
	  //console.log($("#enddates").val());
	  //console.log($("#sample6_postcode").val() +  $("#sample6_address").val() + $("#sample6_address2").val());
	  //console.log($("#recruits").val());
	  //console.log($("#recruits").val());
	  console.log($("#newprice").val());
	 // console.log($("#newcheck").val());
	 // console.log($("#newname").val());
	  //onsole.log($("#newprice").val());
	  
	  
	   $("#myForm").submit(); 
   }
	  
	   /*
      $('input[name=category]').attr('value', event.target.value); //카테고리
      $('input[name=name]').attr('value', event.target.value); //파티명

      //모임 장소
      $('input[name=post]').attr('value', event.target.value); // 우편 주소 
      $('input[name=address1]').attr('value', event.target.value);
      $('input[name=address2]').attr('value', event.target.value);

      $('input[name=content]').attr('value', event.target.value); // 모임소개

      $('#ex_filename').change(function name() { //이미지 등록
         $("#upload-name").val(event.srcElement.files[0].name);
      });

      //신청방법
      $('input[name=price]').attr('value', event.target.value); // 유료 및 무료
      $('input[name=nameopt]').attr('value', event.target.value); // 실명 및 익명

      //프리미엄
      $('input[name=preminum]').attr('value', event.target.value); //프리미엄 등록
      $('input[name=mileage]').attr('value', event.target.value); // 사용 할 마일리지

      //모집 인원 
      //$('input[name=pCheck]').attr('value', event.target.value);   // 인원 여부 체크
      $('input[name=recruit]').attr('value', event.target.value); //모집 인원 설정

      //모집 기간
      $('input[name=recstart]').attr('value', event.target.value);
      $('input[name=recend]').attr('value', event.target.value);

      //모임 기간
      $('input[name="startdate"]').attr('value', event.target.value);
      $('input[name=enddate]').attr('value', event.target.value);

      //출석체크번호
      $('input[name=checknum]').attr('value', event.target.value);
      
      console.log($('input[name=checknum]').attr('value', event.target.value));
      */
   

   /**지도 API**/
   function sample6_execDaumPostcode() {
      new daum.Postcode(
            {
               oncomplete : function(data) { // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

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
                  if (data.userSelectedType === 'R') {
                     //법정동명이 있을 경우 추가한다.
                     if (data.bname !== '') {
                        extraAddr += data.bname;
                     }
                     // 건물명이 있을 경우 추가한다.
                     if (data.buildingName !== '') {
                        extraAddr += (extraAddr !== '' ? ', '
                              + data.buildingName : data.buildingName);
                     }
                     // 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
                     fullAddr += (extraAddr !== '' ? ' (' + extraAddr
                           + ')' : '');
                  }

                  // 우편번호와 주소 정보를 해당 필드에 넣는다.
                  //document.getElementById('sample6_postcode').value = data.zonecode; //5자리 새우편번호 사용
                  document.getElementById('sample6_address').value = fullAddr;

                  // 커서를 상세주소 필드로 이동한다.
                  document.getElementById('sample6_address2').focus();
               }
            }).open();
   }



   /** 데이터 피커 */
   $(function() {
      $("#recstart").datepicker({
         numberOfMonths : 1,
         dateFormat : 'yy-mm-dd',
         onSelect : function(selected) {
            $("#recend").datepicker("option", "minDate", selected)
         }
      });
      $("#recend").datepicker({
         numberOfMonths : 1,
         dateFormat : 'yy-mm-dd',
         onSelect : function(selected) {
        	 
            $("#recstart").datepicker("option", "maxDate", selected)
         }
      });
      $("#startdate").datepicker({
         numberOfMonths : 1,
         dateFormat : 'yy-mm-dd',
         onSelect : function(selected) {
            $("#enddate").datepicker("option", "minDate", selected)
         }
      });
      $("#enddate").datepicker({
         numberOfMonths : 1,
         dateFormat : 'yy-mm-dd',
         onSelect : function(selected) {
            $("#startdate").datepicker("option", "maxDate", selected)
         }
      });
   });

   /** 타임 피커*/
   $(function() {
      $("#timepicker").timepicker({});
   });

   $("#timepicker").timepicker({
      minuteStep : 1,
      template : 'modal',
      appendWidgetTo : 'body',
      showSeconds : true,
      showMeridian : false,
      defaultTime : false
   });

   /** 이벤트 발생 */
   function eventOccur(evEle, evType) {
      if (evEle.fireEvent) {
         evEle.fireEvent('on' + evType);
      } else {
         //MouseEvents가 포인트 그냥 Events는 안됨~ ??
         var mouseEvent = document.createEvent('MouseEvents');
         /* API문서 initEvent(type,bubbles,cancelable) */
         mouseEvent.initEvent(evType, true, false);
         var transCheck = evEle.dispatchEvent(mouseEvent);
         if (!transCheck) {
            //만약 이벤트에 실패했다면
            console.log("클릭 이벤트 발생 실패!");
         }
      }
   }

   /** 위 함수가 잘 되는지 체크 */
   function check() {
      eventOccur(document.getElementById('image'), 'click');
      /* alert(orgFile.value); 이벤트 처리가 끝나지 않은 
          타이밍이라 값 확인 안됨! 시간차 문제 */
   }
</script>
<body>
  <jsp:include page="/WEB-INF/views/include/header.jsp" />
  <section id="inner-headline">
    <div class="container">
      <div class="row">

        <div class="span4">
          <div class="inner-heading">
            <h2>파티 개설하기</h2>
          </div>
        </div>

        <div class="span8">
          <ul class="breadcrumb">
            <li><a href="#"><i class="icon-home"></i></a><i
              class="icon-angle-right"></i></li>
            <li><a href="#">Features</a><i class="icon-angle-right"></i></li>
            <li class="active">Typography</li>
          </ul>

        </div>
      </div>
    </div>
  </section>


  <section id="content">
  <form action="/regist" method="POST">
    <div class="container">
     <!--  테이블 들어갈곳 -->
      <!-- <h4>Default styles</h4> -->
      <table class="table">
        <tbody>
          <tr>
            <!-- 첫번째 열 -->
            <td width="20%" style='text-align: center;'><font size=5><b>모임명</b></font></td>
            <td width="80%"><input type="hidden" name="name"
              value=""> <input class="form-control"
              name="name" id='partyNames' type="text"
              placeholder="모임명을 입력하세요"
              style="border-radius: 10px;"></td>
          </tr>
          <tr>
            <!-- 두번째 열 -->
            <td style='text-align: center'><font size=5><b>모임 카테고리</b></font></td>
            <td><select name="category" id="newCategory"
              class="form-control"
              style="border-radius: 10px;">
                <option value="" disabled selected hidden>카테고리를
                  선택하세요</option>
                <option value="교육">교육</option>
                <option value="강연">강연</option>
                <option value="세미나">세미나</option>
                <option value="컨퍼런스">컨퍼런스</option>
                <option value="예술">예술</option>
                <option value="문화">문화</option>
                <option value="방송">방송</option>
                <option value="취미활동">취미활동</option>
                <option value="소모임">소모임</option>
                <option value="공모전">공모전</option>
                <option value="전시">전시</option>
                <option value="패션">패션</option>
                <option value="뷰티">뷰티</option>
                <option value="이벤트">이벤트</option>
                <option value="파티">파티</option>
                <option value="여행">여행</option>
                <option value="후원금 모금">후원금 모금</option>
                <option value="기타">기타</option>
            </select></td>
          </tr>
          <tr>
            <td style='text-align: center'><font size=5><b>대표 사진 등록</b></font></td>
            <td>
              <div class="filebox">
                <input id="upload-name" value="null" disabled="disabled"
                  style="border-radius: 10px; height: 30px;"> <label
                  for="ex_filename" style="border-radius: 10px;">업로드</label>
                <input type="file" name="image" id="ex_filename"
                  class="upload-hidden">
              </div>
            </td>
          </tr>
        <tr>
            <td style='text-align: center'><font size=5><b>인원 모집 기간</b></font></td>
            <td>
              <div class="input-group bootstrap-timepicker timepicker">
                <input name="recstart" id="recstarts" type="date"
                  style="border-radius: 10px;" 
                  format="dd/MM/yyyy"> <font size=4>~</font> <input
                  name="recends" id="recends" type="date"
                  style="border-radius: 10px;">
               
              </div>
            </td>
          </tr>

            <tr>
            <td style='text-align: center'><font size=5><b>파티 기간</b></font></td>
            <td>
              <div class="input-group bootstrap-timepicker timepicker">
                <input name="startdate" id="startdates" type="date" style="border-radius: 10px;" format="dd/MM/yyyy"> <font size=4>~</font> 
                <input name="enddate" id="enddates" type="date" style="border-radius: 10px;">
                <font size=4>시간 : </font><input type="time" name="partytime" id="partytime" style="border-radius: 10px; , width: 100px;" class="form-control" > 
              </div>
            </td>
          </tr>
          <tr>
            <td style='text-align: center'><font size=5><b>모임 장소</b></font></td>
            <td>
              <form name="place">
                <!-- input type="text" name='place' id="sample6_postcode" placeholder="우편번호" style="border-radius: 10px;"--> 
               
                <input type="text" name='place' id="sample6_address" placeholder="주소" onchange="selTextPost()" style="border-radius: 10px;"> 
                <input type="text" name='place' id="sample6_address2" placeholder="상세주소"  style="border-radius: 10px;">
                 <input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기" style="border-radius: 10px; height: 30px;"><br>
              </form>
            </td>
          </tr>
          <tr>
            <td style='text-align: center'><font size=5><b>모집 인원</b></font></td>
            <td><input type="number" id="recruits" name="recruit"
              style="border-radius: 10px;"
              style="width: 100px;" step="10" placeholder="인원 수(명)">
            </td>
          </tr>
          <tr>
            <td style='text-align: center'><font size=5><b>신청 방법1</b></font></td>
            <td>
              <div>
                <input type="radio" name="price" id="nopay" value="null" onclick = "selectApply()"> 
                <font size=4>무료신청&emsp;</font> 
                <input type="radio" name="price" id="pay" value="Y" onclick = "selectApply()">
                <font size=4><span style="line-spacing: 10%">유료신청 
                <input type="text" name="charged" id="payNum" style="border-radius: 10px;" style="width: 100px;"> 
                <input type="hidden" name="price" value=""><br>    
                </span>
                </font>
              </div>
            </td>
          </tr>
          <tr>
            <td style='text-align: center'><font size=5><b>신청 방법2</b></font></td>
            <td>
              <div>
                <input type="radio" name="isname" id="name" value="N"  onclick="selectName()"> 
                <font size=4>실명신청&emsp;</font> 
                <input type="radio" name="isname" id="nonames" value="Y" onclick="selectName()">
                <font size=4>익명 신청</font> 
              </div>
            </td>
          </tr>
          
          <tr>
            <td style='text-align: center'><font size=5><b>프리미엄 등록</b></font></td>
         
            <td>
           
              <div>
              <form name="premium">
                <span><input type="radio" name="premium" id='nopremiums' value='N' onclick="selectPremium()">
                  <font size=4>미등록&emsp;</font></span> <span style="">&emsp;
                  <input type="radio" name="premium" id='premiums' value='Y' onclick="selectPremium()"> 
                  <font size=4>등록&emsp;</font></span><br> <b>
                  
                  <span><font size=4>보유 마일리지</font>&emsp; ${member.mileage}
                </span></b> <b><font size=4>&emsp;&emsp;마일리지 사용&emsp;</font> 
                <input type="number" id="usemileage" name="mileage" style="border-radius: 10px;" style="width: 100px;" min="500" max="1000" step="10"></b>
                </form>
              </div>
         
            </td>
             
          </tr>

          <tr>
            <td style='text-align: center'><font size=5><b>그룹 설정</b></font></td>
            <td>
              <form name="partner">
                <input type="checkbox" name="partner" id="isgroups" value='Y' onclick="companyCheck()"> 
                <font size=4>동반인원 여부</font>
                <!--input class="form-control" style="border-radius: 10px;" name="pNum" id="groupnum" type="number" style="width: 100px;" 
          min="1" max="100" onChange = "selPartner()"-->
          <input type="text" id="groupNum" disabled/>
                <input type="hidden" name="partner" value="">
                <!-- 동반인원 체크박스에 해당 -->
              </form>
            </td>
          </tr>

          <tr>
            <td style='text-align: center'><font size=5><b>모임 소개</b></font></td>
            <td>
              <div>
                <!-- 스마트 에디터 시작 부분 -->

                <textarea  name="content" id="contents" cols="30" rows="10"
                  title="카페설명" name="content" id="content"
                  class="input_txt3 __byte(1~100) __notnull"
                  maxlength="200" style="width: 100%;"  ></textarea>
              </div>
            </td>
          </tr>

          <tr>
            <td style='text-align: center'><font size=5><b>출석 확인 번호</b></font></td>
            <td><input class="form-control" style="border-radius: 10px;" id="checks" name="checknum" type="text" placeholder="12345" >
            </td>
          </tr>
        </tbody>
      </table>



      <div class="solidline"></div>
    </div>
    </form>
  </section>


  <section>
    <div class="container">
        <span style="line-height: 10%"><br></span>
        <div>
          <label for="infoCheck"><font size=5>정보제공 동의 설정</font></label>
          <span style="line-height: 70%"> <textarea
              name="textarea3"
              style="resize: none; width: 1200px; height: 200px; border-radius: 10px;"
              id="textarea3" readonly="readonly"
              placeholder="모임신청 / 신청취소 안내
* 모임의 신청/취소/변경/환불은 참여신청 기간 내에만 가능합니다.
* 결제한 유료모임은 환불 시 결제 수단과 환불 시점에 따라 수수료가 부과될 수 있습니다. 자세한 사항은 취소/환불약관을 확인해주세요.
* 결제, 환불, 참여신청 수정/취소, 참여상태 확인, 참여내역 확인은 마이페이지에서 할 수 있습니다.
* 모임 또는 그룹의 설정, 모집정원 초과 여부에 따라 대기자로 선정될 수 있습니다. 자세한 사항은 FAQ를 확인해주세요.
* 온오프믹스 결제서비스를 이용하는 모임은 개설자의 사업자 여부에 따라 결제증빙 발행이 가능합니다. 자세한 사항은 FAQ를 확인해 주세요.
* 개설자 선정방식 또는 개설자 통장입금 방식의 모임 참여/결제 확인은 개설자에게 문의 바랍니다.
* 온오프믹스는 참여신청 및 참가비 결제 기능을 제공하는 회사로 모임개설자(주최측)가 아닙니다. 모임 내용과 관련한 사항은 모임 개설자에게 문의 바랍니다."></textarea></span>
          <input type="checkbox" name="infoCheck" id="infocheck"
            value="Y" onclick="selInfoCheck()"> <font size=4>제3자
            정보제공 동의</font>
        </div>
        <span style="line-height: 70%"><br></span>

        <!-- 서영이2 -->
        <div style="text-align: center">
          <button onclick="postForm()" id="addParty" type="submit" 
            value='add party' class="btn-medium btn-rounded">파티 등록</button>
          <input type="reset" class="btn-medium btn-rounded"
            value="delparty" id="replyDelPBtn" onclick="location.href='/'"/>
        </div>
 
      
        <form action="regist" method="post" id="myForm">
         <input type="hidden" value="null" id="categories" name="category">
         <input type="hidden" value="null" id="newName" name="name">
         <input type="hidden" value="null" id="newupload" name="image"> 
         <input type="hidden" value="null" id="newrecstart" name="recstart">
         <input type="hidden" value="null" id="newrecend" name="recend">
         <input type="hidden" value="null" id="newstartdate" name="startdate">
         <input type="hidden" value="null" id="newenddate" name="enddate">
         <input type="hidden" value="null" id="partytime" name="partytime">
         <input type="hidden" value="null" id="sample6_postcodeForm" name="place"> 
         <input type="hidden" value="null" id="newrecruit" name="recruit">
         <input type="hidden" value="null" id="newprice" name="price">
         <input type="hidden" value="null" id="names" name="isname">
         <input type="hidden" value="null" id="newpremium" name="primeum">
         <input type="hidden" value="null" id="newpartner" name="partner">
         <input type="hidden" value="null" id="newcontent" name="content">
         <input type="hidden" value="null" id="newcheck" name="checknum">
         <input type="hidden" value="admin"  name="member">
        </form>

      <span style="line-height: 70%"><br></span>
    </div>
    
  </section>

  <jsp:include page="/WEB-INF/views/include/footer.jsp" />
</body>
</html>