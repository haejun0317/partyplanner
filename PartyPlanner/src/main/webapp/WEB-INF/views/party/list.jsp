<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="false"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
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

<!-- Ajax -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- 달력 -->
<link rel="stylesheet"
  href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<!-- 지도api -->
<script type="text/javascript"
  src="//dapi.kakao.com/v2/maps/sdk.js?appkey=c2196b807ce5ba8e4ccfab926c0992db"></script>
<script>
/*
  $( function() {
	    $( "#datepicker" ).datepicker();
	    $( "#datepicker1" ).datepicker();
	} );
	*/
</script>
<script>
$(document).ready(function() {
	$('#categorySearch, #place, #price, #week, #time').change(function() {
		var categoryValue = $('#categorySearch').val();
		var placeValue = $('#place').val();
		var priceValue = $('#price').val();
		var dayValue = $('#week').val();
		var timeValue = $('#time').val();
		$.ajax({
			type:'get',
			url:'search.do',
			dataType:"json",
			data:{
				category:categoryValue,
				place:placeValue,
				price:priceValue,
				week:dayValue,
				time:timeValue
			},
			success:function(searchList){
				var text ="";
				for ( var i in searchList) {
					text += "<div class='span2'><ul class='slides'><li><a href='/party/read?num="+searchList[i].num+"'><img src='/resources/bootstrap/img/partyImg/"+searchList[i].image+"' style='max-width: 100%; height: 200px;' class='img-polaroid' /></a></li><li><a href='/party/read?num="+searchList[i].num+"'>"+searchList[i].name+"</a></li><li>"+searchList[i].recruit+"명<a href='/party/read?num="+searchList[i].num+"' class='btn btn-warning btn-small e_wobble' style='float: right;'>신청하기</a></li></ul></div>";
				}
				$("#visible").html(text);
			},
			error:function(){
				console.log("오류");
			}
		});
	});
});
</script>
<style>
.category {
	display: inline-block;
}

/* nav tag */
nav ul {
	padding-top: 10px;
} /*  상단 여백 10px  */
nav ul li {
	display: inline; /*  세로나열을 가로나열로 변경 */
	border-left: 1px solid #999; /* 각 메뉴의 왼쪽에 "|" 표시(분류 표시) */
	font: bold 12px Dotum; /* 폰트 설정 - 12px의 돋움체 굵은 글씨로 표시 */
	padding: 0 10px; /* 각 메뉴 간격 */
}

