<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
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

<body>
  <!-- header 부분 -->
  <jsp:include page="/WEB-INF/views/include/header.jsp"></jsp:include>
  
  
   <!-- 상단 부분 --> 
    <section id="inner-headline">
      <div class="container">
        <div class="row">
          <div class="span4">
            <div class="inner-heading">
              <h2>답글 달기</h2>
            </div>
          </div>
          <div class="span8">
            <ul class="breadcrumb">
              <li><a href="#"><i class="icon-home"></i></a><i class="icon-angle-right"></i></li>
              <li><a href="#">답글 달기</a><i class="icon-angle-right"></i></li>
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
            
            
            <!-- 신청장 정보 입력 부분 -->
            <article>
              <h6>신청자 정보 입력</h6>
                <div class="span12" >
                 <div class="wrapper">
                  <div class="testimonial" style="border-radius: 10px">
                  
                   <strong style="color: black;">이&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;름 &nbsp;&nbsp;</strong> - <b style="color: black;"></b>
                    <hr>
                   <strong style="color: black;">이&nbsp;&nbsp;메&nbsp;&nbsp;일 &nbsp;&nbsp;</strong> - <b style="color: black;">d</b> <br>
                   <hr>
                   <strong style="color: black;">전화번호 &nbsp;&nbsp;</strong> - <b style="color: black;">d</b> <br>
                    </div>
                  </div>
                </div>
            </article>
             
            
            <div style="text-align: center;">
             <a href="#" class="btn btn-blue">신청하기</a>
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
