<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page session="false"%>    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
  <meta charset="utf-8">
  <title>��Ƽ���� Ȯ��</title>
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
<!-- header �κ� -->
 <jsp:include page="/WEB-INF/views/include/header.jsp"></jsp:include>
    
      <section id="inner-headline">
      <div class="container">
        <div class="row">
          <div class="span4">
            <div class="inner-heading">
              <h2>��Ƽ ���� �Ϸ�</h2>
            </div>
          </div>
          <div class="span8">
            <ul class="breadcrumb">
              <li><a href="#"><i class="icon-home"></i></a><i class="icon-angle-right"></i></li>
              <li><a href="#">��Ƽ ����</a><i class="icon-angle-right"></i></li>
              <li class="active">��Ƽ ���� �Ϸ�</li>
            </ul>
          </div>
        </div>
      </div>
    </section>
    
    <!-- �Ϸ� ���� �κ� -->
     <section id="content">
      <div class="container">
        <div class="row">
          <div class="span12">
            <article>
               <h2 style="text-align: center;" >"���� ��û �Ϸ�"</h2>
               <h4 style="text-align: center; color: gray;"  >��Ƽ���� ��û�� ���������� �Ϸ� �Ǿ����ϴ�!</h4>
            </article>
            
    
          <!-- ���� ���� ���� Ȯ�� -->
           <article>
              <h6>���� ����</h6>
                <div class="span12" >
                 <div class="wrapper">
                  <div class="testimonial" style="border-radius: 10px" >
                   <p><img src="/resources/bootstrap/img/partyImg/${Party.image}" width="110px"  align="left"><h6>&nbsp;&nbsp;<i class="icon-group"></i>&nbsp;<strong style="color: black;">�� �� �� - ${Party.name}</strong> </h6><h6>&nbsp;&nbsp;<i class="icon-calendar" style=""></i>&nbsp; <strong style="color: black;">�����Ͻ� - ${Party.startdate}</strong></h6><h6>&nbsp;&nbsp;<i class="icon-map-marker" style=""></i>&nbsp; <strong style="color: black;">������� - ${Party.place}</strong></h6><br><br>
                  </div>
                </div>
                </div>
            </article>
            
            <!-- ��Ÿ ���Ǳ� �κ� -->
                <article>
               <h4 style="text-align: center; color: orange;" >��Ƽ �÷��ʸ� �̿��� �ּż� ���� �մϴ�.</h4>
               <h6 style="text-align: center; color: red;"  >��Ÿ �ñ��Ͻ� ������ ������ �� ��Ƽ ����� ���� ���� �ֽñ� �ٶ��ϴ�.</h6>
            </article>
            <div style="text-align: center;">
             <a href="/" class="btn btn-blue">Ȯ��</a>
            </div>
        </div>
      </div>
      </div>
    </section>
            
    <!-- footer -->
    <jsp:include page="/WEB-INF/views/include/footer.jsp"></jsp:include>
</body>
</html>
