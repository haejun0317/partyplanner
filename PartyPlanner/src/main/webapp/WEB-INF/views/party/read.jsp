<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <meta name="description" content="" />
  <meta name="author" content="" />

 <!-- css -->
  <link href="http://fonts.googleapis.com/earlyaccess/jejugothic.css" rel="stylesheet" />
  <link href="https://fonts.googleapis.com/css?family=Noto+Serif:400,400italic,700|Open+Sans:300,400,600,700" rel="stylesheet">
  <link href="/resources/bootstrap/css/bootstrap.css" rel="stylesheet" />
  <link href="/resources/bootstrap/css/bootstrap-responsive.css" rel="stylesheet" />
  <link href="/resources/bootstrap/css/fancybox/jquery.fancybox.css" rel="stylesheet">
  <link href="/resources/bootstrap/css/jcarousel.css" rel="stylesheet" />
  <link href="/resources/bootstrap/css/flexslider.css" rel="stylesheet" />
  <link href="/resources/bootstrap/css/slitslider.css" rel="stylesheet" />
  <link href="/resources/bootstrap/css/style.css" rel="stylesheet" />
  <!-- Theme skin -->
  <link id="t-colors" href="/resources/bootstrap/skins/default.css" rel="stylesheet" />
  <!-- Fav and touch icons -->
  <link rel="apple-touch-icon-precomposed" sizes="144x144" href="/resources/bootstrap/ico/apple-touch-icon-144-precomposed.png" />
  <link rel="apple-touch-icon-precomposed" sizes="114x114" href="/resources/bootstrap/ico/apple-touch-icon-114-precomposed.png" />
  <link rel="apple-touch-icon-precomposed" sizes="72x72" href="/resources/bootstrap/ico/apple-touch-icon-72-precomposed.png" />
  <link rel="apple-touch-icon-precomposed" href="/resources/bootstrap/ico/apple-touch-icon-57-precomposed.png" />
  <link rel="shortcut icon" href="/resources/bootstrap/ico/favicon.png" />
  <!-- 게시물 읽기 -->
</head>

