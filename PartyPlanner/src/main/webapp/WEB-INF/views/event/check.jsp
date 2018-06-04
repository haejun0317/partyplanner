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

                <h4>
                  <strong style="color: #ff3300;">행사</strong> 내용
                </h4>

                <div class="widget">
                  <div class="solidline"></div>
                </div>

                <form class="form-search">
                  <span class="category">장&emsp;&emsp;소&emsp; <label>들어가기</label>
                  </span>
                </form>

                <form class="form-search">
                  <span class="category">인&emsp;&emsp;원&emsp; <label>들어가기</label>
                  </span> <span class="category">&emsp;예상시간&emsp; <label>들어가기</label>
                  </span>
                </form>

                <form class="form-search">
                  <span class="category" style="text-align: left;">파티시작일
                    <label>들어가기</label> ~ <label>들어가기</label>
                  </span>
                </form>

              </div>
              <div class="span6">
                <h4>
                  <strong style="color: #ff3300;">견적</strong> 내용
                </h4>

                <div class="widget">
                  <div class="solidline"></div>
                </div>

                <form class="form-search">
                  <span class="category">식순옵션가격&emsp;&emsp;&emsp;&emsp; <label>100,000,000원</label>
                  </span>
                </form>

                <form class="form-search">
                  <span class="category">선택옵션가격&emsp;&emsp;&emsp;&emsp; <label>100,000,000원</label>
                  </span>
                </form>

                <form class="form-search">
                  <span class="category">합&nbsp;&nbsp;계&emsp;금&nbsp;&nbsp;액&emsp;&emsp;&emsp;&emsp; <label>100,000,000원</label>
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
              <ul class="nav nav-tabs">
                <li class="active"><a href="#one" data-toggle="tab"><i
                    class="icon-briefcase"></i> Day-1</a></li>
                <li><a href="#two" data-toggle="tab">Day-2</a></li>
                <li><a href="#three" data-toggle="tab">Day-3</a></li>
                <li><a href="#four" data-toggle="tab">Day-4</a></li>
                <li><a href="#five" data-toggle="tab">Day-5</a></li>
                <li><a href="#six" data-toggle="tab">Day-6</a></li>
                <li><a href="#seven" data-toggle="tab">Day-7</a></li>
              </ul>


              <div class="tab-content">
                <!-- 첫번째 탭 -->
                <div class="tab-pane active" id="one">

                  <!-- 탭 왼쪽 부분 -->
                  <div class="span5">
                    <div
                      style="line-height: 2.0em; padding-left: 30px; padding-right: 30px">

                      <span style="font-size: 14pt;"><strong>선택
                          식순</strong></span>
                      <p>
                        입장<span style="float: right;">5분</span>
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

                    </div>


                    <div class="widget">
                      <div class="solidline"></div>
                    </div>
                    <div
                      style="line-height: 2.0em; padding-left: 30px; padding-right: 30px">
                      <b style="font-size: 14pt;">식순 견적 금액 </b><b
                        style="font-size: 30pt;"><span
                        style="float: right;"><strong>10,000,000원</strong></span></b>
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
                          type="checkbox" name="" value="" checked>
                        </span>
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
                      <b style="font-size: 14pt;">옵션 견적 금액 </b><b
                        style="font-size: 30pt;"><span
                        style="float: right;"><strong>10,000,000원</strong></span></b>
                    </div>
                  </div>

                </div>


                <!-- 두번째 탭 -->
                <div class="tab-pane" id="two">

                  <!-- 탭 왼쪽 부분 -->
                  <div class="span6">ㄲ</div>
                  <!-- 탭 오른쪽 부분 -->
                  <div class="span5">ㄲ</div>

                </div>


                <!-- 세번째 탭 -->
                <div class="tab-pane" id="three">
                  <!-- 탭 왼쪽 부분 -->
                  <div class="span6">ㄲ</div>
                  <!-- 탭 오른쪽 부분 -->
                  <div class="span5">ㄲ</div>
                </div>


                <!-- 네번째 탭 -->
                <div class="tab-pane" id="four">
                  <!-- 탭 왼쪽 부분 -->
                  <div class="span6">ㄲ</div>
                  <!-- 탭 오른쪽 부분 -->
                  <div class="span5">ㄲ</div>
                </div>


                <!-- 다섯번째 탭 -->
                <div class="tab-pane" id="five">
                  <!-- 탭 왼쪽 부분 -->
                  <div class="span6">ㄲ</div>
                  <!-- 탭 오른쪽 부분 -->
                  <div class="span5">ㄲ</div>
                </div>

                <!-- 여섯번째 탭 -->
                <div class="tab-pane" id="six">
                  <!-- 탭 왼쪽 부분 -->
                  <div class="span6">ㄲ</div>
                  <!-- 탭 오른쪽 부분 -->
                  <div class="span5">ㄲ</div>
                </div>

                <!-- 일곱번째 탭 -->
                <div class="tab-pane" id="seven">
                  <!-- 탭 왼쪽 부분 -->
                  <div class="span6">ㄲ</div>
                  <!-- 탭 오른쪽 부분 -->
                  <div class="span5">ㄲ</div>
                </div>
              </div>
            </div>

            <!-- 탭 끝 ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ -->



            <div class="row">

              <div style="text-align: right;">          
                <button type="submit" class="btn btn-square btn-theme"
                  style="border-radius: 10px">이전</button>
                <button type="submit" class="btn btn-square btn-theme"
                  style="border-radius: 10px">저장</button>
                  <button type="submit" class="btn btn-square btn-theme"
                  style="border-radius: 10px">인쇄</button>
                  <button type="submit" class="btn btn-square btn-theme"
                  style="border-radius: 10px">확인</button>
              </div>
            </div>

          </div>
        </div>
      </div>
    </section>
    
   <jsp:include page="/WEB-INF/views/include/footer.jsp"/>

</body>

</html>
