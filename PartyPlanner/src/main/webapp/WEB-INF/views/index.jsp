<%@ page contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <title>Flattern - Flat and trendy bootstrap site template</title>
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
              <h2><strong>Twitter</strong> bootstrap</h2>
              <blockquote>
                <p>
                  Until he extends the circle of his compassion to all living things, man will not himself find peace.
                </p>
                <cite>Ramond Schummiler</cite>
              </blockquote>
            </div>
          </div>
          
          <!-- 메인페이지 세번째 슬라이드 사진 -->
          <div class="sl-slide" data-orientation="horizontal" data-slice1-rotation="3" data-slice2-rotation="3" data-slice1-scale="2" data-slice2-scale="1">
            <div class="sl-slide-inner">
              <div class="bg-img bg-img-3">
              </div>
              <h2><strong>Responsive</strong> layout</h2>
              <blockquote>
                <p>
                  Thousands of people who say they 'love' animals sit down once or twice a day to enjoy the flesh of creatures who have been utterly deprived of everything that could make their lives worth living and who endured the awful suffering and the terror of the
                  abattoirs.
                </p>
                <cite>Andress Michel Aorta</cite>
              </blockquote>
            </div>
          </div>
          
          <!-- 메인페이지 네번째 슬라이드 사진 -->
          <div class="sl-slide" data-orientation="vertical" data-slice1-rotation="-5" data-slice2-rotation="25" data-slice1-scale="2" data-slice2-scale="1">
            <div class="sl-slide-inner">
              <div class="bg-img bg-img-4">
              </div>
              <h2><strong>Awesome</strong> features</h2>
              <blockquote>
                <p>
                  The human body has no more need for cows' milk than it does for dogs' milk, horses' milk, or giraffes' milk.
                </p>
                <cite>Smilee Bounvaller</cite>
              </blockquote>
            </div>
          </div>
          
          <!-- 메인페이지 다섯번째 슬라이드 사진 -->
          <div class="sl-slide" data-orientation="horizontal" data-slice1-rotation="-5" data-slice2-rotation="10" data-slice1-scale="2" data-slice2-scale="1">
            <div class="sl-slide-inner">
              <div class="bg-img bg-img-5">
              </div>
              <h2><strong>Premium</strong> support</h2>
              <blockquote>
                <p>
                  I think if you want to eat more meat you should kill it yourself and eat it raw so that you are not blinded by the hypocrisy of having it processed for you.
                </p>
                <cite>Clarke Edward Thompson</cite>
              </blockquote>
            </div>
          </div>
        </div>
        
        
        <!-- /sl-slider -->
        <nav id="nav-dots" class="nav-dots">
          <span class="nav-dot-current"></span>
          <span></span>
          <span></span>
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
                <a class="btn btn-large btn-theme btn-rounded" href="../event/select">Party Plan</a>
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
                    <i class="icon-briefcase icon-circled icon-64 active"></i>
                  </div>
                  <div class="text">
                    <h6>Corporate business</h6>
                    <p>
                      Lorem ipsum dolor sit amet, has ei ipsum scaevola deseruisse am sea facilisis.
                    </p>
                    <a href="#">Learn more</a>
                  </div>
                </div>
              </div>
              <div class="span3">
                <div class="box aligncenter">
                  <div class="aligncenter icon">
                    <i class="icon-desktop icon-circled icon-64 active"></i>
                  </div>
                  <div class="text">
                    <h6>Responsive theme</h6>
                    <p>
                      Lorem ipsum dolor sit amet, has ei ipsum scaevola deseruisse am sea facilisis.
                    </p>
                    <a href="#">Learn more</a>
                  </div>
                </div>
              </div>
              <div class="span3">
                <div class="box aligncenter">
                  <div class="aligncenter icon">
                    <i class="icon-beaker icon-circled icon-64 active"></i>
                  </div>
                  <div class="text">
                    <h6>Coded carefully</h6>
                    <p>
                      Lorem ipsum dolor sit amet, has ei ipsum scaevola deseruisse am sea facilisis.
                    </p>
                    <a href="#">Learn more</a>
                  </div>
                </div>
              </div>
              <div class="span3">
                <div class="box aligncenter">
                  <div class="aligncenter icon">
                    <i class="icon-coffee icon-circled icon-64 active"></i>
                  </div>
                  <div class="text">
                    <h6>Sit and enjoy</h6>
                    <p>
                      Lorem ipsum dolor sit amet, has ei ipsum scaevola deseruisse am sea facilisis.
                    </p>
                    <a href="#">Learn more</a>
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
            <h4 class="heading">Some of recent <strong>works</strong></h4>
            <div class="row">
              <section id="projects">
                <ul id="thumbs" class="portfolio">
                  <!-- Item Project and Filter Name -->
                  <li class="item-thumbs span3 design" data-id="id-0" data-type="web">
                    <!-- Fancybox - Gallery Enabled - Title - Full Image -->
                    <a class="hover-wrap fancybox" data-fancybox-group="gallery" title="The City" href="/resources/bootstrap/img/works/full/image-01-full.jpg">
                  <span class="overlay-img"></span>
                  <span class="overlay-img-thumb font-icon-plus"></span>
                  </a>
                    <!-- Thumb Image and Description -->
                    <img src="/resources/bootstrap/img/works/thumbs/image-01.jpg" alt="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus quis elementum odio. Curabitur pellentesque, dolor vel pharetra mollis.">
                  </li>
                  <!-- End Item Project -->
                  <!-- Item Project and Filter Name -->
                  <li class="item-thumbs span3 design" data-id="id-1" data-type="icon">
                    <!-- Fancybox - Gallery Enabled - Title - Full Image -->
                    <a class="hover-wrap fancybox" data-fancybox-group="gallery" title="The Office" href="/resources/bootstrap/img/works/full/image-02-full.jpg">
                  <span class="overlay-img"></span>
                  <span class="overlay-img-thumb font-icon-plus"></span>
                  </a>
                    <!-- Thumb Image and Description -->
                    <img src="/resources/bootstrap/img/works/thumbs/image-02.jpg" alt="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus quis elementum odio. Curabitur pellentesque, dolor vel pharetra mollis.">
                  </li>
                  <!-- End Item Project -->
                  <!-- Item Project and Filter Name -->
                  <li class="item-thumbs span3 photography" data-id="id-2" data-type="illustrator">
                    <!-- Fancybox - Gallery Enabled - Title - Full Image -->
                    <a class="hover-wrap fancybox" data-fancybox-group="gallery" title="The Mountains" href="/resources/bootstrap/img/works/full/image-03-full.jpg">
                  <span class="overlay-img"></span>
                  <span class="overlay-img-thumb font-icon-plus"></span>
                  </a>
                    <!-- Thumb Image and Description -->
                    <img src="/resources/bootstrap/img/works/thumbs/image-03.jpg" alt="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus quis elementum odio. Curabitur pellentesque, dolor vel pharetra mollis.">
                  </li>
                  <!-- End Item Project -->
                  <!-- Item Project and Filter Name -->
                  <li class="item-thumbs span3 photography" data-id="id-2" data-type="illustrator">
                    <!-- Fancybox - Gallery Enabled - Title - Full Image -->
                    <a class="hover-wrap fancybox" data-fancybox-group="gallery" title="The Mountains" href="/resources/bootstrap/img/works/full/image-04-full.jpg">
                  <span class="overlay-img"></span>
                  <span class="overlay-img-thumb font-icon-plus"></span>
                  </a>
                    <!-- Thumb Image and Description -->
                    <img src="/resources/bootstrap/img/works/thumbs/image-04.jpg" alt="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus quis elementum odio. Curabitur pellentesque, dolor vel pharetra mollis.">
                  </li>
                  <!-- End Item Project -->
                  <!-- Item Project and Filter Name -->
                  <li class="item-thumbs span3 photography" data-id="id-4" data-type="web">
                    <!-- Fancybox - Gallery Enabled - Title - Full Image -->
                    <a class="hover-wrap fancybox" data-fancybox-group="gallery" title="The Sea" href="/resources/bootstrap/img/works/full/image-05-full.jpg">
                  <span class="overlay-img"></span>
                  <span class="overlay-img-thumb font-icon-plus"></span>
                  </a>
                    <!-- Thumb Image and Description -->
                    <img src="/resources/bootstrap/img/works/thumbs/image-05.jpg" alt="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus quis elementum odio. Curabitur pellentesque, dolor vel pharetra mollis.">
                  </li>
                  <!-- End Item Project -->
                  <!-- Item Project and Filter Name -->
                  <li class="item-thumbs span3 photography" data-id="id-5" data-type="icon">
                    <!-- Fancybox - Gallery Enabled - Title - Full Image -->
                    <a class="hover-wrap fancybox" data-fancybox-group="gallery" title="Clouds" href="/resources/bootstrap/img/works/full/image-06-full.jpg">
                  <span class="overlay-img"></span>
                  <span class="overlay-img-thumb font-icon-plus"></span>
                  </a>
                    <!-- Thumb Image and Description -->
                    <img src="/resources/bootstrap/img/works/thumbs/image-06.jpg" alt="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus quis elementum odio. Curabitur pellentesque, dolor vel pharetra mollis.">
                  </li>
                  <!-- End Item Project -->
                  <!-- Item Project and Filter Name -->
                  <li class="item-thumbs span3 photography" data-id="id-2" data-type="illustrator">
                    <!-- Fancybox - Gallery Enabled - Title - Full Image -->
                    <a class="hover-wrap fancybox" data-fancybox-group="gallery" title="The Mountains" href="/resources/bootstrap/img/works/full/image-07-full.jpg">
                  <span class="overlay-img"></span>
                  <span class="overlay-img-thumb font-icon-plus"></span>
                  </a>
                    <!-- Thumb Image and Description -->
                    <img src="/resources/bootstrap/img/works/thumbs/image-07.jpg" alt="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus quis elementum odio. Curabitur pellentesque, dolor vel pharetra mollis.">
                  </li>
                  <!-- End Item Project -->
                  <!-- Item Project and Filter Name -->
                  <li class="item-thumbs span3 design" data-id="id-0" data-type="web">
                    <!-- Fancybox - Gallery Enabled - Title - Full Image -->
                    <a class="hover-wrap fancybox" data-fancybox-group="gallery" title="The Dark" href="/resources/bootstrap/img/works/full/image-08-full.jpg">
                  <span class="overlay-img"></span>
                  <span class="overlay-img-thumb font-icon-plus"></span>
                  </a>
                    <!-- Thumb Image and Description -->
                    <img src="/resources/bootstrap/img/works/thumbs/image-08.jpg" alt="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus quis elementum odio. Curabitur pellentesque, dolor vel pharetra mollis.">
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