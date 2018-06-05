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
<script>
function selectAll(source) {
    var checkboxes = document.getElementsByName('box');
    for(var i=0; i<checkboxes.length; i++) {
        checkboxes[i].checked = source.checked; // '��� üũ'�� üũ�� �Ǹ� �� üũ�ϰ� �ƴϸ� �� �����ϰ�!
    }
}
</script>


<body>
  <!-- header �κ� -->
  <jsp:include page="/WEB-INF/views/include/header.jsp"></jsp:include>
  
   <div id="modal" class="modal styled hide fade" tabindex="-1"
    role="dialog" aria-labelledby="mySigninModalLabel"
    aria-hidden="true">
    <div class="modal-header">
      <button type="button" class="close" data-dismiss="modal"
        aria-hidden="true" style="color: black;">��</button>
      <h4 id="mySigninModalLabel">���� ���� ����</h4>
    </div>
    <div class="modal-body">
      
      
      <form  action="read" method="post">
       <div style="text-align: center;">
         <input type="hidden" id= "orderNum" name="orderNum"value="2">
       ��&emsp;&nbsp;��&nbsp; : �����մϱ�?
      <br>
      <p></p>
    <!--    <button id="btnUp" class="btn btn-theme" type="submit"
              style="width: 50px; height: 30px" onclick="comment()">���</button> -->
       </div>
      </form>
     </div>
    </div>
  
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
                    <p><img src="/resources/bootstrap/img/partyImg/${Member.image}"  width="110px" align="left"><h6>&nbsp;&nbsp;<i class="icon-calendar"></i>&nbsp;<strong style="color: black;">�����Ⱓ - ${Party.recstart}</strong> <b>~</b> <strong style="color: black;">${Party.recend} ����</strong></h6><h6>&nbsp;&nbsp;<i class="icon-map-marker" style=""></i>&nbsp;<strong style="color: black;"> ������� - ${Party.place}</strong></h6><h6>&nbsp;&nbsp;<i class="icon-group"></i><strong style="color: black;">�������� - ${Party.recruit} ��</strong></h6><br><br></p>
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

                    <input type="checkbox" value="box1" name="box" onclick="selectAll(this)"><strong style="color: black;">��ü����</strong><input type="checkbox" name="box" value="box2"style="margin-left: 40px; color: b"><strong style="color: black;">(�ʼ�)�������� 3�� ���� ����</strong> <a href="#modal"  data-toggle="modal" style="margin-left: 40px;">���뺸��</a>
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
    

</body>
</html>
