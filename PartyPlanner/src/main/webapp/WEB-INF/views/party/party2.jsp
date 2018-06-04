<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page session="false"%>    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
  <meta charset="utf-8">
  <title>��Ƽ������</title>
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
  
  
   <!-- ��� �κ� --> 
    <section id="inner-headline">
      <div class="container">
        <div class="row">
          <div class="span4">
            <div class="inner-heading">
              <h2>��Ƽ ���� �ϱ�</h2>
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
    
    <!-- ��û�� ��Ƽ ���� �κ� -->
    <section id="content">
      <div class="container">
        <div class="row">
          <div class="span12">
            <article>
              <h6>��û ����</h6>
                <div class="span12" >
                 <div class="wrapper">
                  <div class="testimonial" style="border-radius: 10px" >
                    <h2 style="text-align: center;" ><strong style="color: black;">"${Party.name}"</strong></h2>
                    <p><img src="/resources/bootstrap/img/partyImg${Member.image}" align="left"><h6>&nbsp;&nbsp;<i class="icon-calendar"></i>&nbsp;<strong style="color: black;">�����Ⱓ - ${Party.recstart}</strong> <b>~</b> <strong style="color: black;">${Party.recend} ����</strong></h6><h6>&nbsp;&nbsp;<i class="icon-map-marker" style=""></i>&nbsp;<strong style="color: black;"> ������� - ${Party.place}</strong></h6><h6>&nbsp;&nbsp;<i class="icon-group"></i><strong style="color: black;">�������� - ${Party.recruit} ��</strong></h6><br><br></p>
                   </div>
                  </div>
                </div>
            </article>
            
            
            <!-- ��û�� ���� �Է� �κ� -->
            <article>
              <h6>��û�� ���� �Է�</h6>
                <div class="span12" >
                 <div class="wrapper">
                  <div class="testimonial" style="border-radius: 10px">
                  
                   <strong style="color: black;">��&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;�� &nbsp;&nbsp;</strong> - <b style="color: black;">${Member.name}</b>
                    <hr>
                   <strong style="color: black;">��&nbsp;&nbsp;��&nbsp;&nbsp;�� &nbsp;&nbsp;</strong> - <b style="color: black;">${Member.email}</b> <br>
                   <hr>
                   <strong style="color: black;">��ȭ��ȣ &nbsp;&nbsp;</strong> - <b style="color: black;">${Member.phone}</b> <br>
                    </div>
                  </div>
                </div>
            </article>
             
             <!-- ��û�� ���� ���� �κ� -->
             <article>
              <h6>��û�� ���� ����</h6>
                <div class="span12" >
                 <div class="wrapper">
                  <div class="testimonial" style="border-radius: 10px">
                    <input type="checkbox"><strong style="color: black;">��ü����</strong><input type="checkbox" style="margin-left: 40px; color: b"><strong style="color: black;">(�ʼ�)�������� 3�� ���� ����</strong> <a style="margin-left: 40px;">���뺸��</a>
                   </div>
                  </div>
                </div>
            </article>
            
            <div style="text-align: center;">
             <a href="party3?num=${Party.num}&id=${Member.id}" class="btn btn-blue">��û�ϱ�</a>
             <a href="#" class="btn btn-red">����ϱ�</a>
            </div>
            
          </div>
        </div>
      </div>
    </section>
    
    <!-- footer -->
    <jsp:include page="/WEB-INF/views/include/footer.jsp"></jsp:include>
    
  <a href="#" class="scrollup"><i class="icon-chevron-up icon-square icon-32 active"></i></a>
  <!-- Placed at the end of the document so the pages load faster -->
  <script src="js/jquery.js"></script>
  <script src="js/jquery.easing.1.3.js"></script>
  <script src="js/bootstrap.js"></script>
  <script src="js/jcarousel/jquery.jcarousel.min.js"></script>
  <script src="js/jquery.fancybox.pack.js"></script>
  <script src="js/jquery.fancybox-media.js"></script>
  <script src="js/google-code-prettify/prettify.js"></script>
  <script src="js/portfolio/jquery.quicksand.js"></script>
  <script src="js/portfolio/setting.js"></script>
  <script src="js/tweet/jquery.tweet.js"></script>
  <script src="js/jquery.flexslider.js"></script>
  <script src="js/jquery.nivo.slider.js"></script>
  <script src="js/modernizr.custom.js"></script>
  <script src="js/jquery.ba-cond.min.js"></script>
  <script src="js/jquery.slitslider.js"></script>
  <script src="js/animate.js"></script>
  <!-- Template Custom JavaScript File -->
  <script src="js/custom.js"></script>

</body>
</html>
