<%@page import="kr.co.partyplanner.member.domain.Member"%>
<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<% Member member = (Member)session.getAttribute("Member");%>
<!DOCTYPE html>
<html lang="en">

<head>  
<meta charset="utf-8">
<title>기획서 확인</title>
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
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<!-- 드로그 앤 드롭 -->
<!-- AJAX -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<style>
#sortable {
	list-style-type: none;
	margin: 0;
	padding: 0;
	width: 60%;
}

#sortable li {
	margin: 0 3px 3px 3px;
	padding: 0.4em;
	padding-left: 1.5em;
	font-size: 1.4em;
	height: 18px;
}

#sortable li span {
	position: absolute;
	margin-left: -1.3em;
}
</style>
<script type="text/javascript">
$(document).ready(function() {
	setSchedule();
	setSum();
});

/** 식순 분류 후 출력 */
function setSchedule() {
	var text = "";
	var schedule = $("#schedule").val();
	var subschedule = schedule.split("##");
	for ( var i in subschedule) {
		var ss = subschedule[i].split("%%");
		for ( var j in ss) {
			if(ss.length > 1 && j > 0){
				text += "<p><label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-&nbsp;&nbsp;"+ss[j]+"</label></p>";
			}else{
				text += "<p><label>"+ss[j]+"</label></p>";
			}
		}	
	}
	$("#showSchedule").append(text);
}

/** 값 콤마 찍기 기능 */
function setSum() {
	$("[name=comma]").each(function(index,item) {
		var price = $(item).context.textContent;
		$(item).html(setComma(price) + "원");
	})
}
</script>
<script type="text/javascript">
  function setComma(number) {
    // 정규표현식 : (+- 존재하거나 존재 안함, 숫자가 1개 이상), (숫자가 3개씩 반복)
    var reg = /(^[+-]?\d+)(\d{3})/;

    // 스트링변환
    number += '';
    while (reg.test(number)) {
      // replace 정규표현식으로 3자리씩 콤마 처리
      number = number.replace(reg, '$1' + ',' + '$2');
    }

    return number;
  }
</script>
</head>

