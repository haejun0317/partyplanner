<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<div id="wrapper">
  <!-- toggle top area -->
  <div class="hidden-top">
    <div class="hidden-top-inner container">
      <div class="row">
        <div class="span12">
          <ul>
            <li><strong>We are the first party customizing
                site in the world. Plan your party to your liking.<br>
            </strong></li>
            <li>Main office: 149, Gasan digital 1-ro, Geumcheon-gu,
              Seoul, Republic of Korea</li>
            <li>Call us <i class="icon-phone"></i> (123) 456-7890 -
              (123) 555-7891
            </li>
          </ul>
        </div>
      </div>
    </div>
  </div>
  <!-- end toggle top area -->
  <!-- start header -->
  <header>
    <div class="container">
      <!-- hidden top area toggle link -->
      <div id="header-hidden-link">
        <a href="#" class="toggle-link"
          title="Click me you'll get a surprise"
          data-target=".hidden-top"><i></i>Open</a>
      </div>
      <!-- end toggle link -->
      <div class="row nomargin">
        <div class="span12">
          <div class="headnav">
            <ul>
            

              
              <c:choose>
                  <c:when test="${not empty login }">
                      <li><i class="icon-user"></i>${login.name} 님 환영합니다.</li>
                       <li><a href="../member/logout" >Logout</a></li>
                       <li><a href="../party/party4?id=${login.id}" >my page</a></li>
                  </c:when>
                  
                  <c:otherwise>
                       <li><a href="../member/regist"><i
                       class="icon-user"></i> Sign up</a></li>
                       <li><a href="#mySignin" data-toggle="modal">Sign
                       in</a></li>
                  </c:otherwise>
              </c:choose>
              
            </ul>
          </div>
          <!-- Sign in Modal -->
          <div id="mySignin" class="modal styled hide fade"
            tabindex="-1" role="dialog"
            aria-labelledby="mySigninModalLabel" aria-hidden="true">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal"
                aria-hidden="true">×</button>
              <h4 id="mySigninModalLabel">
                Login to your <strong>account</strong>
              </h4>
            </div>
            <div class="modal-body">
              <form class="form-horizontal" action="/member/loginPost" method="post">
                <div class="control-group">
                  <label class="control-label" for="inputText">Username</label>
                  <div class="controls">
                    <input type="text" id="inputText"
                      placeholder="Username" name="id">
                  </div>
                </div>
                <div class="control-group">
                  <label class="control-label" for="inputSigninPassword">Password</label>
                  <div class="controls">
                    <input type="password" id="inputSigninPassword"
                      placeholder="Password" name="passwd">
                  </div>
                </div>
                <div class="control-group">
                  <div class="controls">
                  <label><input type="checkbox" name ="useCookie"> Remember me</label>
                    <button type="submit" class="btn">Sign in</button>
                  </div>
                  <p class="aligncenter margintop20">
                    Forgot password? <a href="#myReset"
                      data-dismiss="modal" aria-hidden="true"
                      data-toggle="modal">Reset</a>
                  </p>
                </div>
              </form>
            </div>
          </div>
          <!-- end signin modal -->
        </div>
      </div>
      <div class="row">
        <div class="span4">
          <div class="logo">
            <a href="/"><img
              src="/resources/bootstrap/img/partyplanner_logo.png"
              alt="logo" class="logo" /></a>
          </div>
        </div>
        <div class="span8">
          <div class="navbar navbar-static-top">
            <div class="navigation">
              <nav>
                <ul class="nav topnav">
                  <li class="dropdown active"><a href="../">Home
                  </a></li>
                  <li class="dropdown"><a href="#">Company<i
                      class="icon-angle-down"></i></a>
                    <ul class="dropdown-menu">
                      <li><a href="about.html">회사소개</a></li>
                      <li><a href="portfolio-4cols.html">포트폴리오</a></li>
                    </ul></li>
                  <li class="dropdown"><a href="../event/select">Plan</a>
                  </li>
                  <li class="dropdown"><a href="../party/list">Share</a>
                  </li>
                  <li class="dropdown"><a href="#">Board <i
                      class="icon-angle-down"></i></a>
                    <ul class="dropdown-menu">
                      <li><a href="blog-left-sidebar.html">리뷰</a></li>
                      <li class="dropdown"><a href="#">help <i
                          class="icon-angle-right"></i></a>
                        <ul class="dropdown-menu sub-menu-level1">
                          <li><a href="../">공지사항</a></li>
                          <li><a href="../">FAQ</a></li>
                          <li><a href="../">Q&A</a></li>
                        </ul></li>
                      <li><a href="../">이벤트</a></li>

                    </ul></li>
                  <li><a href="contact.html">Contact </a></li>
                </ul>
              </nav>
            </div>
            <!-- end navigation -->
          </div>
        </div>
      </div>
    </div>
  </header>
  <!-- end header -->