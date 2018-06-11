<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page session="false"%>    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<title>파티 참가</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
  <meta name="description" content="" />
  <meta name="author" content="" />

  <!-- css -->
  <link href="https://fonts.googleapis.com/css?family=Noto+Serif:400,400italic,700|Open+Sans:300,400,600,700" rel="stylesheet">
  <link href="/resources/bootstrap/css/bootstrap.css" rel="stylesheet" />
  <link href="/resources/bootstrap/css/bootstrap-responsive.css" rel="stylesheet" />
  <link href="/resources/bootstrap/css/fancybox/jquery.fancybox.css" rel="stylesheet">
  <link href="/resources/bootstrap/css/jcarousel.css" rel="stylesheet" />
  <link href="/resources/bootstrap/css/flexslider.css" rel="stylesheet" />
  <link href="/resources/bootstrap/css/style.css" rel="stylesheet" />
  <!-- Theme skin -->
  <link href="/resources/bootstrap/skins/default.css" rel="stylesheet" />
  <!-- Fav and touch icons -->
  <link rel="apple-touch-icon-precomposed" sizes="144x144" href="/resources/bootstrap/ico/apple-touch-icon-144-precomposed.png" />
  <link rel="apple-touch-icon-precomposed" sizes="114x114" href="/resources/bootstrap/ico/apple-touch-icon-114-precomposed.png" />
  <link rel="apple-touch-icon-precomposed" sizes="72x72" href="/resources/bootstrap/ico/apple-touch-icon-72-precomposed.png" />
  <link rel="apple-touch-icon-precomposed" href="/resources/bootstrap/ico/apple-touch-icon-57-precomposed.png" />
  <link rel="shortcut icon" href="/resources/bootstrap/ico/favicon.png" />
</head>
<script>
/* function go() {
    var tmp = $('[name=box]').is(':checked');
    alert(tmp); 
    
    if(!($('.box').is(":checked"))){
    	alert('이용야ㄱ관에 동의 안했습니다');
    	return false;
    }
} */

function checkSelect() {
	if($("#box").is(':checked')){
		$("#chbox").remove();
		location.href=$(arguments[0]).attr("url")
	}else{
		$("#chbox").html("<b>필수 약관에 동의 하세요.</b>")
	}
}
</script>


<script>
function selectAll(source) {
    var checkboxes = document.getElementsByName('box');
    for(var i=0; i<checkboxes.length; i++) {
        checkboxes[i].checked = source.checked; // '모두 체크'에 체크가 되면 다 체크하고 아니면 다 해제하고!
    }
}
</script>


