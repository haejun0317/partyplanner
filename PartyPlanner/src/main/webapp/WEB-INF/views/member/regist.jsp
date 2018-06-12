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
  <!-- Ajax -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script type="text/javascript">
  	function checkEmail() {
  		var email = $("input[name=firstemail]").val() + "@" + $("select[name=lastemail]").val();
		$("input[name=email]").val(email);
	}
  	
  	function regist() {
  		checkEmail();
	}
  	
  	function uniqueId() {
  		var id = $("input[name=id]").val();
		if(id.length < 13 && id.length > 4){
			$.ajax({
		  		method:"GET",
		  		url:"checkid.do",
		  		dataType : 'text',
		  		data : {
		  			id : id
		  		},
		  		success : onCheck,
		  		error : function() {
					console.log("실패");
				}
		  	});
		}else{
			$("#checkId").css("color","orange");
			$("#checkId").html("<b>5글자 이상 12글자 이하로 입력하세요.</b>");
		}
	}
	
	function onCheck(text) {
		if(text == 'success'){
			$("#checkId").css("color","green");
			$("#checkId").html("<b>가입가능한 아이디입니다.</b>");
		}else{
			$("#checkId").css("color","red");
			$("#checkId").html("<b>중복된 아이디 입니다.</b>");
		}
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
            <form action="regist" id="registForm" method="post">
            <article>
              <h6>회원가입 정보 입력</h6>
              <div class="span12">
                <div class="wrapper">
                  <div class="testimonial" style="border-radius: 10px">
                    아&nbsp;&nbsp;이&nbsp;&nbsp;디&nbsp;&nbsp; <input type="text" name="id" style="border-radius: 10px; padding-left: 15px" placeholder="Enter ID" required onkeyup="uniqueId()">
                    <span id="checkId" style="margin-left: 10px;"></span>
                    <hr>
                    비밀번호&nbsp;&nbsp; <input type="password" name="passwd" style="border-radius: 10px; padding-left: 15px" placeholder="Enter Password" required>
                    <hr>
                    이&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;름&nbsp;&nbsp; <input type="text" name="name" style="border-radius: 10px; padding-left: 15px" placeholder="Enter Name" required>
                    <hr>
                    <span>이&nbsp;&nbsp;메&nbsp;&nbsp;일&nbsp;&nbsp;</span><input type="text" name="firstemail" style="border-radius: 10px; padding-left: 15px" placeholder="Enter E-mail" required> @ <select name="lastemail"
                      style="border-radius: 10px"><option>메일 선택</option>
                      <option>naver.com</option>
                      <option>daum.net</option>
                      <option>google.com</option></select><br>
                      <input type="hidden" name="email">
                    <hr>
                    전화번호 &nbsp;&nbsp; <input type="text" name="phone" style="border-radius: 10px; padding-left: 15px" placeholder="Enter PhoneNumber"> <br>
                  </div>
                </div>
              </div>
            </article>
            <div style="text-align: center;">
              <button type="submit" class="btn btn-blue" onclick="regist()">회원가입</button> 
              <button type="reset" class="btn btn-red">취소하기</button>
            </div>
            </form>
          </div>
        </div>
    </section>
    
    <jsp:include page="/WEB-INF/views/include/footer.jsp"/>
</body>

</html>
