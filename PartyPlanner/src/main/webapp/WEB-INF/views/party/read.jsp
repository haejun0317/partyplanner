<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page session="false"%>
<!DOCTYPE html>
<html>

<head>
<title>파티 상세보기</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta name="description" content="" />
<meta name="author" content="" />

<!--현재시간 -->
<c:set var="today" value="<%=new java.util.Date()%>" />
<fmt:formatDate var="now" type="date" value="${today}"
  pattern="yyyy-MM-dd" />


<!-- css -->
<link href="http://fonts.googleapis.com/earlyaccess/jejugothic.css"
  rel="stylesheet" />
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
<link href="/resources/bootstrap/css/slitslider.css" rel="stylesheet" />
<link href="/resources/bootstrap/css/style.css" rel="stylesheet" />
<!-- Theme skin -->
<link id="t-colors" href="/resources/bootstrap/skins/default.css"
  rel="stylesheet" />
<!-- Fav and touch icons -->
<link rel="apple-touch-icon-precomposed" sizes="144x144"
  href="/resources/bootstrap/ico/apple-touch-icon-144-precomposed.png" />
<link rel="apple-touch-icon-precomposed" sizes="114x114"
  href="/resources/bootstrap/ico/apple-touch-icon-114-precomposed.png" />
<link rel="apple-touch-icon-precomposed" sizes="72x72"
  href="/resources/bootstrap/ico/apple-touch-icon-72-precomposed.png" />
<link rel="apple-touch-icon-precomposed"
  href="/resources/bootstrap/ico/apple-touch-icon-57-precomposed.png" />
<link rel="shortcut icon" href="/resources/bootstrap/ico/favicon.png" />
<!-- 게시물 읽기 -->
<script type="text/javascript">
  	function comment() {
		$("#orderNum").val(2);
		console.log($("#orderNum").val());
	}
  	
  	function reply(){
  		$("#orderNum").val(1);
  		console.log($("#orderNum").val());
  	}
  	
  	function setGroup() {
		$("#groupNo").val(arguments[0]);
	}
  </script>


<script>
    function fnMove(seq){
        var offset = $("#div" + seq).offset();
        $('html, body').animate({scrollTop : offset.top}, 400);
    }
</script>

<script>
      $( document ).ready( function() {
      var eq = $("#id") 
      
      } );
    </script>
    


</head>