<body>

  <jsp:include page="/WEB-INF/views/include/header.jsp"/>
  
    <!-- end header -->
    <section id="inner-headline">
      <div class="container">
        <div class="row">
          <div class="span4">
            <div class="inner-heading">
              <h2>행사기획서 확인</h2>
            </div>
          </div>
          <div class="span8">
            <ul class="breadcrumb">
              <li><a href="#"><i class="icon-home"></i></a><i
                class="icon-angle-right"></i></li>
              <li><a href="#">Member</a><i
                class="icon-angle-right"></i></li>
              <li class="active">Plan</li>
            </ul>
          </div>
        </div>
      </div>
    </section>
    <section id="content">
      <div class="container">
        <div class="row demobtn">
          <div class="span12">
            <!-- end divider -->

                
            <div class="row">
              <div class="span6">

                <h4>
                  <strong style="color: #ff3300;">행사</strong> 내용
                </h4>

                <div class="widget">
                  <div class="solidline"></div>
                </div>

                <form class="form-search">
                  <span class="category">장&emsp;&emsp;소&emsp; <label>${ePlan.place}</label>
                  </span>
                </form>

                <form class="form-search">
                  <span class="category">인&emsp;&emsp;원&emsp; <label>${ePlan.people}명</label>
                  </span> <!-- <span class="category">&emsp;예상시간&emsp; <label>들어가기</label>
                  </span> -->
                </form>

                <form class="form-search">
                  <span class="category" style="text-align: left;">파티시작일
                    <label>${ePlan.startday}</label> ~ <label>${ePlan.endday}</label>
                  </span>
                </form>
                <input type="hidden" id="schedule" value='${ePlan.schedule}'>
              </div>
              <div class="span6">
                <h4>
                  <strong style="color: #ff3300;">견적</strong> 내용
                </h4>

                <div class="widget">
                  <div class="solidline"></div>
                </div>

                <form class="form-search">
                  <span class="category">물품옵션가격&emsp;&emsp;&emsp;&emsp; <label name='comma'>${ePlan.eventSum}</label>
                  </span>
                </form>

                <form class="form-search">
                  <span class="category">선택옵션가격&emsp;&emsp;&emsp;&emsp; <label name='comma'>${ePlan.optionSum}</label>
                  </span>
                </form>

                <form class="form-search">
                  <span class="category">합&nbsp;&nbsp;계&emsp;금&nbsp;&nbsp;액&emsp;&emsp;&emsp;&emsp; <label name='comma'>${ePlan.eventSum + ePlan.optionSum}</label>
                  </span>
                </form>
              </div>
            </div>

            <!-- end span12 -->
            <div class="row">
              <div class="widget">
                <div class="solidline"></div>
              </div>
                <h4>
                  <strong style="color: #ff3300;">세부</strong> 내용
                </h4>
              <!-- 탭부분시작 -->

              <div class="tab-content">
                <!-- 첫번째 탭 -->
                <div class="tab-pane active" id="one">
                  <!-- 탭 왼쪽 부분 -->
                  <div class="span5">
                    <div style="line-height: 2.0em; padding-left: 30px; padding-right: 30px" >

                      <span style="font-size: 14pt;"><strong>선택 식순</strong></span>
                      <div id="showSchedule">
                      </div>
                    </div>

                    <div class="widget">
                      <div class="solidline"></div>
                    </div>


                    <div id="plangoods" style="line-height: 2.3em; padding-left: 30px; padding-right: 30px">
                      <span style="font-size: 14pt;"><strong>식순 옵션</strong></span>
                      <c:forEach var="plangood" items="${pgList}">
                        <c:forEach var="goods" items="${goodsList}">
                          <c:if test="${plangood.goodsName eq goods.name}">
                            <p price='${goods.price * plangood.amount}'>
                            ${plangood.goodsName} (&#8361;${goods.price}) * ${plangood.amount}개<span
                            style="float: right;">&#8361;${goods.price * plangood.amount}</span>
                            </p>  
                          </c:if>
                        </c:forEach>
                      </c:forEach>
                    </div>
                    <div class="widget">
                      <div class="solidline"></div>
                    </div>
                    <div
                      style="line-height: 2.0em; padding-left: 30px; padding-right: 30px">
                      <b style="font-size: 14pt;">식순 견적 금액 </b><b
                        style="font-size: 30pt;"><span
                        style="float: right;" name='comma'>${ePlan.eventSum}</span></b>
                    </div>
                  </div>

                  <!-- 탭 오른쪽 부분 -->
                  <div class="span5">
                    <div
                      style="line-height: 2.0em; padding-left: 30px; padding-right: 30px">

                      <span style="font-size: 14pt;"><strong>옵션
                          선택</strong></span>
                      <p>
                        사회자<span style="float: right;"></span>
                      </p>
                        <c:choose>
                          <c:when test="${mc.name eq null}">
                            <p>&nbsp;&nbsp;&nbsp;-&nbsp;&nbsp;&nbsp;선택 안함<span style='float: right;'>&#8361;0</span></p>
                          </c:when>
                          <c:otherwise>
                            <p>&nbsp;&nbsp;&nbsp;-&nbsp;&nbsp;&nbsp;${mc.name } 이상 경력 사회자 <span style="float: right;">&#8361;${mc.price }</span></p>
                          </c:otherwise>
                        </c:choose>
                      <p>
                        무대<span style="float: right;"></span>
                      </p>
                        <c:choose>
                          <c:when test="${stage.name eq null}">
                            <p>&nbsp;&nbsp;&nbsp;-&nbsp;&nbsp;&nbsp;선택 안함<span style='float: right;'>&#8361;0</span></p>
                          </c:when>
                          <c:otherwise>
                            <p>&nbsp;&nbsp;&nbsp;-&nbsp;&nbsp;&nbsp;${stage.name } 이하 규모 <span style="float: right;">&#8361;${stage.price }</span></p>
                          </c:otherwise>
                        </c:choose>
                      <p>
                        조명<span style="float: right;"></span>
                      </p>
                        <c:choose>
                          <c:when test="${light.name eq null}">
                            <p>&nbsp;&nbsp;&nbsp;-&nbsp;&nbsp;&nbsp;선택 안함<span style='float: right;'>&#8361;0</span></p>
                          </c:when>
                          <c:otherwise>
                            <p>&nbsp;&nbsp;&nbsp;-&nbsp;&nbsp;&nbsp;${light.name } 이하 규모 <span style="float: right;">&#8361;${light.price }</span></p>
                          </c:otherwise>
                        </c:choose>
                      <p>
                        음향<span style="float: right;"></span>
                      </p>
                        <c:choose>
                          <c:when test="${sound.name eq null}">
                            <p>&nbsp;&nbsp;&nbsp;-&nbsp;&nbsp;&nbsp;선택 안함<span style='float: right;'>&#8361;0</span></p>
                          </c:when>
                          <c:otherwise>
                            <p>&nbsp;&nbsp;&nbsp;-&nbsp;&nbsp;&nbsp;${sound.name } 이하 규모 <span style="float: right;">&#8361;${sound.price }</span></p>
                          </c:otherwise>
                        </c:choose>
                      <p>
                        스태프<span style="float: right;"></span>
                      </p>
                        <c:choose>
                          <c:when test="${staff.name eq null}">
                            <p>&nbsp;&nbsp;&nbsp;-&nbsp;&nbsp;&nbsp;선택 안함<span style='float: right;'>&#8361;0</span></p>
                          </c:when>
                          <c:otherwise>
                            <p>&nbsp;&nbsp;&nbsp;-&nbsp;&nbsp;&nbsp;${staff.name } 이하 규모 <span style="float: right;">&#8361;${staff.price }</span></p>
                          </c:otherwise>
                        </c:choose>
                    </div>


                    <div class="widget">
                      <div class="solidline"></div>
                    </div>

                    <div
                      style="line-height: 2.0em; padding-left: 30px; padding-right: 30px">
                      <b style="font-size: 14pt;">옵션 견적 금액 </b><b
                        style="font-size: 30pt;"><span
                        style="float: right;" name='comma'>${ePlan.optionSum }</span></b>
                    </div>
                  </div>
                </div>
              </div>
            </div>

            <div class="row">
              <div style="text-align: right;">
                  <input type="button" class="btn btn-square btn-theme"
                  style="border-radius: 10px" value='목록' onclick="location.href='/member/myPage?id=<%=member.getId() %>'">
              </div>
            </div>

          </div>
        </div>
      </div>
    </section>
    
   <jsp:include page="/WEB-INF/views/include/footer.jsp"/>

</body>

</html>