<body>
  <!-- header 부분 -->
  <jsp:include page="/WEB-INF/views/include/header.jsp"></jsp:include>
  
   <div id="modal" class="modal styled hide fade" tabindex="-1"
    role="dialog" aria-labelledby="mySigninModalLabel"
    aria-hidden="true">
    <div class="modal-header">
      <button type="button" class="close" data-dismiss="modal"
        aria-hidden="true" style="color: black;">×</button>
      <h4 id="mySigninModalLabel">정보 제공 동의</h4>
    </div>
    <div class="modal-body">
      
      
      <form  action="read" method="post">
       <div style="text-align: center;">
         <input type="hidden" id= "orderNum" name="orderNum"value="2">
             <div style="font-size: 10pt;">
                <b style="color: black;">&emsp;* 모임의 신청/취소/변경은 참여신청
                  기간 내에만 가능합니다.</b><br>
                <p></p>
                <b>&emsp;* 참여신청 수정/취소, 참여상태 확인, 참여내역 확인은 마이페이지에서 할 수
                  있습니다.</b><br>
                <p></p>
                <b>&emsp;* 모임 또는 그룹의 설정, 모집정원 초과 여부에 따라 대기자로 선정될 수
                  있습니다. 자세한 사항은 FAQ를 확인해주세요.</b><br>
                <p></p>
                <b>&emsp;* 파티플래너 결제서비스를 이용하는 모임은 개설자의 사업자 여부에 따라
                  결제증빙 발행이 가능합니다. 자세한 사항은 FAQ를 확인해 주세요.</b><br>
                <p></p>
                <b>&emsp;* 개설자 선정방식 또는 방식의 모임 참여 확인은 개설자에게 문의 바랍니다.</b><br>
                <p></p>
                <b>&emsp;* 파티플래너는 참여신청 기능을 제공하는 회사로 모임개설자(주최측)가
                  아닙니다. 모임 내용과 관련한 사항은 모임 개설자에게 문의 바랍니다.</b><br>
                <br>
             </div>
      <p></p>
    <!--    <button id="btnUp" class="btn btn-theme" type="submit"
              style="width: 50px; height: 30px" onclick="comment()">등록</button> -->
       </div>
      </form>
     </div>
    </div>
  
   <!-- 상단 부분 --> 
    <section id="inner-headline">
      <div class="container">
        <div class="row">
          <div class="span4">
            <div class="inner-heading">
              <h2>파티 참가 하기</h2>
            </div>
          </div>
          <div class="span8">
            <ul class="breadcrumb">
              <li><a href="/"><i class="icon-home"></i></a><i class="icon-angle-right"></i></li>
              <li>파티 참가<i class="icon-angle-right"></i></li>
              <li class="active">파티 참가 완료</li>
            </ul>
          </div>
        </div>
      </div>
    </section>
    
    <!-- 신청한 파티 정보 부분 -->
    <section id="content">
      <div class="container">
        <div class="row">
          <div class="span12">
            <article>
              <h6>신청 정보</h6>
                <div class="span12" >
                 <div class="wrapper">
                  <div class="testimonial" style="border-radius: 10px" >
                    <h2 style="text-align: center;" ><strong style="color: black;">"${Party.name}"</strong></h2>
                    <p><img src="/resources/bootstrap/img/partyImg/${Party.image}"  width="110px" align="left"><h6>&nbsp;&nbsp;<i class="icon-calendar"></i>&nbsp;<strong style="color: black;">모집기간 - ${Party.recstart}</strong> <b>~</b> <strong style="color: black;">${Party.recend} 까지</strong></h6><h6>&nbsp;&nbsp;<i class="icon-map-marker" style=""></i>&nbsp;<strong style="color: black;"> 모집장소 - ${Party.place}</strong></h6><h6>&nbsp;&nbsp;<i class="icon-group"></i><strong style="color: black;">모집정원 - ${Party.recruit} 명</strong></h6><br><br></p>
                   </div>
                  </div>
                </div>
            </article>
            
            
            <!-- 신청장 정보 입력 부분 -->
            <article>
              <h6>신청자 정보 입력</h6>
                <div class="span12" >
                 <div class="wrapper">
                  <div class="testimonial" style="border-radius: 10px">
                  
                   <strong style="color: black;">이&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;름 &nbsp;&nbsp;</strong> - <b style="color: black;">${Member.name}</b>
                    <hr>
                   <strong style="color: black;">이&nbsp;&nbsp;메&nbsp;&nbsp;일 &nbsp;&nbsp;</strong> - <b style="color: black;">${Member.email}</b> <br>
                   <hr>
                   <strong style="color: black;">전화번호 &nbsp;&nbsp;</strong> - <b style="color: black;">${Member.phone}</b> <br>
                    </div>
                  </div>
                </div>
            </article>
             
             <!-- 신청자 정보 동의 부분 -->
             <article>
              <h6>신청자 정보 동의</h6>
                <div class="span12" >
                 <div class="wrapper">
                  <div class="testimonial" style="border-radius: 10px">
                    <input type="checkbox" value="box1" name="box" onclick="selectAll(this)"><strong style="color: black;">전체동의</strong><input type="checkbox" id ="box" name="box" value="box2"style="margin-left: 40px; color: b"><strong style="color: black;"> (필수)개인정보 3자 제공 동의</strong><input type="checkbox" name="box" value="box2"style="margin-left: 40px; color: b"><strong style="color: black;">(선택)파티 플래너가 제공하는 소식 받기</strong> <a href="#modal"  data-toggle="modal" style="margin-left: 40px;">내용보기</a>
                   </div>
                  </div>
                </div>
            </article>
            
            <div style="text-align: center;">
             <p id="chbox" style="color: red">
             </p>
             <button class="btn btn-blue" url='joinCompleted?num=${Party.num}' type="button" id='join' onclick="checkSelect(this)" >신청하기</button>
             <a href="#" class="btn btn-red">취소하기</a>
            </div>
          </div>
        </div>
      </div>
    </section>
    
    <!-- footer -->
    <jsp:include page="/WEB-INF/views/include/footer.jsp"></jsp:include>
    

</body>
</html>
