<%@ page contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<title>로그인</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta name="description" content="" />
<meta name="author" content="" />

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
<!-- boxed bg -->
<link id="bodybg" href="/resources/bootstrap/bodybg/bg1.css"
  rel="stylesheet" type="text/css" />
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

</head>

<body>
  <jsp:include page="/WEB-INF/views/include/header.jsp" />

  <section id="inner-headline">
    <div class="container">
      <div class="row">
        <div class="span4">
          <div class="inner-heading">
            <h2>로그인</h2>
          </div>
        </div>
        <div class="span8">
          <ul class="breadcrumb">
            <li><a href="#"><i class="icon-home"></i></a><i
              class="icon-angle-right"></i></li>
            <li><a href="#">로그인</a></li>
          </ul>
        </div>
      </div>
    </div>
  </section>
  <section id="content">
    <div class="container" style="text-align:center">
      
        <div class="modal-header">
          <h4 id="mySigninModalLabel" style="text-align: center; color: orange;">
            Login <strong>Failure</strong>
          </h4>
          <h6 id="mySigninModalLabel" style="text-align: center; color: orange;">
            <strong>ID/비밀번호</strong>  확인해주세요.
          </h6>
        </div>
        
        <div class="modal-body"  style="width: 400px; margin: auto;">
          <form class="form-horizontal" action="/member/loginPost"
            method="post">
            <div class="control-group">
              <label class="control-label" for="inputText" >Username</label>
              <div class="controls">
                <input type="text" id="inputText" placeholder="Username"
                  name="id">
              </div>
            </div>
            <div class="control-group">
              <label class="control-label" for="inputSigninPassword">Password</label>
              <div class="controls">
                <input type="password" id="inputSigninPassword"
                  placeholder="Password" name="passwd">
              </div>
            </div>
            <div class="control-group" style="margin: auto;">
                <label><input type="checkbox" name="useCookie">
                  Remember me</label><br>
                <button type="submit" class="btn">Sign in</button>
              <!-- 
              <p class="aligncenter">
                Forgot password? <a href="#myReset" data-dismiss="modal"
                  aria-hidden="true" data-toggle="modal">Reset</a>
              </p>
               -->
            </div>
          </form>
        </div>
    </div>
  </section>
  <jsp:include page="/WEB-INF/views/include/footer.jsp" />
</body>

</html>