<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<title>옵션선택</title>
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

<!-- 드로그 앤 드롭 -->
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
<<<<<<< HEAD
	var sum = 0;
	var mcprice = 0, stageprice = 0, lightprice = 0, staffprice = 0, soundprice = 0;
	function handleClick(myRadio) {
		if (myRadio.name == 'mcGroup') {
			if (myRadio.value == 'no') {
				$("#selectMc")
						.html(
								"&nbsp;&nbsp;&nbsp;-&nbsp;&nbsp;&nbsp;선택 안함<span style='float: right;'>&#8361;0</span>");
				mcprice = 0;
			} else {
				var beforStr = myRadio.value;
				var afterStr = beforStr.split('$$');
				$("#selectMc").html(
						"&nbsp;&nbsp;&nbsp;-&nbsp;&nbsp;&nbsp;" + afterStr[0]
								+ " 경력 사회자<span style='float: right;'>&#8361;"
								+ setComma(afterStr[1]) + "</span>");
				mcprice = afterStr[1];
			}
		} else if (myRadio.name == 'stageGroup') {
			if (myRadio.value == 'no') {
				$("#selectStage")
						.html(
								"&nbsp;&nbsp;&nbsp;-&nbsp;&nbsp;&nbsp;선택 안함<span style='float: right;'>&#8361;0</span>");
				stageprice = 0;
			} else {
				var beforStr = myRadio.value;
				var afterStr = beforStr.split('$$');
				$("#selectStage")
						.html(
								"&nbsp;&nbsp;&nbsp;-&nbsp;&nbsp;&nbsp;"
										+ afterStr[0]
										+ " 이하 규모 지원<span style='float: right;'>&#8361;"
										+ setComma(afterStr[1]) + "</span>");
				stageprice = afterStr[1];
			}
		} else if (myRadio.name == 'lightGroup') {
			if (myRadio.value == 'no') {
				$("#selectLight")
						.html(
								"&nbsp;&nbsp;&nbsp;-&nbsp;&nbsp;&nbsp;선택 안함<span style='float: right;'>&#8361;0</span>");
				lightprice = 0;
			} else {
				var beforStr = myRadio.value;
				var afterStr = beforStr.split('$$');
				$("#selectLight")
						.html(
								"&nbsp;&nbsp;&nbsp;-&nbsp;&nbsp;&nbsp;"
										+ afterStr[0]
										+ " 이하 규모 지원<span style='float: right;'>&#8361;"
										+ setComma(afterStr[1]) + "</span>");
				lightprice = afterStr[1];
			}
		} else if (myRadio.name == 'soundGroup') {
			if (myRadio.value == 'no') {
				$("#selectSound")
						.html(
								"&nbsp;&nbsp;&nbsp;-&nbsp;&nbsp;&nbsp;선택 안함<span style='float: right;'>&#8361;0</span>");
				soundprice = 0
			} else {
				var beforStr = myRadio.value;
				var afterStr = beforStr.split('$$');
				$("#selectSound")
						.html(
								"&nbsp;&nbsp;&nbsp;-&nbsp;&nbsp;&nbsp;"
										+ afterStr[0]
										+ " 이하 규모 지원<span style='float: right;'>&#8361;"
										+ setComma(afterStr[1]) + "</span>");
				soundprice = afterStr[1];
			}
		} else {
			if (myRadio.value == 'no') {
				$("#selectStaff")
						.html(
								"&nbsp;&nbsp;&nbsp;-&nbsp;&nbsp;&nbsp;선택 안함<span style='float: right;'>&#8361;0</span>");
				staffprice = 0;
			} else {
				var beforStr = myRadio.value;
				var afterStr = beforStr.split('$$');
				$("#selectStaff")
						.html(
								"&nbsp;&nbsp;&nbsp;-&nbsp;&nbsp;&nbsp;"
										+ afterStr[0]
										+ " 이하 규모 지원<span style='float: right;'>&#8361;"
										+ setComma(afterStr[1]) + "</span>");
				staffprice = afterStr[1];
			}
		}
		sum = Number(mcprice) + Number(stageprice) + Number(soundprice)
				+ Number(lightprice) + Number(staffprice);
		$("#price").html(setComma(sum) + "원");

	}
	
	/** 다음버튼 눌렀을때 실행되는 액션 */
	function postForm() {
		
		$("#mc").val($("input[name=mcGroup]:checked").val());
		$("#stage").val($("input[name=stageGroup]:checked").val());
		$("#light").val($("input[name=lightGroup]:checked").val());
		$("#sound").val($("input[name=soundGroup]:checked").val());
		$("#staff").val($("input[name=staffGroup]:checked").val());
		$("#price").val(sum);
		
		$("#myForm").submit();
	}
