<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<title>파티 전체보기</title>
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
<link id="t-colors" href="/resources/bootstrap/skins/default.css" rel="stylesheet"/>

<!-- Fav and touch icons -->
<link rel="apple-touch-icon-precomposed" sizes="144x144" href="/resources/bootstrap/ico/apple-touch-icon-144-precomposed.png" />
<link rel="apple-touch-icon-precomposed" sizes="114x114" href="/resources/bootstrap/ico/apple-touch-icon-114-precomposed.png" />
<link rel="apple-touch-icon-precomposed" sizes="72x72" href="/resources/bootstrap/ico/apple-touch-icon-72-precomposed.png" />
<link rel="apple-touch-icon-precomposed" href="/resources/bootstrap/ico/apple-touch-icon-57-precomposed.png" />
<link rel="shortcut icon" href="/resources/bootstrap/ico/favicon.png" />

<!-- Ajax -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- 지도api 키값으로 지도 출력-->
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=c2196b807ce5ba8e4ccfab926c0992db&libraries=services"></script>
<!-- 달력 -->
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
 <script>
   $(function() {
     jQuery.noConflict();
      $("#datepicker").datepicker({
          numberOfMonths: 1,
          dateFormat : 'yy-mm-dd',
          /*
          onSelect: function(selected) {
          $("#datepicker1").datepicker("option","minDate", selected)
          } */
          onChange: function(change) {
           $("#datepicker").datepicker("option","minDate", selected)
          }
      });
      $("#datepicker1").datepicker({
          numberOfMonths: 1,
          dateFormat : 'yy-mm-dd',
          onChange: function(change) {
           $("#datepicker1").datepicker("option","minDate", selected)
          }
      });
   });
</script>
 <script>
$( function() {
/*달력 호출 (월/일/년 -> 년/월/일로 바꾸기 */
var dateFormat = "yy-mm-dd",
/*달력 첫번째 바꾸기*/
from = $( "#datepicker" ).datepicker({
  dateFormat : dateFormat,
    defaultDate: "+1w",
    changeMonth: true,
    numberOfMonths: 1
  })
  .on( "change", function() {
    to.datepicker( "option", "minDate", getDate( this ) );
  }),
/*달력 두번째 바꾸기*/
to = $( "#datepicker1" ).datepicker({
  dateFormat : dateFormat,
    defaultDate: "+1w",
   changeMonth: true,
      numberOfMonths: 1
})
.on("datepicker1", function(){
  from.datepicker( "option", "maxDate", getDate( this ) );
});
  function getDate(element){
  var date;
  try {
    date = $.datepicker.parseDate( dateFormat, element.value );
  } catch( error ){
    date = null;
  }
return date;
}
});
</script>
<script>
$(document).ready(function() {
  /**검색종류
  #categorySearch = 카테고리별 검색
  #place = 장소
  #price = 비용
  #week = 요일 파티 시작날짜를 기준으로 검색
  #datepicker 모집시작날짜를 기준으로 검색
  #datepicker1 모집 종료날짜를 기준으로 검색
  */
  $('#categorySearch, #place, #price, #week, #time, #datepicker, #datepicker1').change(function() {
    deleteMarkers();
    var categoryValue = $('#categorySearch').val();
    var placeValue = $('#place').val();
    var priceValue = $('#price').val();
    var dayValue = $('#week').val();
    var timeValue = $('#time').val();
    var calenderStart = $('#datepicker').val();
    var calenderEnd = $('#datepicker1').val();
    $.ajax({
      type:'get',
      url:'search.do',
      dataType:"json",
      data:{
        category:categoryValue,
        place:placeValue,
        price:priceValue,
        week:dayValue,
        time:timeValue,
        startCal:calenderStart,
        endCal:calenderEnd
      },
      success:function (searchList){
        var text ="";
        for ( var i in searchList) {
          text += "<div class='span2'><ul class='slides'><li partimg='"+searchList[i].num+"'><a href='/party/read?num="+searchList[i].num+"'>";
          text += "<img src='/resources/bootstrap/img/partyImg/"+searchList[i].image+"' style='max-width: 150px; height: 200px; border:solid 2px white;' class='img-polaroid' />";
          text += "</a></li><li><a href='/party/read?num="+searchList[i].num+"'>"+searchList[i].name+"</a></li>";
          text += "<li>"+searchList[i].recruit+"명<button date='"+searchList[i].num+"' onclick='location.href='/party/read?num="+searchList[i].num+"'' class='btn btn-warning btn-small e_wobble' style='float: right;'>신청하기</button></li></ul></div>";
          navi((searchList[i].place).substr(0,10)+'...', searchList[i].name, "/resources/bootstrap/img/partyImg/"+searchList[i].image);
          
        }
        $("#visible").html(text);
        for ( var i in searchList) {
          if(searchList[i].primeum=="Y"){
            $("li[partimg="+searchList[i].num+"]").css("border","solid 2px gold");
           }
          var finish = searchList[i].recend.split(" ");
            finishdate(searchList[i].num, finish[0]);
    }
      },
      error:function(){
        console.log("오류");
      }
    });
  });
});

