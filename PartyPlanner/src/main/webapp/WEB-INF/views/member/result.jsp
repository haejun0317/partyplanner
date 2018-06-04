<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page session="false"%>    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
  <meta charset="utf-8">
  <title>회원가입 완료</title>
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
  <jsp:include page="/WEB-INF/views/include/header.jsp"/>
    
      <section id="inner-headline">
      <div class="container">
        <div class="row">
          <div class="span4">
            <div class="inner-heading">
              <h2>회원 가입 완료</h2>
            </div>
          </div>
          <div class="span8">
            <ul class="breadcrumb">
              <li><a href="#"><i class="icon-home"></i></a><i class="icon-angle-right"></i></li>
              <li><a href="#">회원 가입</a><i class="icon-angle-right"></i></li>
              <li class="active">회원 가입 완료</li>
            </ul>
          </div>
        </div>
      </div>
    </section>
    
     <section id="content">
      <div class="container">
        <div class="row">
          <div class="span12">
            <article>
               <h2 style="text-align: center;" >"회원 가입 완료"</h2>
               <h4 style="text-align: center; color: gray;"  >회원가입 신청이 성공적으로 완료 되었습니다!</h4>
            </article>
            
    
    
           <article>
              <h6>회원 정보</h6>
                <div class="span12" >
                 <div class="wrapper">
                  <div class="testimonial" style="border-radius: 10px" >
                   <p><h6>&nbsp;&nbsp;<i class="icon-group"></i>&nbsp;아 이 디 - ${member.id} </h6><h6>&nbsp;&nbsp;<i class="icon-calendar" style=""></i>&nbsp; 이    름 - ${member.name}</h6><h6>&nbsp;&nbsp;<i class="icon-map-marker" style=""></i>&nbsp; 이 메 일 - ${member.email}</h6><h6>&nbsp;&nbsp;<i class="icon-map-marker" style=""></i>&nbsp; 전화번호 - ${member.phone}</h6><br><br>
                  </div>
                </div>
                </div>
            </article>
            
                <article>
               <h4 style="text-align: center; color: orange;" >파티 플래너를 이용해 주셔서 감사 합니다.</h4>
               <h6 style="text-align: center; color: red;"  >기타 궁금하신 사항은 고객센터 및 파티 등록자 한테 문의 주시기 바랍니다.</h6>
            </article>
            <div style="text-align: center;">
             <a href="/" class="btn btn-blue">확인</a>
            </div>
        </div>
      </div>
      </div>
    </section>
            
    
    <jsp:include page="/WEB-INF/views/include/footer.jsp"/>
    
</body>
</html>
