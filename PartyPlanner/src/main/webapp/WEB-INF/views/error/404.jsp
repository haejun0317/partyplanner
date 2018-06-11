<%@ page contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>에러페이지</title>
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
   <!-- í헤더 -->
  <jsp:include page="/WEB-INF/views/include/header.jsp" />
  
    <section id="inner-headline">
      <div class="container">
        <div class="row">
          <div class="span4">
            <div class="inner-heading">
              <h2>404 Error</h2>
            </div>
          </div>
          <div class="span8">
            <ul class="breadcrumb">
              <li><a href="/"><i class="icon-home"></i></a><i class="icon-angle-right"></i></li>
              <li class="active">404 Error page</li>
            </ul>
          </div>
        </div>
      </div>
    </section>
    <section id="content">
      <div class="container">
        <div class="row">
          <div class="span12">
            <h2 class="aligncenter">404 Error not found</h3>
				<p class="aligncenter">
					Page is not found.
				</p>
			</div>
		</div>
	</div>
	</section>
	<jsp:include page="/WEB-INF/views/include/footer.jsp" />
</body>
</html>
