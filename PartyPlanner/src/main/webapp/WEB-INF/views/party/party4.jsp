<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page session="false"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta charset="utf-8">
<title>파티참가염</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<meta name="description" content="" />
<meta name="author" content="" />

<!--현재시간 -->
<c:set var="today" value="<%=new java.util.Date()%>" />
<fmt:formatDate var="now" type="date" value="${today}"
  pattern="yyyy-MM-dd" />

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

<!-- Theme skin -->
<link href="/resources/bootstrap/skins/default.css" rel="stylesheet" />

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

<!-- Ajax -->
<script
  src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<script type="text/javascript">
  function some(num){
  	$.ajax({
  		method:"GET",
  		url:"partyreq.do",
  		dataType : 'json',
  		data : {
  			partyNum : num
  		},
  		success : addList,
  		error : function() {
			console.log("실패");
		}
  	});
  }
  
  function addList(mList) {
	var text = "";
	if(mList.length != 0){
		for ( var i in mList) {
	  		text += "<tr>";
	  		text += "  <td style='text-align: center;'><b>"+mList[i].id+"</b></td>";
	  		text += "  <td style='text-align: center;'><b>"+mList[i].name+"</b></td>";
	  		text += "  <td style='text-align: center;'><b>"+mList[i].phone+"</b></td>";
	  		text += "  <td style='text-align: center;'><b>"+mList[i].email+"</b></td>";
	  		text += "  <td style='text-align: center;'><b> <input";
	  		text += "      type='button' class='btn btn-square btn-theme'";
	  		text += "      style='border-radius: 10px;' value='수락'> <input";
	  		text += "      type='button' class='btn btn-square btn-theme'";
	  		text += "      style='border-radius: 10px;' value='거절'>";
	  		text += "  </b></td>"
	  		text += " </tr>"
	  	}
	}else{
		text += "<tr>";
		text += "  <td style='text-align: center;' colspan='4'><b>없다 시발</b></td>";
		text += " </tr>"
	}
  	
  	$("#joinlist").html(text);
  }
</script>

<script>
//각종 이벤트 부분
$(document).ready(function(){
    $("#planningText").click(function(){
        //보임
        $("#planning").attr("style", "display:block");
        //숨김
        $("#partyMake").attr("style", "display:none");
        $("#partyEnter").attr("style", "display:none");
        $("#mypage").attr("style", "display:none");
        
    }) 
    $("#partyMakeText").click(function(){
    	$("#partyMake").attr("style", "display:block");
    	$("#planning").attr("style", "display:none");
    	$("#partyEnter").attr("style", "display:none");
    	$("#mypage").attr("style", "display:none");
    	
    }) 
    $("#partyEnterText").click(function(){
    	$("#partyEnter").attr("style", "display:block");
    	$("#partyMake").attr("style", "display:none");
    	$("#planning").attr("style", "display:none");
    	$("#mypage").attr("style", "display:none");
    }) 
    $("#party").click(function(){
    	$("#mypage").attr("style", "display:block");
    	$("#partyEnter").attr("style", "display:none");
    	$("#partyMake").attr("style", "display:none");
    	$("#planning").attr("style", "display:none");
    }) 
    
 });
</script>

</head>