<body>
<jsp:include page="/WEB-INF/views/include/header.jsp"/>
    <section id="inner-headline">
      <div class="container">
        <div class="row">
          <div class="span4">
            <div class="inner-heading">
              <h2>About us</h2>
            </div>
          </div>
          <div class="span8">
            <ul class="breadcrumb">
              <li><a href="#"><i class="icon-home"></i></a><i class="icon-angle-right"></i></li>
              <li><a href="#">Pages</a><i class="icon-angle-right"></i></li>
              <li class="active">About us</li>
            </ul>
          </div>
        </div>
      </div>
    </section>
    <!-- 바디부분 -->
    <section id="content">
    <div class="container">
      <!-- 첫번째 줄 -->
      <div class="row">
        <!-- 첫번째 - 왼쪽(사진 부분) span 3 -->
        <div class="span3">
          <ul class="slides">
            <li><a href="#"><img
                src="/resources/bootstrap/img/partyImg/${party.image}"
                alt="" class="img-polaroid" width="400px" /></a></li>
          </ul>
        </div>


        <!-- 첫번째 - 오른쪽(사진 부분) span 9 -->
        <div class="span9">
          <ul class="slides">
            <li><h3>[${party.name}]</h3></li>
            <li>모임기간 &emsp;<strong>${party.startdate} ~
                ${party.enddate}</strong></li>
            <p></p>
            <li>모임장소 &emsp;<strong>${party.place}</strong></li>
            <p></p>
            <li>모집정원 &emsp;<strong>총 ${party.recruit}명</strong>|<strong>0명
                신청 가능</strong></li>
          </ul>
          <hr>
          개&nbsp;&nbsp;설&nbsp;&nbsp;자&emsp;&nbsp;<strong>${member.name}</strong><br>
          이&nbsp;&nbsp;메&nbsp;&nbsp;일&emsp;&nbsp;<strong>${member.email}</strong>
          <hr>
          신청기간 &emsp;<strong>${party.recstart} ~
            ${party.recend}</strong>&emsp;&emsp; <a  id="dd" href="#"
            class="btn btn-theme">신청하기</a>
          <hr>
        </div>
        <!-- 첫번째부분 끝나는 곳 -->
  </div>
      </div>
      <div class="container">
      <div class="row">
        <div class="span12">
           <ul class="portfolio-categ filter">
           <li id="all"><strong><a href="#" style="color: black;">All</a>&emsp; &emsp;</strong> </li>
            <li id="con"><a href="#" style="color: black;">상세정보</a>&emsp; &emsp; </li>
            <li id="re"><a href="#" style="color: black;">댓글</a>&emsp; &emsp; </li>
            <li id="q"><a href="#"  style="color: black;">참여신청/취소안내</a>&emsp; &emsp; </li>
            </ul>
            <br>
          
          <article id=content >
            <div class="wrapper">
             <b style="color: black; font-size: 12pt; text-align: left;">파티 상세 정보</b>
             <p></p>
             <div class="testimonial2" style="text-align: left; border-radius: 3px">
             <p></p>
              ${party.content}
              <p></p>
            </div>
            </div>
          </article>
            
         <article id=reply >
          <div class="wrapper">  
          <b style="color: black; font-size: 12pt; text-align: left;">문의글</b>
          <p></p>
          <textarea  style="border-radius: 10px; width: 91%; resize: none;" rows="3"></textarea>&emsp;<button class="btn btn-theme" style="width: 70px; height: 70px; position: absolute; text-align: center; " ><b style="align: center; font-size: 15px  ">등록</b></button>
          <table class="table">
            <thead>
              <tr>
                <th>번호</th>
              </tr>
            </thead>
            <c:forEach items="${reply}" var=reply>
            <tr>
              <td>${reply.id}</td>
            </tr>
            </c:forEach>
          </table>
          
        </div>
        </article>

        <article id="qna"  >
         <div class="wrapper">
          <b style="color: black; font-size: 12pt">참여신청/취소 안내</b>
          <p></p>
           <div class="testimonial2" style="text-align: left;">
            <h6></h6>
            <b style="color: black;">&emsp;* 모임의 신청/취소/변경/환불은 참여신청 기간 내에만 가능합니다.</b><br>
            <p></p>
            <b style="color: black;">&emsp;* 결제한 유료모임은 환불 시 결제 수단과 환불 시점에 따라 수수료가 부과될 수 있습니다. 자세한 사항은 취소/환불약관을 확인해주세요.</b><br>
            <p></p> 
            <b>&emsp;* 결제, 환불, 참여신청 수정/취소, 참여상태 확인, 참여내역 확인은 마이페이지에서 할 수 있습니다.</b><br>
            <p></p>
            <b>&emsp;* 모임 또는 그룹의 설정, 모집정원 초과 여부에 따라 대기자로 선정될 수 있습니다. 자세한 사항은 FAQ를 확인해주세요.</b><br>
            <p></p>
            <b>&emsp;* 파티플래너 결제서비스를 이용하는 모임은 개설자의 사업자 여부에 따라 결제증빙 발행이 가능합니다. 자세한 사항은 FAQ를 확인해 주세요.</b><br>
            <p></p>
            <b>&emsp;* 개설자 선정방식 또는 개설자 통장입금 방식의 모임 참여/결제 확인은 개설자에게 문의 바랍니다.</b><br>
            <p></p>
            <b>&emsp;* 파티플래너는 참여신청 및 참가비 결제 기능을 제공하는 회사로 모임개설자(주최측)가 아닙니다. 모임 내용과 관련한 사항은 모임 개설자에게 문의 바랍니다.</b><br>
            <h6></h6>
          </div>
         </div>
        
        </article>
        </div>
        </div>
      </div>
  </section>
            <jsp:include page="/WEB-INF/views/include/footer.jsp"/>
</body>
</html>
