<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<title>Flattern - Flat and trendy bootstrap site template</title>
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

</head>

<body>

   <jsp:include page="/WEB-INF/views/include/header.jsp"/>
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
              <li><a href="#">Features</a><i
                class="icon-angle-right"></i></li>
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

                        <!-- 
                        <div class="control-group">

                          <div class="controls"
                            style="margin-left: 125px;">
                            <input type="text" id=""
                              placeholder="원하는 식순을 입력하세요."
                              style="border-radius: 10px;">
                            <button class="btn btn-square btn-theme"
                              style="border-radius: 10px;">검색</button>
                          </div>

                        </div>
                         -->


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

                          <!-- 
                          <div class="controls"
                            style="margin-left: 125px;">
                            <input type="text" id=""
                              placeholder="식순 직접 입력"
                              style="border-radius: 10px;">
                            <button class="btn btn-square btn-theme"
                              style="border-radius: 10px;">직접추가</button>
                          </div>
                          
                           -->

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
                        href="#collapseOne"> <i class="icon-plus"></i>
                        사회자
                      </a>
                    </div>
                    <div id="collapseOne"
                      class="accordion-body collapse in">
                      <div class="accordion-inner">

                        <input type="checkbox" name="" value="" checked>
                        8년 이상 경력 사회자 <br> <input type="checkbox"
                          name="fruits" value=""> 5년 이상 경력 사회자 <br>
                        <input type="checkbox" name="fruits" value="">
                        8년 이상 경력 레크리에이션 사회자 <br> <input
                          type="checkbox" name="fruits" value="">
                        5년 이상 경력 레크리에이션 사회자 <br>

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
                        <input type="checkbox" name="" value="" checked>
                        100명 이하 규모 <br> <input type="checkbox"
                          name="fruits" value=""> 500명 이하 규모 <br>
                        <input type="checkbox" name="fruits" value="">
                        1000명 이하 규모 <br> <input type="checkbox"
                          name="fruits" value=""> 2000명 이하 규모 <br>
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
                        <input type="checkbox" name="" value="" checked>
                        50명 이하 규모 (LED Par 8대 + Dimmer) <br> <input
                          type="checkbox" name="fruits" value="">
                        100명 이하 규모 (Moving 4대 + LED Par 8대 + Console) <br>
                        <input type="checkbox" name="fruits" value="">
                        500명 이하 규모 (Moving Set 20대 + Console)<br> <input
                          type="checkbox" name="fruits" value="">
                        2000명 이하 규모 <br>
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
                    <div id="collapseTwo"
                      class="accordion-body collapse">
                      <div class="accordion-inner">
                        <input type="checkbox" name="" value="" checked>
                        100명 이하 규모 <br> <input type="checkbox"
                          name="fruits" value=""> 500명 이하 규모 <br>
                        <input type="checkbox" name="fruits" value="">
                        1000명 이하 규모 <br> <input type="checkbox"
                          name="fruits" value=""> 2000명 이하 규모 <br>

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
                        <input type="checkbox" name="" value="" checked>
                        100명 이하 규모 <br> <input type="checkbox"
                          name="fruits" value=""> 500명 이하 규모 <br>
                        <input type="checkbox" name="fruits" value="">
                        1000명 이하 규모 <br> <input type="checkbox"
                          name="fruits" value=""> 2000명 이하 규모 <br>
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

                <ul class="nav nav-tabs">
                  <li class="active"><a href="#one"
                    data-toggle="tab"><i class="icon-briefcase"></i>
                      Day-1</a></li>
                  <li><a href="#two" data-toggle="tab">Day-2</a></li>
                  <li><a href="#three" data-toggle="tab">Day-3</a></li>
                  <li><a href="#three" data-toggle="tab">Day-4</a></li>
                  <li><a href="#three" data-toggle="tab">Day-5</a></li>
                  <li><a href="#three" data-toggle="tab">Day-6</a></li>
                  <li><a href="#three" data-toggle="tab">Day-7</a></li>
                </ul>
                <div class="tab-content">
                  <!-- 첫번째 탭 -->
                  <div class="tab-pane active" id="one">

                    <div
                      style="line-height: 2.0em; padding-left: 30px; padding-right: 30px">

                      <span style="font-size: 14pt;"><strong>옵션
                          선택</strong></span>
                      <p>
                        사회자<span style="float: right;"></span>
                      </p>
                      <p>
                        &nbsp;&nbsp;&nbsp;-&nbsp;&nbsp;&nbsp;8년 이상 경력
                        사회자 <span style="float: right;">&#8361;100,000
                          <input type="checkbox" name="" value=""
                          checked>
                        </span>
                      </p>
                      <p>
                        무대<span style="float: right;"></span>
                      </p>
                      <p>
                        &nbsp;&nbsp;&nbsp;-&nbsp;&nbsp;&nbsp;100명 이하 규모
                        <span style="float: right;">&#8361;100,000
                          <input type="checkbox" name="" value=""
                          checked>
                        </span>
                      </p>
                      <p>
                        조명<span style="float: right;"></span>
                      </p>
                      <p>
                        &nbsp;&nbsp;&nbsp;-&nbsp;&nbsp;&nbsp;500명 이하 규모
                        (Moving Set 20대 + Console) <span
                          style="float: right;">&#8361;100,000 <input
                          type="checkbox" name="" value="" checked></span>
                      </p>
                      <p>
                        음향<span style="float: right;"></span>
                      </p>
                      <p>
                        &nbsp;&nbsp;&nbsp;-&nbsp;&nbsp;&nbsp;2000명 이하 규모
                        <span style="float: right;">&#8361;100,000
                          <input type="checkbox" name="" value=""
                          checked>
                        </span>
                      </p>
                      <p>
                        스태프<span style="float: right;"></span>
                      </p>
                      <p>
                        &nbsp;&nbsp;&nbsp;-&nbsp;&nbsp;&nbsp;2000명 이하 규모
                        <span style="float: right;">&#8361;100,000
                          <input type="checkbox" name="" value=""
                          checked>
                        </span>
                      </p>
                    </div>


                    <div class="widget">
                      <div class="solidline"></div>
                    </div>

                    <div
                      style="line-height: 2.0em; padding-left: 30px; padding-right: 30px">
                      <b style="font-size: 15pt;">총 견적 금액 </b><b
                        style="font-size: 35pt;"><span
                        style="float: right;"><strong>300,000,000원</strong></span></b>
                    </div>
                  </div>



                  <!-- 두번째 탭 -->
                  <div class="tab-pane" id="two">

                    <div
                      style="line-height: 2.0em; padding-left: 30px; padding-right: 30px">

                      <div class="widget">

                        <form class="form-search">
                          <span class="category"> 예상인원&emsp; <input
                            placeholder="인원 (명)" type="text"
                            class="input-medium search-query"
                            style="border-radius: 10px; width: 70px;">
                          </span> <span class="category" style="">&emsp;설&emsp;&emsp;&emsp;정&emsp;

                            <button class="btn btn-square btn-theme"
                              style="border-radius: 10px; width: 85px">추천옵션</button>&nbsp;&nbsp;&nbsp;
                            <button class="btn btn-square btn-theme"
                              style="border-radius: 10px; width: 85px">설정저장</button>

                          </span>
                        </form>
                      </div>
                    </div>

                    <div class="widget">
                      <div class="solidline"></div>
                    </div>



                    <div
                      style="line-height: 2.0em; padding-left: 30px; padding-right: 30px">




                      <span style="font-size: 14pt;"><strong>선택
                          식순</strong></span>
                      <p>사회자</p>
                      <p>
                        &nbsp;&nbsp;&nbsp;-&nbsp;&nbsp;&nbsp;8년 이상 경력
                        사회자<span style="float: right;">30분</span>
                      </p>
                      <p>
                        &nbsp;&nbsp;&nbsp;-&nbsp;&nbsp;&nbsp;복면 가왕<span
                          style="float: right;">25분</span>
                      </p>
                      <p>
                        &nbsp;&nbsp;&nbsp;-&nbsp;&nbsp;&nbsp;공 돌리기<span
                          style="float: right;">25분</span>
                      </p>
                      <p>
                        퇴장<span style="float: right;">5분</span>
                      </p>
                    </div>


                    <div class="widget">
                      <div class="solidline"></div>
                    </div>


                    <div
                      style="line-height: 2.3em; padding-left: 30px; padding-right: 30px">
                      <span style="font-size: 14pt;"><strong>식순
                          옵션</strong></span>
                      <p>
                        도전 골든벨 - 스케치북 (&#8361;5,000) * 50개<span
                          style="float: right;">&#8361;250,000<i
                          class="icon-remove"></i></span>
                      </p>
                      <p>
                        도전 골든벨 - 보드마카 (&#8361;300) * 50개<span
                          style="float: right;">&#8361;15,000<i
                          class="icon-remove"></i></span>
                      </p>
                      <p>
                        도전 골든벨 - 골든벨 (&#8361;300,000) * 1개<span
                          style="float: right;">&#8361;300,000<i
                          class="icon-remove"></i></span>
                      </p>
                      <p>
                        복면가왕 - 복면 (&#8361;5000) * 20개<span
                          style="float: right;">&#8361;100,000<i
                          class="icon-remove"></i></span>
                      </p>
                      <p>
                        물풍선 던지기 - 풍선 (&#8361;200) * 1개<span
                          style="float: right;">&#8361;200<i
                          class="icon-remove"></i></span>
                      </p>
                    </div>


                    <div class="widget">
                      <div class="solidline"></div>
                    </div>
                    <div
                      style="line-height: 2.0em; padding-left: 30px; padding-right: 30px">
                      <b style="font-size: 15pt;">총 견적 금액 </b><b
                        style="font-size: 35pt;"><span
                        style="float: right;"><strong>300,000,000원</strong></span></b>
                    </div>
                  </div>

                  <!-- -----------------------------------------------------------------둘째 날 탭 끝 -->





                  <div class="tab-pane" id="two">
                    <p>Tale dolor mea ex, te enim assum suscipit
                      cum, vix aliquid omittantur in. Duo eu cibo
                      dolorum menandri, nam sumo dicit admodum ei. Ne
                      mazim commune honestatis cum, mentitum phaedrum
                      sit et.</p>
                  </div>
                  <div class="tab-pane" id="three">
                    <p>Tale dolor mea ex, te enim assum suscipit
                      cum, vix aliquid omittantur in. Duo eu cibo
                      dolorum menandri, nam sumo dicit admodum ei. Ne
                      mazim commune honestatis cum, mentitum phaedrum
                      sit et.</p>
                  </div>
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
                  style="border-radius: 10px">다음</button>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
   <jsp:include page="/WEB-INF/views/include/footer.jsp"/>

</body>

</html>