nav ul li:first-child {
	border-left: none;
}
</style>
</head>
<body>
  <jsp:include page="/WEB-INF/views/include/header.jsp" />
  <!-- 바디부분 -->
  <section id="content">
    <div class="container">
      <div class="row">
        <div class="span6">
          <div class="widget">
            <form class="form-search">카테고리&emsp;<select id="categorySearch" name="categorySearch" style="width: 150px; border-radius: 10px;">
                <option value="" selected="selected">--선택--</option>
                <option value="교육">교육</option>
                <option value="강연">강연</option>
                <option value="세미나">세미나</option>
                <option value="컨퍼런스">컨퍼런스</option>
                <option value="예술">예술</option>
                <option value="문화">문화</option>
                <option value="방송">방송</option>
                <option value="취미활동">취미활동</option>
                <option value="소모임">소모임</option>
                <option value="공모전">공모전</option>
                <option value="전시">전시</option>
                <option value="패션">패션</option>
                <option value="뷰티">뷰티</option>
                <option value="이벤트">이벤트</option>
                <option value="파티">파티</option>
                <option value="여행">여행</option>
                <option value="후원금 모금">후원금 모금</option>
                <option value="기타">기타</option>
              </select>&emsp;요&emsp;&emsp;&emsp;일&emsp;<select id="week" name="categorySearch" style="width: 150px; border-radius: 10px;">
              <option value="" selected="selected">--선택--</option>
              <option value="weekday">주중</option>
              <option value="weekend">주말</option>
              </select>
            </form>
          </div>
          
          <form class="form-search">지&emsp;&emsp;역&emsp;<select id="place" name="categorySearch" style="width: 150px; border-radius: 10px;">
              <option value="" selected="selected">--선택--</option>
              <option value="서울">서울특별시</option>
              <option value="인천">인천광역시</option>
              <option value="대전">대전광역시</option>
              <option value="대구">대구광역시</option>
              <option value="부산">부산광역시</option>
              <option value="울산">울산광역시</option>
              <option value="광주">광주광역시</option>
              <option value="경기">경기도</option>
              <option value="강원">강원도</option>
              <option value="경상북도">경상북도</option>
              <option value="경상남도">경상남도</option>
              <option value="전라북도">전라북도</option>
              <option value="전라남도">전라남도</option>
              <option value="충청북도">충청북도</option>
              <option value="충청남도">충청남도</option>
              <option value="제주도">제주도</option>
            </select>&emsp;시&emsp;&emsp;&emsp;간&emsp;<select id="time" name="categorySearch" style="width: 150px; border-radius: 10px;">
              <option value="" selected="selected">--선택--</option>
              <option value="오전">오전</option>
              <option value="오후">오후</option>
              <option value="저녁">저녁</option>
              <option value="새벽">새벽</option>
              </select>
             <!--  <a href="#">오전</a>&emsp;<a href="#">오후</a>&emsp;<a href="#">저녁</a>&emsp;<a href="#">새벽</a> -->
          </form>
          
          <form class="form-search">
            비&emsp;&emsp;용&emsp;<select id="price" name="categorySearch" style="width: 150px; border-radius: 10px">
              <option value="1" selected="selected">--선택--</option>
              <option value="100000">10만원 이하</option>
              <option value="500000">10~50만원</option>
              <option value="1000000">50~100만원</option>
              <option value="2000000">100~200만원</option>
              <option value="2000001">200만원이상</option>
            </select>&emsp;파티시작일&emsp;<input type="text" id="datepicker" style="width: 100px; border-radius: 10px;">
            ~ <input type="text" id="datepicker1" style="width: 100px; border-radius: 10px;">
          </form>
          <div class="row"><div class="span6"><div class="solidline"></div></div></div>
          <div class="span3">
            <h4>모임</h4>
          </div>
          <nav>
            <ul id="soon" style="float: right;">
              <li><a href="#"  id="인기순">인기순</a></li>
              <li><a href="#"  id="최근순">최근순</a></li>
              <li><a href="#"  id="마감순">마감순</a></li>
            </ul>
          </nav>
          <div class="row">
            <div class="span6">
              <div class="solidline"></div>
            </div>
          </div>
<c:forEach items="${list}" var="party">
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
    	 
        $("#visible").append("<div class='span2'><ul class='slides'><li><a href='/party/read?num=${party.num}'><img src='/resources/bootstrap/img/partyImg/${party.image}' style='max-width: 100%; height: 200px;' class='img-polaroid' /></a></li><li><a href='/party/read?num=${party.num}'>${party.name}</a></li><li>${party.recruit}<a href='/party/read?num=${party.num}' class='btn btn-warning btn-small e_wobble' style='float: right;'>신청하기</a></li></ul></div>");   
      count++;
   			 } 
  		});
	});
  
	$(document).ready(function() {
 	   $("#visible").append("<div class='span2'><ul class='slides'><li><a href='/party/read?num=${party.num}'><img src='/resources/bootstrap/img/partyImg/${party.image}' style='max-width: 100%; height: 200px;' class='img-polaroid' /></a></li><li><a href='/party/read?num=${party.num}'>${party.name}</a></li><li>${party.recruit}명<a href='/party/read?num=${party.num}' class='btn btn-warning btn-small e_wobble' style='float: right;'>신청하기</a></li></ul></div>");    
	}); 
	</script>
</c:forEach>
          <!-- 검색 결과 보여주기 -->
          <div class="row" id="visible" style="overflow-y: scroll; width: 625px; height: 600px;">
          </div>
        </div>
        <div class="span6">
          <div id="map" style="width: 650px; height: 900px;"></div>
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
  <jsp:include page="/WEB-INF/views/include/footer.jsp" />
</body>
</html>