=======
var sum=0;
var mcprice=0,stageprice=0,lightprice=0,staffprice=0,soundprice=0;
function handleClick(myRadio) {
    if(myRadio.name == 'mcGroup'){
    	if(myRadio.value == 'no'){
    		$("#selectMc").html("&nbsp;&nbsp;&nbsp;-&nbsp;&nbsp;&nbsp;선택 안함<span style='float: right;'>&#8361;0</span>");
    		mcprice = 0;
    	}else{
    		var beforStr = myRadio.value;
    		var afterStr = beforStr.split('$$');
    		$("#selectMc").html("&nbsp;&nbsp;&nbsp;-&nbsp;&nbsp;&nbsp;"+afterStr[0]+" 경력 사회자<span style='float: right;'>&#8361;"+setComma(afterStr[1])+"</span>");
    		mcprice = afterStr[1];
    	}
    }else if(myRadio.name == 'stageGroup'){
    	if(myRadio.value == 'no'){
    		$("#selectStage").html("&nbsp;&nbsp;&nbsp;-&nbsp;&nbsp;&nbsp;선택 안함<span style='float: right;'>&#8361;0</span>");
    		stageprice = 0;
    	}else{
    		var beforStr = myRadio.value;
    		var afterStr = beforStr.split('$$');
    		$("#selectStage").html("&nbsp;&nbsp;&nbsp;-&nbsp;&nbsp;&nbsp;"+afterStr[0]+" 이하 규모 지원<span style='float: right;'>&#8361;"+setComma(afterStr[1])+"</span>");
    		stageprice = afterStr[1];
    	}
    }else if(myRadio.name == 'lightGroup'){
    	if(myRadio.value == 'no'){
    		$("#selectLight").html("&nbsp;&nbsp;&nbsp;-&nbsp;&nbsp;&nbsp;선택 안함<span style='float: right;'>&#8361;0</span>");
    		lightprice = 0;
    	}else{
    		var beforStr = myRadio.value;
    		var afterStr = beforStr.split('$$');
    		$("#selectLight").html("&nbsp;&nbsp;&nbsp;-&nbsp;&nbsp;&nbsp;"+afterStr[0]+" 이하 규모 지원<span style='float: right;'>&#8361;"+setComma(afterStr[1])+"</span>");
    		lightprice = afterStr[1];
    	}
    }else if(myRadio.name == 'soundGroup'){
    	if(myRadio.value == 'no'){
    		$("#selectSound").html("&nbsp;&nbsp;&nbsp;-&nbsp;&nbsp;&nbsp;선택 안함<span style='float: right;'>&#8361;0</span>");
    		soundprice = 0
    	}else{
    		var beforStr = myRadio.value;
    		var afterStr = beforStr.split('$$');
    		$("#selectSound").html("&nbsp;&nbsp;&nbsp;-&nbsp;&nbsp;&nbsp;"+afterStr[0]+" 이하 규모 지원<span style='float: right;'>&#8361;"+setComma(afterStr[1])+"</span>");
    		soundprice = afterStr[1];	
    	}
    }else{
    	if(myRadio.value == 'no'){
    		$("#selectStaff").html("&nbsp;&nbsp;&nbsp;-&nbsp;&nbsp;&nbsp;선택 안함<span style='float: right;'>&#8361;0</span>");
    		staffprice = 0;
    	}else{
    		var beforStr = myRadio.value;
    		var afterStr = beforStr.split('$$');
    		$("#selectStaff").html("&nbsp;&nbsp;&nbsp;-&nbsp;&nbsp;&nbsp;"+afterStr[0]+" 이하 규모 지원<span style='float: right;'>&#8361;"+setComma(afterStr[1])+"</span>");
    		staffprice = afterStr[1];
    	}
    }
    sum = Number(mcprice) + Number(stageprice) + Number(soundprice) + Number(lightprice) + Number(staffprice);
    $("#price").html(setComma(sum)+"원");
    console.log($("input[name=mcGroup]:checked").val());
}
>>>>>>> branch 'master' of https://github.com/haejun0317/partyplanner.git
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

  <jsp:include page="/WEB-INF/views/include/header.jsp" />
  <!-- end header -->

  <section id="inner-headline">
    <div class="container">
      <div class="row">
        <div class="span4">
          <div class="inner-heading">
            <h2>행사기획</h2>
          </div>
        </div>
        <div class="span8">
          <ul class="breadcrumb">
            <li><a href="#"><i class="icon-home"></i></a><i
              class="icon-angle-right"></i></li>
            <li><a href="#">Features</a><i class="icon-angle-right"></i></li>
            <li class="active">Components</li>
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

              <table class="table table-striped">
                <thead>
                  <tr>
                    <td style="padding: 0px; vertical-align: top;">
                      <div class="btn-group">
                        <button class="btn btn-square btn-theme"
                          style="border-radius: 10px;">01 식순</button>
                        <button class="btn btn-square btn-theme"
                          style="background-color: #18191a; border-color: #18191a; border-radius: 10px;">02
                          옵션</button>
                      </div>
                    </td>

                  </tr>
                </thead>

              </table>



              <!-- 드로그앤 드롭 / 테스트 -->

              <h5>
                <strong>옵션</strong>선택
                <!-- 검색 modal★ -->
                <a href="#discountModal" data-toggle="modal"
                  style="float: right; font-size: 15pt"><i
                  class="icon-ok"></i>할인 안내</a>

                <!-- 검색 modal★ -->
                <div id="discountModal" class="modal styled hide fade"
                  tabindex="-1" role="dialog"
                  aria-labelledby="mySignupModalLabel"
                  aria-hidden="true">
                  <div class="modal-header">
                    <button type="button" class="close"
                      data-dismiss="modal" aria-hidden="true">×</button>
                    <h4 id="mySignupModalLabel">
                      Party <strong>Discount</strong>
                    </h4>
                  </div>
                  <div class="modal-body">
                    <form class="form-horizontal">
                      <table class="table table-striped"
                        style="font-size: 13px;">
                        <thead>
                          <tr>
                            <th width="10%">#</th>
                            <th width="50%">이름</th>
                            <th width="20%">시간</th>
                            <th width="20%"></th>
                          </tr>
                        </thead>
                        <tbody>
                          <tr>
                            <td>1</td>
                            <td>입장</td>
                            <td>5분</td>
                            <td>
                              <button type="submit"
                                class="btn btn-square btn-theme"
                                style="border-radius: 10px;">추가</button>
                            </td>
                          </tr>
                          <tr>
                            <td>2</td>
                            <td>공 던지기</td>
                            <td>60분</td>
                            <td>
                              <button type="submit"
                                class="btn btn-square btn-theme"
                                style="border-radius: 10px">추가</button>
                            </td>
                          </tr>
                          <tr>
                            <td>3</td>
                            <td>골든 벨</td>
                            <td>60분</td>
                            <td>
                              <button type="submit"
                                class="btn btn-square btn-theme"
                                style="border-radius: 10px">추가</button>
                            </td>
                          </tr>
                        </tbody>
                      </table>
                      <div class="control-group">
                        <p class="aligncenter margintop20"
                          style="font-size: 18px">
                          행사 기획은 <strong>Party Planner</strong> 와 함께
                      </div>
                    </form>
                  </div>
                </div>
              </h5>
              <!-- start: Accordion -->
              <div class="accordion" id="accordion2">
                <div class="accordion-group">
                  <div class="accordion-heading">
                    <a class="accordion-toggle" data-toggle="collapse"
                      href="#collapseOne"> <i class="icon-minus"></i>
                      사회자
                    </a>
                  </div>
                  <div id="collapseOne"
                    class="accordion-body collapse in">
                    <div class="accordion-inner">
                      <input type="radio" name="mcGroup" value="no"
                        onchange="handleClick(this)" checked>선택
                      안함 <br>
                      <c:forEach items="${mcList}" var="mc">
                        <input type="radio" name="mcGroup"
                          value="${mc.name}$$${mc.price}"
                          onchange="handleClick(this)"> ${mc.name} 경력 사회자 <strong>(+${mc.price })</strong>
                        <br>
                      </c:forEach>
                    </div>
                  </div>
                </div>

                <div class="accordion-group">
                  <div class="accordion-heading">
                    <a class="accordion-toggle" data-toggle="collapse"
                      href="#collapse2"> <i class="icon-plus"></i>
                      무대
                    </a>
                  </div>
                  <div id="collapse2" class="accordion-body collapse">
                    <div class="accordion-inner">
                      <input type="radio" name="stageGroup" value="no"
                        onchange="handleClick(this)" checked>선택
                      안함 <br>
                      <c:forEach items="${stageList}" var="stage">
                        <input type="radio" name="stageGroup"
                          value="${stage.name}$$${stage.price}"
                          onchange="handleClick(this)"> ${stage.name} 이하 규모 지원 <strong>(+${stage.price })</strong>
                        <br>
                      </c:forEach>
                    </div>
                  </div>
                </div>
                <div class="accordion-group">
                  <div class="accordion-heading">
                    <a class="accordion-toggle" data-toggle="collapse"
                      href="#collapse3"> <i class="icon-plus"></i>
                      조명
                    </a>
                  </div>
                  <div id="collapse3" class="accordion-body collapse">
                    <div class="accordion-inner">
                      <input type="radio" name="lightGroup" value="no"
                        onchange="handleClick(this)" checked>선택
                      안함 <br>
                      <c:forEach items="${lightList}" var="light">
                        <input type="radio" name="lightGroup"
                          value="${light.name}$$${light.price}"
                          onchange="handleClick(this)"> ${light.name} 이하 규모 지원 <strong>(+${light.price })</strong>
                        <br>
                      </c:forEach>
                    </div>
                  </div>
                </div>
                <div class="accordion-group">
                  <div class="accordion-heading">
                    <a class="accordion-toggle" data-toggle="collapse"
                      href="#collapseTwo"> <i class="icon-plus"></i>
                      음향
                    </a>
                  </div>
                  <div id="collapseTwo" class="accordion-body collapse">
                    <div class="accordion-inner">
                      <input type="radio" name="soundGroup" value="no"
                        onchange="handleClick(this)" checked>선택
                      안함 <br>
                      <c:forEach items="${soundList}" var="sound">
                        <input type="radio" name="soundGroup"
                          value="${sound.name}$$${sound.price}"
                          onchange="handleClick(this)"> ${sound.name} 이하 규모 지원 <strong>(+${sound.price })</strong>
                        <br>
                      </c:forEach>
                    </div>
                  </div>
                </div>
                <div class="accordion-group">
                  <div class="accordion-heading">
                    <a class="accordion-toggle" data-toggle="collapse"
                      href="#collapseThree"> <i class="icon-plus"></i>
                      스태프
                    </a>
                  </div>
                  <div id="collapseThree"
                    class="accordion-body collapse">
                    <div class="accordion-inner">
                      <input type="radio" name="staffGroup" value="no"
                        onchange="handleClick(this)" checked>선택
                      안함 <br>
                      <c:forEach items="${staffList}" var="staff">
                        <input type="radio" name="staffGroup"
                          value="${staff.name}$$${staff.price}"
                          onchange="handleClick(this)"> ${staff.name} 이하 규모 지원 <strong>(+${staff.price })</strong>
                        <br>
                      </c:forEach>
                    </div>
                  </div>
                </div>
              </div>
              <!--end: Accordion -->
            </div>
            <div class="span6">
              <div class="widget">
                <form class="form-search">
                  <span class="category">
                    &emsp;인&emsp;&emsp;원&emsp; <input
                    placeholder="예상 인원 (명)" type="text"
                    class="input-medium search-query"
                    style="border-radius: 10px; width: 100px;">
                  </span> <span class="category" style="">&emsp;설&emsp;&emsp;정&emsp;

                    <button class="btn btn-square btn-theme"
                      style="border-radius: 10px; width: 108px">추천옵션설정</button>&emsp;
                    <button class="btn btn-square btn-theme"
                      style="border-radius: 10px; width: 108px">전체동일설정</button>
                  </span>
                </form>
              </div>
              <div class="widget">
                <div class="solidline"></div>
              </div>

              <div
                style="line-height: 2.0em; padding-left: 30px; padding-right: 30px">

                <span style="font-size: 14pt;"><strong>옵션
                    선택</strong></span>
                <p>사회자</p>
                <p id="selectMc"></p>
                <p>무대</p>
                <p id="selectStage"></p>
                <p>조명</p>
                <p id="selectLight"></p>
                <p>음향</p>
                <p id="selectSound"></p>
                <p>스태프</p>
                <p id="selectStaff"></p>
              </div>

              <div class="widget">
                <div class="solidline"></div>
              </div>

              <div
                style="line-height: 2.0em; padding-left: 30px; padding-right: 30px">
                <b style="font-size: 15pt;">총 견적 금액 </b><b
                  style="font-size: 35pt;"><span
                  style="float: right;" id="price">0원</span></b>
              </div>


              <!-- end divider -->
            </div>
          </div>

          <div class="widget">
            <div class="solidline"></div>
          </div>


          <!-- end span12 -->
          <div class="row">
            <div style="text-align: right;">
              <button type="submit" class="btn btn-square btn-theme"
                style="border-radius: 10px">이전</button>
              <button type="submit" class="btn btn-square btn-theme"
                style="border-radius: 10px"  onclick="postForm()">다음</button>

              <form action="plan" method="post" id="myForm">
                <input type="hidden" value="" id="mc" name="mc">
                <input type="hidden" value="" id="stage" name="stage">
                <input type="hidden" value="" id="light" name="light">
                <input type="hidden" value="" id="sound" name="sound">
                <input type="hidden" value="" id="staff" name="staff">
                <input type="hidden" value="" id="sum" name="sum">
              </form>
              
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  <jsp:include page="/WEB-INF/views/include/footer.jsp" />

</body>

</html>