<body>
  <jsp:include page="/WEB-INF/views/include/header.jsp"></jsp:include>
  <!-- Sign in Modal -->
  <div id="modal" class="modal styled hide fade" tabindex="-1"
    role="dialog" aria-labelledby="mySigninModalLabel"
    aria-hidden="true">
    <div class="modal-header">
      <button type="button" class="close" data-dismiss="modal"
        aria-hidden="true" style="color: black;">×</button>
      <h4 id="mySigninModalLabel">신청자 목록</h4>
    </div>
    <div class="modal-body">
      <form class="form-horizontal" action="/member/login" method="post">
        <table class="table">
          <thead>
            <tr>
              <th style="text-align: center;">ID</th>
              <th style="text-align: center;">이름</th>
              <th style="text-align: center;">전화번호</th>
              <th style="text-align: center;">이메일</th>
              <th></th>
            </tr>
          </thead>
          <tbody id="joinlist">

          </tbody>
        </table>
      </form>
    </div>
  </div>
  <!-- end header -->

  <!-- 상단 부문 -->
  <section id="inner-headline">
  <div class="container">
    <div class="row">
      <div class="span4">
        <div class="inner-heading">
          <h2>Blog left sidebar</h2>
        </div>
      </div>
      <div class="span8">
        <ul class="breadcrumb">
          <li><a href="#"><i class="icon-home"></i></a><i
            class="icon-angle-right"></i></li>
          <li><a href="#">Blog</a><i class="icon-angle-right"></i></li>
          <li class="active">Blog with left sidebar</li>
        </ul>
      </div>
    </div>
  </div>
  </section>

  <!-- 내용 부분 -->
  <section id="content">
  <div class="container">
    <div class="row">
      <!--  왼쪽 bar 부분 -->
      <div class="span2">
        <aside class="left-sidebar">
        <div class="widget">
          <form class="form-search">
            <input placeholder="예비" type="text"
              class="input-mini search-query">
            <button type="submit" class="btn btn-small btn-theme">예비</button>
          </form>
        </div>
        <div class="widget">
          <h5 class="widgetheading">Categories</h5>
          <ul class="cat">
            <li id="planningText"><i class="icon-angle-right"></i><a
              href="#">작성 기획서</a></li>
            <li id="partyEnterText"><i class="icon-angle-right"></i><a
              href="#">참여 파티</a></li>
            <li id="partyMakeText"><i class="icon-angle-right"></i><a
              href="#">개설 파티</a></li>
            <li id="party"><i class="icon-angle-right"></i><a
              href="#">마이페이지</a></li>
          </ul>
        </div>
        <div class="widget">
          <h5 class="widgetheading">예비용</h5>
          <ul class="recent">
            <li><img src="img/dummies/blog/65x65/thumb1.jpg"
              class="pull-left" alt="" />
              <h6>
                <a href="#">이용약관</a>
              </h6>
              <p>넣으면 좋을듯?</p></li>
            <li><a href="#"><img
                src="img/dummies/blog/65x65/thumb2.jpg"
                class="pull-left" alt="" /></a>
              <h6>
                <a href="#">Maiorum ponderum eum</a>
              </h6>
              <p>Mazim alienum appellantur eu cu ullum officiis pro
                pri</p></li>

          </ul>
        </div>
        <div class="widget">
          <h6 class="widgetheading">Popular Event</h6>
          <ul class="tags">
            <li><a href="#">체육대회</a></li>
            <li><a href="#">단합회</a></li>
            <li><a href="#">MT</a></li>
            <li><a href="#">OT</a></li>
            <li><a href="#">결혼식</a></li>
            <li><a href="#">돌잔치</a></li>
            <li><a href="#">대학교축제</a></li>
          </ul>
        </div>
        </aside>
      </div>

      <!--  중간 내용 부분  -->
      <div class="span10">

        <!-- 기획서 부분 -->
        <article id="planning" style="display:none">
        <h6>나의 기획서</h6>
        <div class="wrapper">
          <div class="testimonial2" style="border-radius: 10px">
            <h2></h2>
            <table class="table">
              <thead>
                <tr>
                  <th style="text-align: center;">기획서번호</th>
                  <th style="text-align: center;">행 사 명</th>
                  <th style="text-align: center;">행사식순</th>
                  <th style="text-align: center;">장 소</th>
                  <th style="text-align: center;">신 청 자</th>
                  <th></th>
                </tr>
              </thead>
              <tbody>

                <c:forEach items="${EventPlan}" var="plan">
                  <tr>
                    <td style="text-align: center;"><b>${plan.num}</b></td>
                    <td style="text-align: center;"><b>${plan.name}</b></td>
                    <td style="text-align: center;"><b>${plan.schedule}</b></td>
                    <td style="text-align: center;"><b>${plan.place}</b></td>
                    <td style="text-align: center;"><b>${plan.id}</b></td>
                    <td></td>
                  </tr>
                </c:forEach>

              </tbody>
            </table>
          </div>

          <!-- 버튼 -->
          <div style="text-align: center;">
            <h1></h1>
            <a href="/" class="btn btn-blue">확인</a>
          </div>

        </div>
        </article>


        <!-- 나의 참여 파티 부분 -->
        <article id="partyEnter" style="display:none">
        <h6>나의 참여 파티</h6>
        <div class="wrapper">
          <div class="testimonial2"
            style="border-radius: 10px; text-align: center;">
            <h2></h2>
            <table class="table" align="center">
              <thead>
                <tr>
                  <th style="text-align: center;">파티번호</th>
                  <th style="text-align: center;">참 가 자</th>
                  <th style="text-align: center;">등록날짜</th>
                  <th style="text-align: center;">수락여부</th>
                  <th></th>
                </tr>
              </thead>
              <tbody>

                <c:forEach items="${PartyJoin}" var="join">

                  <tr>
                    <td style="text-align: center;"><b>${join.num}</b></td>
                    <td style="text-align: center;"><b>${join.id}</b></td>
                    <td style="text-align: center;"><b>${join.regdate}</b></td>
                    <td style="text-align: center;"><c:choose>
                        <c:when test="${join.approve eq 'Y'}">
                          <div style="color: blue;">
                            <b>수락</b>
                          </div>
                        </c:when>
                        <c:when test="${join.approve eq 'N'}">
                          <div style="color: red;">
                            <b>거절</b>
                          </div>
                        </c:when>
                        <c:when test="${join.approve ne 'NULL'}">
                          <div style="color: black;">
                            <b>대기</b>
                          </div>
                        </c:when>
                      </c:choose></td>
                    <td></td>
                  </tr>

                </c:forEach>
              </tbody>
            </table>
          </div>
          <!-- 버튼 -->
          <div style="text-align: center;">
            <h1></h1>
            <a href="/" class="btn btn-blue">확인</a>
          </div>
        </div>
        </article>


        <!-- 나의 개설 파티 -->
        <article id="partyMake" style="display:none">
        <h6>나의 개설 파티</h6>
        <div class="wrapper">
          <div class="testimonial2" style="border-radius: 10px">
            <h2></h2>
            <table class="table">
              <thead>
                <tr>
                  <th style="text-align: center;">파티번호</th>
                  <th style="text-align: center;">파티이름</th>
                  <th style="text-align: center;">파티일시</th>
                  <th style="text-align: center;">장 소</th>
                  <th style="text-align: center;">진행여부</th>
                  <th></th>
                </tr>
              </thead>
              <tbody>
                <c:forEach items="${Party}" var="party">
                  <fmt:parseDate var="start" value="${party.startdate}"
                    pattern="yyyy-MM-dd" />
                  <fmt:parseDate var="end" value="${party.enddate}"
                    pattern="yyyy-MM-dd" />

                  <fmt:formatDate var="from" type="date"
                    value="${start}" pattern="yyyy-MM-dd" />
                  <fmt:formatDate var="to" type="date" value="${end}"
                    pattern="yyyy-MM-dd" />
                  <tr>
                    <td style="text-align: center;"><b>
                        ${party.num}</b></td>
                    <td style="text-align: center;"><b>${party.name}</b></td>
                    <td style="text-align: center;"><b>${party.startdate}
                        ~ ${party.enddate}</b></td>
                    <td style="text-align: center;"><b>${party.place}</b></td>
                    <td style="text-align: center;"><c:choose>
                        <c:when test="${from gt now}">
                          <b>예정</b>
                        </c:when>
                        <c:when test="${from le now && now le to}">
                          <b style="color: blue;">진행 중</b>
                        </c:when>
                        <c:when test="${now ge to}">
                          <b style="color: red;">종료</b>
                        </c:when>
                      </c:choose></td>
                    <td style="text-align: center;"><a
                      href="#modal" data-toggle="modal"
                      onclick="some(${party.num});"><input
                        type='button' class='btn btn-square btn-theme'
                        style='border-radius: 10px;' value="신청 목록 보기"></a></td>
                  </tr>
                </c:forEach>
                <input type="hidden" id="party-num">
              </tbody>
            </table>
          </div>

          <!-- 버튼 -->
          <div style="text-align: center;">
            <h1></h1>
            <a href="/" class="btn btn-blue">확인</a>
          </div>

        </div>
        </article>

        <!-- 마이 페이지 -->
        <article id="mypage" style="display:none">
        <form id="frm" method="post">
          <h6>회원 정보 수정</h6>


          <div class="testimonial" style="border-radius: 10px">
            아&nbsp;&nbsp;이&nbsp;&nbsp;디&nbsp;&nbsp; <input type="text"
              name="id" style="border-radius: 10px; padding-left: 15px"
              placeholder="${Member.id}"  readonly>
            <hr>
            비밀번호&nbsp;&nbsp; <input type="password" name="passwd"
              style="border-radius: 10px; padding-left: 15px"
              placeholder="Enter Password" value="${Member.passwd}">
            <hr>
            이&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;름&nbsp;&nbsp;
            &nbsp;<input type="text" name="name"
              style="border-radius: 10px; padding-left: 15px"
              placeholder="${Member.name}" value="${Member.name}">
            <hr>
            <span>이&nbsp;&nbsp;메&nbsp;&nbsp;일&nbsp;&nbsp;</span>&nbsp;<input
              type="text" name="email"
              style="border-radius: 10px; padding-left: 15px"
              placeholder="${Member.email}" value="${Member.email}">
            <!-- <button class='btn btn-square btn-theme'
              style='border-radius: 10px;' type="button"
              onclick="checkEmail()" style="margin-left: 10px">체크</button> -->
            <br> 
            <hr>
            전화번호 &nbsp;&nbsp; <input type="text" name="phone"
              style="border-radius: 10px; padding-left: 15px"
              placeholder="${Member.phone}" value="${Member.phone}">
            <br>
          </div>

          <h1></h1>

          <div style="text-align: center;">
            <button id="btnUp" class="btn btn-blue" type="submit"
              style="width: 85px; height: 30px">수정하기</button>
            <button class="btn btn-red" type="reset"
              style="width: 85px; height: 30px">취소하기</button>
          </div>
        </form>
        </article>
      </div>
    </div>
  </div>
  </section>

  <!-- footer -->
  <jsp:include page="/WEB-INF/views/include/footer.jsp"></jsp:include>

  <script>
  	$(function(){
  		$('#btnUp').on('click', function(e){
  			alert('수정됬습니다');
  			
  			e.preventDefault();
  			
  			$('input[name="id"]').remove();
  			
  			$('#frm').submit();
  		});
  	});
  </script>

</body>
</html>
