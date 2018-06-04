<%@ page contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<title>회원가입</title>
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
  <!-- boxed bg -->
  <link id="bodybg" href="/resources/bootstrap/bodybg/bg1.css" rel="stylesheet" type="text/css" />
  <!-- Fav and touch icons -->
  <link rel="apple-touch-icon-precomposed" sizes="144x144" href="/resources/bootstrap/ico/apple-touch-icon-144-precomposed.png" />
  <link rel="apple-touch-icon-precomposed" sizes="114x114" href="/resources/bootstrap/ico/apple-touch-icon-114-precomposed.png" />
  <link rel="apple-touch-icon-precomposed" sizes="72x72" href="/resources/bootstrap/ico/apple-touch-icon-72-precomposed.png" />
  <link rel="apple-touch-icon-precomposed" href="/resources/bootstrap/ico/apple-touch-icon-57-precomposed.png" />
  <link rel="shortcut icon" href="/resources/bootstrap/ico/favicon.png" />
  <script type="text/javascript">
  	function checkEmail() {
		var email = $("input[name=firstemail]").val() + "@" + $("select[name=lastemail]").val();
		$("input[name=email]").val(email);
	}
  </script>
</head>

<body>
    <jsp:include page="/WEB-INF/views/include/header.jsp"/>
    
    <section id="inner-headline">
      <div class="container">
        <div class="row">
          <div class="span4">
            <div class="inner-heading">
              <h2>회원가입</h2>
            </div>
          </div>
          <div class="span8">
            <ul class="breadcrumb">
              <li><a href="#"><i class="icon-home"></i></a><i
                class="icon-angle-right"></i></li>
              <li><a href="#">회원가입</a></li>
            </ul>
          </div>
        </div>
      </div>
    </section>
    <section id="content">
      <div class="container">
        <div class="row">
          <div class="span12">
            <form action="regist" method="post">
            <article>
              <h6>회원가입 정보 입력</h6>
              <div class="span12">
                <div class="wrapper">
                  <div class="testimonial" style="border-radius: 10px">
                    아&nbsp;&nbsp;이&nbsp;&nbsp;디&nbsp;&nbsp; <input type="text" name="id" style="border-radius: 10px; padding-left: 15px" placeholder="Enter ID">
                    <hr>
                    비밀번호&nbsp;&nbsp; <input type="password" name="passwd" style="border-radius: 10px; padding-left: 15px" placeholder="Enter Password">
                    <hr>
                    이&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;름&nbsp;&nbsp; <input type="text" name="name" style="border-radius: 10px; padding-left: 15px" placeholder="Enter Name">
                    <hr>
                    <span>이&nbsp;&nbsp;메&nbsp;&nbsp;일&nbsp;&nbsp;</span><input type="text" name="firstemail" style="border-radius: 10px; padding-left: 15px" placeholder="Enter E-mail"> @ <select name="lastemail"
                      style="border-radius: 10px"><option>직접입력</option>
                      <option>naver.com</option>
                      <option>daum.net</option>
                      <option>google.com</option></select><button type="button" onclick="checkEmail()" style="margin-left: 10px">체크</button><br>
                      <input type="hidden" name="email">
                    <hr>
                    전화번호 &nbsp;&nbsp; <input type="text" name="phone" style="border-radius: 10px; padding-left: 15px" placeholder="Enter PhoneNumber"> <br>
                  </div>
                </div>
              </div>
            </article>
            <div style="text-align: center;">
              <button class="btn btn-blue" type="submit">회원가입</button> 
              <a href="#" class="btn btn-red">취소하기</a>
            </div>
            </form>
          </div>
        </div>
    </section>
    
    <jsp:include page="/WEB-INF/views/include/footer.jsp"/>
</body>

</html>