<body>
  <!-- 헤더 부분 -->
  <jsp:include page="/WEB-INF/views/include/header.jsp" />

  <!-- 답글  Modal -->
  <div id="modal" class="modal styled hide fade" tabindex="-1"
    role="dialog" aria-labelledby="mySigninModalLabel"
    aria-hidden="true">
    <div class="modal-header">
      <button type="button" class="close" data-dismiss="modal"
        aria-hidden="true" style="color: black;">×</button>
      <h4 id="mySigninModalLabel">답글 남기기</h4>
    </div>
    <div class="modal-body">


      <form action="comment" method="post">
        <div style="text-align: center;">
          <input type="hidden" id="id" name="id" value="${member.id }">
          <input type="hidden" id="partyNum" name="partyNum"
            value="${party.num}"> <input type="hidden"
            id="groupNo" name="groupNo"> <input type="hidden"
            id="orderNum" name="orderNum" value="2"> 작성자&nbsp;<input
            type="text" style="border-radius: 8px; width: 70%"
            placeholder="${pmember.id}" readonly="readonly"><br>
          <p></p>
          내&emsp;&nbsp;용&nbsp;
          <textarea rows="5"
            style="border-radius: 8px; width: 70%; resize: none;"
            name="contents"></textarea>
          <br>
          <p></p>
          <button id="btnUp" class="btn btn-theme" type="submit"
            style="width: 50px; height: 30px" onclick="comment()">등록</button>
        </div>
      </form>
    </div>
  </div>



  <section id="inner-headline">
    <div class="container">
      <div class="row">
        <div class="span4">
          <div class="inner-heading">
            <h2>파티 상세보기</h2>
          </div>
        </div>
        <div class="span8">
          <ul class="breadcrumb">
            <li><a href="/"><i class="icon-home"></i></a><i
              class="icon-angle-right"></i>Share<i
              class="icon-angle-right"></i></li>
            <li><a href="#">파티 상세보기</a>
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
            <li>모집정원 &emsp;<strong>총 ${party.recruit}명</strong>|<strong>${party.recruit - count}명
                신청 가능</strong></li>
          </ul>
          <hr>
          개&nbsp;&nbsp;설&nbsp;&nbsp;자&emsp;&nbsp;<strong>${pmember.id}</strong><br>
          이&nbsp;&nbsp;메&nbsp;&nbsp;일&emsp;&nbsp;<strong>${pmember.email}</strong>
          <hr>

          <fmt:parseDate var="start" value="${party.recstart}"
            pattern="yyyy-MM-dd" />
          <fmt:parseDate var="end" value="${party.recend}"
            pattern="yyyy-MM-dd" />

          <fmt:formatDate var="from" type="date" value="${start}"
            pattern="yyyy-MM-dd" />
          <fmt:formatDate var="to" type="date" value="${end}"
            pattern="yyyy-MM-dd" />
          <c:choose>
            <c:when test="${from gt now}">
              신청기간<b> &emsp;<strong>${party.recstart} ~
                  ${party.recend}</strong>&emsp;&emsp; <a href="partyjoin?num=${party.num}"
                class="btn btn-theme">신청하기</a></b>
            </c:when>
           
            <c:when test="${now ge to}">
              <b style="color: red;">신청기간 &emsp;<strong>${party.recstart}
                  ~ ${party.recend}</strong>&emsp;&emsp;
                <button disabled="disabled">신청마감</button></b>
            </c:when>

            <c:when test="${from le now && now le to}">
             신청기간<b>&emsp;<strong>${party.recstart} ~
                  ${party.recend}</strong>&emsp;&emsp; <a id="dd" href="#"
                class="btn btn-theme">신청하기</a></b>
            </c:when>
          </c:choose>


          <hr>

        </div>
        <!-- 첫번째부분 끝나는 곳 -->
      </div>
    </div>
    <div class="container">
      <div class="row">
        <div class="span12">
          <ul class="portfolio-categ filter">
            <li id="all"><strong><a href="#"
                style="color: black;">All</a>&emsp; &emsp;</strong></li>
            <li id="con"><a href="#" style="color: black;"
              onclick="fnMove('1')">상세정보</a>&emsp; &emsp;</li>
            <li id="re"><a href="#" style="color: black;"
              onclick="fnMove('2')">댓글</a>&emsp; &emsp;</li>
            <li id="q"><a href="#" style="color: black;"
              onclick="fnMove('3')">참여신청/취소안내</a>&emsp; &emsp;</li>
          </ul>
          <br>

          <article id=content>
            <div id="div1" class="wrapper">
              <b
                style="color: black; font-size: 12pt; text-align: left;">파티
                상세 정보</b>
              <p></p>
              <div class="testimonial2"
                style="text-align: left; border-radius: 3px">
                <p></p>
                ${party.content}
                <p></p>
              </div>
            </div>
          </article>

          <article>
            <div id="div2" class="wrapper">
              <b
                style="color: black; font-size: 12pt; text-align: left;">문의글</b>
              <p></p>
              <form action="read" method="post">
                <input type="hidden" id="id" name="id"
                  value="${member.id }"> <input type="hidden"
                  id="partyNum" name="partyNum" value="${party.num}">
                <input type="hidden" id="orderNum" name="orderNum"
                  value="1">
                <textarea
                  style="border-radius: 10px; width: 91%; resize: none;"
                  rows="3" id="contents" name="contents"></textarea>
                &emsp;
                <button class="btn btn-theme" type="submit"
                  style="width: 70px; height: 70px; position: absolute; text-align: center;">
                  <b style="align: center; font-size: 15px"
                    onclick="reply()">등록</b>
                </button>
              </form>


              <table class="table">
                <thead>
                  <tr>
                    <!-- <th>문의번호</th> -->
                    <th style="text-align: center">작 성 자</th>
                    <th style="text-align: center">내 용</th>
                    <th style="text-align: center">등 록 일</th>
                  </tr>
                </thead>
                <tbody>
                  <c:forEach items="${replyList}" var="reply"
                    varStatus="status">
                    <tr>
                      <%-- <td>${fn:length(replyList) - status.index}</td> --%>
                      <c:choose>
                        <c:when test="${reply.orderNum eq 1 }">
                          <td style="text-align: center">${reply.id}</td>
                        </c:when>
                        <c:otherwise>
                          <td style="text-align: center">&emsp;&emsp;&emsp;&emsp;<b>└></b>
                            <b style="color: gray;"> [파티장]</b></td>
                        </c:otherwise>
                      </c:choose>
                      <td style="text-align: center">${reply.contents}</td>
                      <td style="text-align: center">${reply.regdate}</td>
                      <c:choose>
                        <c:when test="${reply.orderNum eq 1 }">

                          <td style="text-align: center"><button
                              href="#modal" data-toggle="modal" id="md"
                              class="btn btn-theme"
                              onclick="setGroup(${reply.replyNum})">답글</button></td>
                        </c:when>
                        <c:otherwise>
                          <td></td>
                        </c:otherwise>
                      </c:choose>
                    </tr>
                  </c:forEach>
                </tbody>
              </table>
            </div>
          </article>

          <article>
            <div id="div3" class="wrapper">
              <b style="color: black; font-size: 12pt">참여신청/취소 안내</b>
              <p></p>
              <div class="testimonial2" style="text-align: left;">
                <h6></h6>
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
                <h6></h6>
              </div>
            </div>

          </article>
        </div>
      </div>
    </div>
  </section>
  <jsp:include page="/WEB-INF/views/include/footer.jsp" />
</body>
</html>