</script>
<script>
$(document).ready(function() {
/*최근순 lately */
$('#lately').click(function() {
  var targetElement = $(event.target);
  var latelyValue = $('#lately').val();
  if( targetElement.is("#lately")){
    $.ajax({
      type:'get',
      url:'search.do',
      dataType:"json",
      data:{
        lately:latelyValue
      },
      success:function(searchList){
        var text ="";
        for ( var i in searchList) {
          text += "<div class='span2'><ul class='slides'><li partimg='"+searchList[i].num+"'><a href='/party/read?num="+searchList[i].num+"'>";
          text += "<img src='/resources/bootstrap/img/partyImg/"+searchList[i].image+"' style='max-width: 150px; height: 200px; border:solid 2px white;' class='img-polaroid' />";
          text += "</a></li><li><a href='/party/read?num="+searchList[i].num+"'>"+searchList[i].name+"</a></li>";
          text += "<li>"+searchList[i].recruit+"명<button date='"+searchList[i].num+"' onclick='location.href='/party/read?num="+searchList[i].num+"'' class='btn btn-warning btn-small e_wobble' style='float: right;'>신청하기</button></li></ul></div>";
          function deadlineName() {
          return searchList[i].name;
        }
        }
        $("#visible").html(text);
        for ( var i in searchList) {
          if(searchList[i].primeum=="Y"){
            $("li[partimg="+searchList[i].num+"]").css("border","solid 2px gold");
           }
          var finish = searchList[i].recend.split(" ");
            finishdate(searchList[i].num, finish[0]);
    }
      },
      error:function(){
        console.log("오류");
      }
    });
    
  }
  }); 
/*마감순 deadline*/
$('#deadline').click(function() {
  var targetElement = $(event.target);
  var deadlineValue = $('#deadline').val();
  if( targetElement.is("#deadline")){
    $.ajax({
      type:'get',
      url:'search.do',
      dataType:"json",
      data:{
        deadline:deadlineValue
      },
      success:function(searchList){
        var text ="";
        for ( var i in searchList) {
          text += "<div class='span2'><ul class='slides'><li partimg='"+searchList[i].num+"'><a href='/party/read?num="+searchList[i].num+"'>";
          text += "<img src='/resources/bootstrap/img/partyImg/"+searchList[i].image+"' style='max-width: 150px; height: 200px; border:solid 2px white;' class='img-polaroid' />";
          text += "</a></li><li><a href='/party/read?num="+searchList[i].num+"'>"+searchList[i].name+"</a></li>";
          text += "<li>"+searchList[i].recruit+"명<button date='"+searchList[i].num+"' onclick='location.href='/party/read?num="+searchList[i].num+"'' class='btn btn-warning btn-small e_wobble' style='float: right;'>신청하기</button></li></ul></div>";
          function deadlineName() {
          return searchList[i].name;
         }
        }
        $("#visible").html(text);
        for ( var i in searchList) {
           if(searchList[i].primeum=="Y"){
                $("li[partimg="+searchList[i].num+"]").css("border","solid 2px gold");
               }
          var finish = searchList[i].recend.split(" ");
            finishdate(searchList[i].num, finish[0]);
    }
      },
      error:function(){
        console.log("오류");
      }
    });
   }
  }); 
});
</script>
<!-- 지도에 보여주는 파티정보스타일 -->
<style>
    .wrap {position: absolute;left: 0;bottom: 40px;width: 288px;height: 132px;margin-left: -144px;text-align: left;overflow: hidden;font-size: 12px;font-family: 'Malgun Gothic', dotum, '돋움', sans-serif;line-height: 1.5;}
    .wrap * {padding: 0;margin: 0;}
    .wrap .info {width: 286px;height: 120px;border-radius: 5px;border-bottom: 2px solid #ccc;border-right: 1px solid #ccc;overflow: hidden;background: #fff;}
    .wrap .info:nth-child(1) {border: 0;box-shadow: 0px 1px 2px #888;}
    .info .title {padding: 5px 0 0 10px;height: 30px;background: #eee;border-bottom: 1px solid #ddd;font-size: 18px;font-weight: bold;}
    .info .close {position: absolute;top: 10px;right: 10px;color: #888;width: 17px;height: 17px;background: url('http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/overlay_close.png');}
    .info .close:hover {cursor: pointer;}
    .info .body {position: relative;overflow: hidden;}
    .info .desc {position: relative;margin: 13px 0 0 90px;height: 75px;}
    .desc .ellipsis {overflow: hidden;text-overflow: ellipsis;white-space: nowrap;}
    .desc .jibun {font-size: 11px;color: #888;margin-top: -2px;}
    .info .img {position: absolute;top: 6px;left: 5px;width: 73px;height: 71px;border: 1px solid #ddd;color: #888;overflow: hidden;}
    .info:after {content: '';position: absolute;margin-left: -12px;left: 50%;bottom: 0;width: 22px;height: 12px;background: url('http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/vertex_white.png')}
    .info .link {color: #5085BB;}
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
            <form class="form-search">카테고리&emsp;<select id="categorySearch" name="categorySearch" style="width: 150px; border-radius: 10px; display: inline-block;">
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
              </select>&emsp;요&emsp;&emsp;&emsp;일&emsp;<select id="week" name="categorySearch" style="width: 150px; border-radius: 10px; display: inline-block;">
              <option value="" selected="selected">--선택--</option>
              <option value="weekday">주중</option>
              <option value="weekend">주말</option>
              </select>
            </form>
          </div>
          <form class="form-search">지&emsp;&emsp;역&emsp;<select id="place" name="categorySearch" style="width: 150px; border-radius: 10px; display: inline-block;">
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
              <option value="제주">제주도</option>
            </select>&emsp;시&emsp;&emsp;&emsp;간&emsp;<select id="time" name="categorySearch" style="width: 150px; border-radius: 10px; display: inline-block;">
              <option value="" selected="selected">--선택--</option>
              <option value="오전">오전</option>
              <option value="오후">오후</option>
              <option value="저녁">저녁</option>
              <option value="새벽">새벽</option>
              </select>
             <!--  <a href="#">오전</a>&emsp;<a href="#">오후</a>&emsp;<a href="#">저녁</a>&emsp;<a href="#">새벽</a> -->
          </form>
          
          <form class="form-search">
            비&emsp;&emsp;용&emsp;<select id="price" name="categorySearch" style="width: 150px; border-radius: 10px; display: inline-block;">
              <option value="1" selected="selected">--선택--</option>
              <option value="100000">10만원 이하</option>
              <option value="500000">10~50만원</option>
              <option value="1000000">50~100만원</option>
              <option value="2000000">100~200만원</option>
              <option value="2000001">200만원이상</option>
            </select>&emsp;파티&emsp;기간&emsp;<input type="text" id="datepicker" style="width: 100px; border-radius: 10px;">
            ~ <input type="text" id="datepicker1" style="width: 100px; border-radius: 10px;">
          </form>
          <div class="row"><div class="span6"><div class="solidline">
          </div></div></div><h4>파티 목록</h4>
          <nav style="margin-top: -60px;  padding-top: 10px;">
            <ul class="slides" id="soon" style="float: right;">
              <li style="border-left: none; display: inline; font: bold 12px Dotum; padding: 0 10px;"><input type="button" class="btn btn-orange" id="lately" value="최근순"></li>
              <li style="border-left: none; display: inline; font: bold 12px Dotum; padding: 0 10px;"><input type="button" class="btn btn-theme" id="deadline" value="마감순"></li>
            </ul>
          </nav>
          <div class="row">
            <div class="span6">
              <div class="solidline" ></div>
            </div>
          </div>
<!-- 검색 결과 보여주기 -->
<div class="row" id="visible" style="overflow-y: scroll; width: 625px; height: 600px;">
  </div>
    </div>
    
    <!-- 다음 지도 API -->
  <div class="span6">
    <div id="map" style="width: 650px; height: 900px;"></div>

<script>
/*지도에 전체 리스트 출력*/
 $(document).ready(function() {
  deleteMarkers();
  $(".span2").each(function(index){
    var place = $(this).attr("party_place");
    var name = $(this).attr("party_name");
    var img = $(this).attr("party_image");
    navi((place).substr(0,10)+'...', (name).substr(0,6)+'...', img);
  });
});
</script>

<script>
//오늘 날짜를 구하는 함수yyyy-mm-dd
function today() {
  var today = new Date();
  var dd = today.getDate();
  var mm = today.getMonth()+1; //January is 0!
  var yyyy = today.getFullYear();

  if(dd<10) {
      dd='0'+dd
  } 

  if(mm<10) {
      mm='0'+mm
  } 
  return today = yyyy+'-'+mm+'-'+dd;
}

function today2() {
  var today = new Date();
  var dd = today.getDate();
  var mm = today.getMonth()+1; //January is 0!
  var yyyy = today.getFullYear();

  if(dd<10) {
      dd='0'+dd
  } 

  if(mm<10) {
      mm='0'+mm
  } 
  return today = yyyy+'-'+mm+'-'+dd;
}

//신청마감버튼 출력
function finishdate(partynum, finish) {
   if(today() > finish ){
  $("button[date="+partynum+"]").attr("disabled", true);
  $("button[date="+partynum+"]").css("background-color","black");
  $("button[date="+partynum+"]").html("신청마감");
   }
}
</script>
<c:forEach items="${list}" var="party">
 <script>
  //프리미엄체크를 위한 변수선언
  var premium = '${party.primeum}';
  //제목 6글자만 뒤에는 ...
  var subname = ('${party.name}').substr(0,6)+'...';
  //프리미엄을 넣기 위한 파티번호받기
  var partynum = '${party.num}';
  //지난날짜 파티를 구분하기 위한 변수선언
  var finish = '${party.recend}';
  /*무한 스크롤 처음 9개만 보기*/
       $("#visible").append("<div class='span2' id='${party.num}' party_place='${party.place}' party_num='${party.num}'"+
              "party_name='${party.name}' party_image='/resources/bootstrap/img/partyImg/${party.image}'>"+
              "<ul class='slides'><li partimg='${party.num}'><a href='/party/read?num=${party.num}'>"+
              "<img src='/resources/bootstrap/img/partyImg/${party.image}' style='max-width: 150px; height: 200px;border:solid 2px white;' class='img-polaroid' />"+
              "</a></li><li><a num='${party.num}' href='/party/read?num=${party.num}'>"+subname+
              "</a></li><li>${party.recruit}명<button date='${party.num}' onclick='location.href='/party/read?num=${party.num}'' class='btn btn-warning btn-small e_wobble' style='float: right;'>"+
              "신청하기</button></li></ul></div>");
       if(premium=="Y"){
          $("li[partimg="+partynum+"]").css("border","solid 2px gold");
                     }
      finishdate(partynum, finish);
  </script>
</c:forEach>
<script>
var count = 10;
//무한스크롤
$("#visible").scroll(function(){
    var offsetHeight = $(this).prop('offsetHeight');
    var scrollTop= $(this).scrollTop();
    var scrollHeight= $(this).prop('scrollHeight');
    if(offsetHeight    +  scrollTop >=  scrollHeight){
       console.log("이벤트 발생");
        $.ajax({
            type:'get',
            url:'search.do',
            dataType:"json",
            data:{
              listnum:count
            },
            success:function (searchList){
             
              var text ="";
              for ( var i in searchList) {
                text += "<div class='span2'><ul class='slides'><li><a href='/party/read?num="+searchList[i].num+"'>";
                text += "<img partimg='"+searchList[i].num+"' src='/resources/bootstrap/img/partyImg/"+searchList[i].image+"' style='max-width: 100%; height: 200px; border:solid 2px white;' class='img-polaroid' />";
                text += "</a></li><li><a href='/party/read?num="+searchList[i].num+"'>"+searchList[i].name+"</a></li>";
                text += "<li>"+searchList[i].recruit+"명<button date='"+searchList[i].num+"' onclick='location.href='/party/read?num="+searchList[i].num+"'' class='btn btn-warning btn-small e_wobble' style='float: right;'>신청하기</button></li></ul></div>";
                navi((searchList[i].place).substr(0,10)+'...', searchList[i].name, "/resources/bootstrap/img/partyImg/"+searchList[i].image);
                count++;
              }
              $("#visible").append(text);
              for ( var i in searchList) {
                if(searchList[i].primeum=="Y"){
                  $("img[partimg="+searchList[i].num+"]").css("border","solid 2px gold");
                 }
                  var finish = searchList[i].recend.split(" ");
                  finishdate(searchList[i].num, finish[0]);
            } 
            },
            error:function(){
              console.log("오류");
            }
          });
    }

});
</script>
<script>
var markers = [];
var marker;
var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
mapOption = {
    center: new daum.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
    level: 13 // 지도의 확대 레벨
};  
//지도를 생성합니다    
var map = new daum.maps.Map(mapContainer, mapOption); 
//일반 지도와 스카이뷰로 지도 타입을 전환할 수 있는 지도타입 컨트롤을 생성합니다
var mapTypeControl = new daum.maps.MapTypeControl();
// 지도에 컨트롤을 추가해야 지도위에 표시됩니다
// daum.maps.ControlPosition은 컨트롤이 표시될 위치를 정의하는데 TOPRIGHT는 오른쪽 위를 의미합니다
map.addControl(mapTypeControl, daum.maps.ControlPosition.TOPRIGHT);

// 지도 확대 축소를 제어할 수 있는  줌 컨트롤을 생성합니다
var zoomControl = new daum.maps.ZoomControl();
map.addControl(zoomControl, daum.maps.ControlPosition.RIGHT);

/*지도 호출을 위한 함수 선언*/
function navi(place, name, img) {
  //주소-좌표 변환 객체를 생성합니다
  var geocoder = new daum.maps.services.Geocoder();

  //주소로 좌표를 검색합니다
  geocoder.addressSearch(place, function(result, status) {

  // 정상적으로 검색이 완료됐으면 
   if (status === daum.maps.services.Status.OK) {

      var coords = new daum.maps.LatLng(result[0].y, result[0].x);
     // 마커 이미지의 이미지 주소입니다
      var imageSrc = "http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png"; 
          
          // 마커 이미지의 이미지 크기 입니다
          var imageSize = new daum.maps.Size(24, 35); 
          
          // 마커 이미지를 생성합니다    
          var markerImage = new daum.maps.MarkerImage(imageSrc, imageSize); 
          
          // 마커를 생성합니다
            marker = new daum.maps.Marker({
              map: map, // 마커를 표시할 지도
              position: coords,// 마커의 위치
              image:markerImage
          }); 
          markers.push(marker);
          // 마커에 표시할 인포윈도우를 생성합니다 
          var infowindow = new daum.maps.InfoWindow({
              content: '<div class="info"><div class="title">'+name+ 
              '        </div>' + 
              '        <div class="body">' + 
              '            <div class="img">' +
              '                <img src='+img+' width="73" height="70">' +
              '           </div>' + 
              '            <div class="desc">' + 
              '                <div class="ellipsis">'+place+'</div>' + 
              //'                <div class="jibun ellipsis">(우) 63309 (지번) 영평동 2181</div>' + 
              '        </div>' + 
              '</div>'
          });
          //마우스 over, out이벤트
          daum.maps.event.addListener(marker, 'mouseover', makeOverListener(map, marker, infowindow));
          daum.maps.event.addListener(marker, 'mouseout', makeOutListener(infowindow));
          /*마우스 클릭(줌인)이벤트*/
          daum.maps.event.addListener(marker, 'click', zoomIn());
          /*지도 줌인을 위한 함수 선언*/
          function zoomIn() {
            return function() {
              // 현재 지도의 레벨을 얻어옵니다
                var level = map.getLevel(); 
                // 지도를 1레벨 올립니다 (지도가 축소됩니다)
                map.setLevel(level - 3);
                map.setCenter(coords);
        };
          } 
          // 인포윈도우를 표시하는 클로저를 만드는 함수입니다 
          function makeOverListener(map, marker, infowindow) {
              return function() {
                  infowindow.open(map, marker);
              };
          }
           // 인포윈도우를 닫는 클로저를 만드는 함수입니다 
          function makeOutListener(infowindow) {
              return function() {
                  infowindow.close();
              };
          }
           // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
      map.setCenter(coords);
  } 
  });
}
//배열에 추가된 마커들을 지도에 표시하거나 삭제하는 함수입니다
function setMarkers(map) {
    for (var i = 0; i < markers.length; i++) {
        markers[i].setMap(map);
    }            
}
/*마커 삭제하는 함수*/
function deleteMarkers() {
    setMarkers(null);    
}
</script>
        </div>
      </div>
    </div>
  </section>
<jsp:include page="/WEB-INF/views/include/footer.jsp" />
</body>
</html>