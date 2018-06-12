<%@ page contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <title>Party Planner</title>
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

</head>

<body>
    <jsp:include page="/WEB-INF/views/include/header.jsp"/>
    <section id="featured">
    
      <!-- start slider -->
      <div id="slider" class="sl-slider-wrapper demo-2">
        <div class="sl-slider">
          <!-- 메인페이지 첫번째 슬라이드 사진 -->
          <div class="sl-slide" data-orientation="horizontal" data-slice1-rotation="-25" data-slice2-rotation="-25" data-slice1-scale="2" data-slice2-scale="2">
            <div class="sl-slide-inner">
              <div class="bg-img bg-img-1">
              </div>
              <h2><strong>Party</strong> Planner</h2>
              <blockquote>
                <p>
                  Kosta Final Project.
                </p>
                <cite>Party Planner.</cite>
              </blockquote>
            </div>
          </div>
          
          <!-- 메인페이지 두번째 슬라이드 사진 -->
          <div class="sl-slide" data-orientation="vertical" data-slice1-rotation="10" data-slice2-rotation="-15" data-slice1-scale="1.5" data-slice2-scale="1.5">
            <div class="sl-slide-inner">
              <div class="bg-img bg-img-2">
              </div>
              <h2 style="color: black;"><strong>Party</strong> Planner</h2>
              <blockquote>
                <p style="color: black;">
                  Kosta Final Project.
                </p>
                <cite style="color: black;">Party Planner.</cite>
              </blockquote>
            </div>
          </div>
          
          <!-- 메인페이지 세번째 슬라이드 사진 -->
          <div class="sl-slide" data-orientation="horizontal" data-slice1-rotation="-5" data-slice2-rotation="10" data-slice1-scale="2" data-slice2-scale="1">
            <div class="sl-slide-inner">
              <div class="bg-img bg-img-5">
              </div>
              <h2><strong>Party</strong> Planner</h2>
              <blockquote>
                <p>
                  Kosta Final Project.
                </p>
                <cite>Party Planner.</cite>
              </blockquote>
            </div>
          </div>
        </div>
        
        
        <!-- /sl-slider -->
        <nav id="nav-dots" class="nav-dots">
          <span class="nav-dot-current"></span>
          <span></span>
          <span></span>
        </nav>
      </div>
      <!-- /slider-wrapper -->
      <!-- end slider -->
    </section>
    <section class="callaction">
      <div class="container">
        <div class="row">
          <div class="span12">
            <div class="big-cta">
              <div class="cta-text" style="font-family: 'Nanum Pen Script', serif; ">
                <h3>파티를 기획하고 싶으신분 <span class="highlight"><strong>무료</strong></span> 로 기획하세요!</h3>
              </div>
              <div class="cta floatright">
                <a class="btn btn-large btn-theme btn-rounded" href="/event/select">Party Plan</a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <section id="content">
      <div class="container">
        <div class="row">
          <div class="span12">
            <div class="row">
              <div class="span3">
                <div class="box aligncenter">
                  <div class="aligncenter icon">
                    <a href="/about"><i class="icon-briefcase icon-circled icon-64 active"></i></a>
                  </div>
                  <div class="text">
                    <h6>파티플래너 소개</h6>
                    <p>
                      저희는! <br>세계 최초 파티 계획 웹사이트입니다.
                    </p>
                    <a href="/about">Learn more</a>
                  </div>
                </div>
              </div>
              <div class="span3">
                <div class="box aligncenter">
                  <div class="aligncenter icon">
                    <a href="/event/select"><i class="icon-desktop icon-circled icon-64 active"></i></a>
                  </div>
                  <div class="text">
                    <h6>행사 기획</h6>
                    <p>
                      고객맞춤 행사기획 서비스가 있습니다.<br>
                      지금 기획서를 작성하세요.
                    </p>
                    <a href="/event/select">Learn more</a>
                  </div>
                </div>
              </div>
              <div class="span3">
                <div class="box aligncenter">
                  <div class="aligncenter icon">
                    <a href="/party/list"><i class="icon-beaker icon-circled icon-64 active"></i></a>
                  </div>
                  <div class="text">
                    <h6>공유 파티</h6>
                    <p>
                      회원님들의 파티를<br>등록하고 공유할 수 있습니다..
                    </p>
                    <a href="/party/list">Learn more</a>
                  </div>
                </div>
              </div>
              <div class="span3">
                <div class="box aligncenter">
                  <div class="aligncenter icon">
                    <a href="/contact/contact"><i class="icon-coffee icon-circled icon-64 active"></i></a>
                  </div>
                  <div class="text">
                    <h6>협력업체 모집</h6>
                    <p>
                      파티플래너는 항상 전문가 분들과<br>함께 할 준비가 되어 있습니다.
                    </p>
                    <a href="/contact/contact">Learn more</a>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- divider -->
        <div class="row">
          <div class="span12">
            <div class="solidline">
            </div>
          </div>
        </div>
        <!-- end divider -->
        <!-- Portfolio Projects -->
        <div class="row">
          <div class="span12">
            <h4 class="heading">Event <strong>Portfolio</strong></h4>
            <div class="row">
              <section id="projects">
                <ul id="thumbs" class="portfolio">
                  <!-- Item Project and Filter Name -->
                  <li class="item-thumbs span3 design" data-id="id-0" data-type="web">
                    <!-- Fancybox - Gallery Enabled - Title - Full Image -->
                    <a class="hover-wrap fancybox" data-fancybox-group="gallery" title="돌잔치" href="/resources/bootstrap/img/works/full/first.jpg">
                  <span class="overlay-img"></span>
                  <span class="overlay-img-thumb font-icon-plus"></span>
                  </a>
                    <!-- Thumb Image and Description -->
                    <img src="/resources/bootstrap/img/works/thumbs/image-01.jpg" alt="파티플래너에서 함께한 돌잔치 모습입니다.">
                  </li>
                  <!-- End Item Project -->
                  <!-- Item Project and Filter Name -->
                  <li class="item-thumbs span3 design" data-id="id-1" data-type="icon">
                    <!-- Fancybox - Gallery Enabled - Title - Full Image -->
                    <a class="hover-wrap fancybox" data-fancybox-group="gallery" title="송년회" href="/resources/bootstrap/img/works/full/포트폴리오1.jpg">
                  <span class="overlay-img"></span>
                  <span class="overlay-img-thumb font-icon-plus"></span>
                  </a>
                    <!-- Thumb Image and Description -->
                    <img src="/resources/bootstrap/img/works/thumbs/포트폴리오1.jpg" alt="파티플래너에서 함께한 송년회 모습입니다.">
                  </li>
                  <!-- End Item Project -->
                  <!-- Item Project and Filter Name -->
                  <li class="item-thumbs span3 photography" data-id="id-2" data-type="illustrator">
                    <!-- Fancybox - Gallery Enabled - Title - Full Image -->
                    <a class="hover-wrap fancybox" data-fancybox-group="gallery" title="결혼식" href="/resources/bootstrap/img/works/full/포트폴리오2.png">
                  <span class="overlay-img"></span>
                  <span class="overlay-img-thumb font-icon-plus"></span>
                  </a>
                    <!-- Thumb Image and Description -->
                    <img src="/resources/bootstrap/img/works/thumbs/포트폴리오2.png" alt="파티플래너에서 함께한 결혼식 모습입니다.">
                  </li>
                  <!-- End Item Project -->
                  <!-- Item Project and Filter Name -->
                  <li class="item-thumbs span3 photography" data-id="id-2" data-type="illustrator">
                    <!-- Fancybox - Gallery Enabled - Title - Full Image -->
                    <a class="hover-wrap fancybox" data-fancybox-group="gallery" title="생일파티" href="/resources/bootstrap/img/works/full/포트폴리오11.jpg">
                  <span class="overlay-img"></span>
                  <span class="overlay-img-thumb font-icon-plus"></span>
                  </a>
                    <!-- Thumb Image and Description -->
                    <img src="/resources/bootstrap/img/works/thumbs/포트폴리오11.jpg" alt="파티플래너에서 함께한 생일파티 모습입니다.">
                  </li>
                  <!-- End Item Project -->
                  <!-- Item Project and Filter Name -->
                  <li class="item-thumbs span3 photography" data-id="id-4" data-type="web">
                    <!-- Fancybox - Gallery Enabled - Title - Full Image -->
                    <a class="hover-wrap fancybox" data-fancybox-group="gallery" title="신년회" href="/resources/bootstrap/img/works/full/포트폴리오9.png">
                  <span class="overlay-img"></span>
                  <span class="overlay-img-thumb font-icon-plus"></span>
                  </a>
                    <!-- Thumb Image and Description -->
                    <img src="/resources/bootstrap/img/works/thumbs/포트폴리오9.png" alt="파티플래너에서 함께한 신년회 모습입니다.">
                  </li>
                  <!-- End Item Project -->
                  <!-- Item Project and Filter Name -->
                  <li class="item-thumbs span3 photography" data-id="id-5" data-type="icon">
                    <!-- Fancybox - Gallery Enabled - Title - Full Image -->
                    <a class="hover-wrap fancybox" data-fancybox-group="gallery" title="창립행사" href="/resources/bootstrap/img/works/full/포트폴리오6.jpg">
                  <span class="overlay-img"></span>
                  <span class="overlay-img-thumb font-icon-plus"></span>
                  </a>
                    <!-- Thumb Image and Description -->
                    <img src="/resources/bootstrap/img/works/thumbs/포트폴리오6.jpg" alt="파티플래너에서 함께한 창립행사 모습입니다.">
                  </li>
                  <!-- End Item Project -->
                  <!-- Item Project and Filter Name -->
                  <li class="item-thumbs span3 photography" data-id="id-2" data-type="illustrator">
                    <!-- Fancybox - Gallery Enabled - Title - Full Image -->
                    <a class="hover-wrap fancybox" data-fancybox-group="gallery" title="피로연" href="/resources/bootstrap/img/works/full/포트폴리오7.png">
                  <span class="overlay-img"></span>
                  <span class="overlay-img-thumb font-icon-plus"></span>
                  </a>
                    <!-- Thumb Image and Description -->
                    <img src="/resources/bootstrap/img/works/thumbs/포트폴리오7.png" alt="파티플래너에서 함께한 피로연 모습입니다.">
                  </li>
                  <!-- End Item Project -->
                  <!-- Item Project and Filter Name -->
                  <li class="item-thumbs span3 design" data-id="id-0" data-type="web">
                    <!-- Fancybox - Gallery Enabled - Title - Full Image -->
                    <a class="hover-wrap fancybox" data-fancybox-group="gallery" title="워크숍" href="/resources/bootstrap/img/works/full/포트폴리오10.jpg">
                  <span class="overlay-img"></span>
                  <span class="overlay-img-thumb font-icon-plus"></span>
                  </a>
                    <!-- Thumb Image and Description -->
                    <img src="/resources/bootstrap/img/works/thumbs/포트폴리오10.jpg" alt="파티플래너에서 함께한 워크숍 모습입니다.">
                  </li>
                  <!-- End Item Project -->
                </ul>
              </section>
            </div>
          </div>
        </div>
        <!-- End Portfolio Projects -->
        <!-- divider -->
        <div class="row">
          <div class="span12">
            <div class="solidline">
            </div>
          </div>
        </div>
        <!-- end divider -->
        <div class="row" style="display:none;">
          <div class="span12">
            <h4>Very satisfied <strong>clients</strong></h4>
            <ul id="mycarousel" class="jcarousel-skin-tango recent-jcarousel clients">
              <li>
                <a href="#">
               <img src="/resources/bootstrap/img/dummies/clients/client1.png" class="client-logo" alt="" />
               </a>
              </li>
              <li>
                <a href="#">
               <img src="/resources/bootstrap/img/dummies/clients/client2.png" class="client-logo" alt="" />
               </a>
              </li>
              <li>
                <a href="#">
               <img src="/resources/bootstrap/img/dummies/clients/client3.png" class="client-logo" alt="" />
               </a>
              </li>
              <li>
                <a href="#">
               <img src="/resources/bootstrap/img/dummies/clients/client4.png" class="client-logo" alt="" />
               </a>
              </li>
              <li>
                <a href="#">
               <img src="/resources/bootstrap/img/dummies/clients/client5.png" class="client-logo" alt="" />
               </a>
              </li>
              <li>
                <a href="#">
               <img src="/resources/bootstrap/img/dummies/clients/client6.png" class="client-logo" alt="" />
               </a>
              </li>
              <li>
                <a href="#">
               <img src="/resources/bootstrap/img/dummies/clients/client1.png" class="client-logo" alt="" />
               </a>
              </li>
              <li>
                <a href="#">
               <img src="/resources/bootstrap/img/dummies/clients/client2.png" class="client-logo" alt="" />
               </a>
              </li>
              <li>
                <a href="#">
               <img src="/resources/bootstrap/img/dummies/clients/client3.png" class="client-logo" alt="" />
               </a>
              </li>
              <li>
                <a href="#">
               <img src="/resources/bootstrap/img/dummies/clients/client4.png" class="client-logo" alt="" />
               </a>
              </li>
              <li>
                <a href="#">
               <img src="/resources/bootstrap/img/dummies/clients/client5.png" class="client-logo" alt="" />
               </a>
              </li>
              <li>
                <a href="#">
               <img src="/resources/bootstrap/img/dummies/clients/client6.png" class="client-logo" alt="" />
               </a>
              </li>
            </ul>
          </div>
        </div>
      </div>
    </section>
    <section id="bottom">
      <div class="container">
        <div class="row">
          <div class="span12">
            <div class="aligncenter">
              <div id="twitter-wrapper">
                <div id="twitter">
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <jsp:include page="/WEB-INF/views/include/footer.jsp"/>
</body>

</html>