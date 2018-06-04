<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ page session="false" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
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
  <!-- Fav and touch icons -->
  <link rel="apple-touch-icon-precomposed" sizes="144x144" href="/resources/bootstrap/ico/apple-touch-icon-144-precomposed.png" />
  <link rel="apple-touch-icon-precomposed" sizes="114x114" href="/resources/bootstrap/ico/apple-touch-icon-114-precomposed.png" />
  <link rel="apple-touch-icon-precomposed" sizes="72x72" href="/resources/bootstrap/ico/apple-touch-icon-72-precomposed.png" />
  <link rel="apple-touch-icon-precomposed" href="/resources/bootstrap/ico/apple-touch-icon-57-precomposed.png" />
  <link rel="shortcut icon" href="/resources/bootstrap/ico/favicon.png" />
  
  <!-- 달력 -->
  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  
  <!-- 지도api -->
  <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=c2196b807ce5ba8e4ccfab926c0992db"></script>
  <script>
  $( function() {
	    $( "#datepicker" ).datepicker();
	    $( "#datepicker1" ).datepicker();

	});
  $( function() {
  $.getJSON("/list",function(data) {
		alert(data);
	});
  });
  </script>
  <style>
    .category {
              display: inline-block;
              }
             /* nav tag */
         nav ul{padding-top:10px;}                     /*  상단 여백 10px  */
         nav ul li {
            display:inline;                            /*  세로나열을 가로나열로 변경 */
            border-left:1px solid #999;                /* 각 메뉴의 왼쪽에 "|" 표시(분류 표시) */
            font:bold 12px Dotum;                      /* 폰트 설정 - 12px의 돋움체 굵은 글씨로 표시 */
            padding:0 10px;                            /* 각 메뉴 간격 */
        }
         nav ul li:first-child{border-left:none;}
  </style>
</head>
<body>
<jsp:include page="/WEB-INF/views/include/header.jsp"/>
    <!-- 바디부분 -->
    <section id="content">
      <div class="container">
        <div class="row">
          <div class="span6">
            <div class="widget">
              <form class="form-search">
               <span class="category" > 카테고리&emsp;<select name="category" style="width: 100px; border-radius: 10px;">
                  <option value="n" selected="selected">--선택--</option>
                  <option>교육</option>
                  <option>강연</option>
                  <option>세미나</option>
                  <option>컨퍼런스</option>
                  <option>예술</option>
                  <option>문화</option>
                  <option>방송</option>
                  <option>취미활동</option>
                  <option>소모임</option>
                  <option>공모전</option>
                  <option>전시</option>
                  <option>패션</option>
                  <option>뷰티</option>
                  <option>이벤트</option>
                  <option>파티</option>
                  <option>여행</option>
                  <option>후원금 모금</option>
                  <option>기타</option>
                </select>
               </span>
              <span class="category" style="">&emsp;요&emsp;&emsp;&emsp;일&emsp;<a href="#">주중</a>&emsp;
                  <a href="#">주말</a>
              </span>
              </form>
            </div>
            <form class="form-search">
            <span class="category">지&emsp;&emsp;역&emsp;<select name="category"  style="width: 100px; border-radius: 10px;">
                  <option value="" selected="selected">--선택--</option>
                  <option>서울특별시</option>
                  <option>인천광역시</option>
                  <option>대전광역시</option>
                  <option>대구광역시</option>
                  <option>부산광역시</option>
                  <option>울산광역시</option>
                  <option>광주광역시</option>
                  <option>경기도</option>
                  <option>강원도</option>
                  <option>경상북도</option>
                  <option>경상남도</option>
                  <option>전라북도</option>
                  <option>전라남도</option>
                  <option>충청북도</option>
                  <option>충청남도</option>
                  <option>제주도</option>
                </select>
                </span>
                <span class="category" style="">&emsp;시&emsp;&emsp;&emsp;간&emsp;
                  <a href="#">오전</a>&emsp;
                  <a href="#">오후</a>&emsp;
                  <a href="#">저녁</a>&emsp;
                  <a href="#">새벽</a>
              </span>
              </form>
              <form class="form-search">
              <span class="category"> 비&emsp;&emsp;용&emsp;<select name="category"  style="width: 100px; border-radius: 10px;">
                  <option value="" selected="selected">--선택--</option>
                  <option>10만원 이하</option>
                  <option>10~50만원</option>
                  <option>50~100만원</option>
                  <option>100~200만원</option>
                  <option>200만원이상</option>
                </select>
               </span>
              <span class="category" style="">&emsp;파티시작일&emsp;
              <input type="text" id="datepicker" style="width: 100px;border-radius: 10px;">~<input type="text" id="datepicker1" style="width: 100px;border-radius: 10px;">              
              </span>
              </form>
            <div class="row">
              <div class="span6">
                <div class="solidline"></div>
              </div>
            </div>
            <div class="span3"><h4>모임</h4></div>
              <nav><ul style="float: right;">
              <li><a href="#">인기순</a></li>
              <li><a href="#">최근순</a></li>
              <li><a href="#">마감순</a></li>
              </ul></nav>
            <div class="row">
              <div class="span6">
                <div class="solidline"></div>
              </div>
            </div>
   <c:forEach items="${search}" var="party">
<script>
  /*무한 스크롤*/
  $(document).ready(function() {
  // 윈도우 이벤트 처리(window, document, img 등에서 사용할 수 있는 이벤트)
  // ready, load, unload, resize, scroll, error
  var count = 1;
  // 무한스크롤 구현
  $("#visible").scroll(function(){
    var scrollHeight = $("#visible").scrollTop();
    var documentHeight = count * $("#visible").height();
    // 스크롤이 끝까지 내려가면 window 객체의 scrollTop 속성과 height 속성을 합한 값이
    // document 높이와 같아진다.
    console.log(scrollHeight + ":" + documentHeight);
      if(scrollHeight >= documentHeight-200 * count){//브라우저 마다 미세한 차이 발생(스크롤바의 크기)으로 -100
        $("#visible").append("<div class='span2'><ul class='slides'><li><a href='/party/read?num=${party.num}'><img src='/resources/bootstrap/img/partyImg/${party.image}' style='max-width: 100%; height: 200px;' class='img-polaroid' /></a></li><li><a href='#'>${party.name}</a></li><li>${party.recruit}<a href='#' class='btn btn-warning btn-small e_wobble' style='float: right;'>신청하기</a></li></ul></div>");   
      count++;
   			 } 
  		});
	});
	$(document).ready(function() {
 	   $("#visible").append("<div class='span2'><ul class='slides'><li><a href='/party/read?num=${party.num}'><img src='/resources/bootstrap/img/partyImg/${party.image}' style='max-width: 100%; height: 200px;' class='img-polaroid' /></a></li><li><a href='#'>${party.name}</a></li><li>${party.recruit}명<a href='#' class='btn btn-warning btn-small e_wobble' style='float: right;'>신청하기</a></li></ul></div>");    
	}); 
</script>
       </c:forEach>
       <!-- 검색 결과 보여주기 -->
            <div class="row" id="visible" style="overflow-y: scroll;width: 625px; height: 600px;">
            </div>
          </div>
          <div class="span6">
          <div id="map" style="width:650px;height:900px;"></div>
	      <script>
				var container = document.getElementById('map');
				var options = {
					center: new daum.maps.LatLng(33.450701, 126.570667),
					level: 3
				};
				var map = new daum.maps.Map(container, options);
		</script>
        </div>
       </div>
        </div>
       </section>
 <jsp:include page="/WEB-INF/views/include/footer.jsp"/>
</body>
</html>