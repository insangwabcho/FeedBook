<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="include/header.jsp"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
<link rel="stylesheet" href="assets/css/main.css" />
<!--[if lte IE 9]><link rel="stylesheet" href="assets/css/ie9.css" /><![endif]-->
<!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
<title>Insert title here</title>
<style>
.none {
	width: 80%;
	text-align: right;
	margin-left: 20%;
	border: 1px solid lightgray;
}
</style>
<script>
  
  $(function() {
    $("#subLogin").attr("method", "post");
    $("#subLogin").attr("action", "${path}/servlet/login.do");
    $.ajax({
      type: "post",
      url: "${path}/servlet/getlist.do",
      success: function(result){
        $("#feedResult").html(result);
      }
    })
  })
  
  function logOut(){
    location.href="${path}/servlet/logout.do";
  }
  
  function init(){
    var param= "ea=4";
    $.ajax({
      type: "post",
      url: "${path}/servlet/getfeed.do",
      data: param,
      success: function(result){
        $("#feedcontent").html(result);
      }
    })
  }
  
</script>
</head>

<body class="single">

  <!-- Wrapper -->
  <div id="wrapper">

    <!-- Header -->
    <header id="header">
      <h1>
        <a href="#">FEEDBOOK</a>
      </h1>
      <nav class="links">
        <ul>
          <li><a href="#">Feed</a></li>
          <li><a href="#">Photo</a></li>
          <li><a href="#">Firend</a></li>
          <li><a href="#">MyPage</a></li>
        </ul>
      </nav>
      <nav class="main">
        <ul>
          <li class="menu"><a class="fa-bars" href="#menu">Menu</a></li>
        </ul>
      </nav>
    </header>

    <!-- Menu -->
    <section id="menu">

      <!-- Search -->
      <section>
        <form class="search" method="get" action="#">
          <input type="text" name="query" placeholder="Search" />
        </form>
      </section>

      <!-- Links -->
      <section>
        <ul class="links">
          <li><a href="#">
              <h3>Feed</h3>
              <p>
              <h3>내 친구들의 피드근황!</h3>
              </p>
          </a></li>
          <li><a href="#">
              <h3>Photo</h3>
              <p>
              <h3>친구들의 사진 모음집!</h3>
              </p>
          </a></li>
          <li><a href="#">
              <h3>Friend</h3>
              <p>
              <h3>친구목록,친구추가 등등 etc..</h3>
              </p>
          </a></li>
        </ul>
      </section>

      <!-- Actions -->
      <section>
        <ul class="actions vertical">
          <li><c:if test="${sessionScope.login!= null}">
              <a href="${path}/servlet/logout.do" class="button big fit">Log Out</a>
            </c:if> <c:if test="${sessionScope.login== null}">
              <a href="${path}/login/LoginForm.jsp" class="button big fit">Log In</a>
            </c:if></li>
        </ul>
      </section>

    </section>

    <!-- Main -->
    <div id="main">
      <div>
        <c:if test="${sessionScope.login != null}">
          <table class="none" style="width: 55%; margin-left: 45%;">
            <tr>
              <td colspan="2"><b>${sessionScope.login.name}</b> 님 로그인중...<br> 어서오세요 <b>FeedBook</b> 입니다 반가워요!!</td>
              <td><button class="btn-default" style="margin-top:5%;" onclick="logOut()">LogOut</button>
              <td align="right">
                <button class="btn-default" style="margin-top: 5%; margin-right: 5%">Write</button>
              </td>
            </tr>
          </table>
        </c:if>
        <c:if test="${sessionScope.login == null}">
          <table class="none">
            <tr>
              <td colspan="3">
                <form id="subLogin" name="form1">
                  <input type="text" id="subId" name="id" placeholder="ID" style="width: 35%; margin-right: 5%; margin-top: 5%;" />
                  <input type="password" id="subPwd" name="pwd" placeholder="PASSWORD"
                    style="width: 35%; margin-right: 5%; margin-top: 5%;" /> <input type="submit" class="btn-default"
                    style="width: 13%; padding-left: 2%; padding-right: 2%; margin-top: 5%; margin-right: 3%;" id="login"
                    value="LogIn" />
                </form>
              </td>
            </tr>
          </table>
        </c:if>

      </div>
      <p></p>
      <!-- Post -->
      <article class="post">
        <header>
          <div class="title">
            <h2>
              <!-- title -->
              <a href="#">Magna sed adipiscing</a>
            </h2>
            <p>Lorem ipsum dolor amet nullam consequat etiam feugiat</p>
          </div>
          <div class="meta">
            <!-- profile -->
            <time class="published" datetime="2015-11-01">November 1, 2015</time>
            <a href="#" class="author"><span class="name">Jane Doe</span><img src="images/avatar.jpg" alt="" /></a>
          </div>
        </header>
        <!-- photo -->
        <span class="image featured"><img src="images/pic01.jpg" alt="" /></span>
        <!-- content -->
        <!-- <p>Mauris neque quam, fermentum ut nisl vitae, convallis maximus nisl. Sed mattis nunc id lorem euismod placerat.
          Vivamus porttitor magna enim, ac accumsan tortor cursus at. Phasellus sed ultricies mi non congue ullam corper. Praesent
          tincidunt sed tellus ut rutrum. Sed vitae justo condimentum, porta lectus vitae, ultricies congue gravida diam non
          fringilla.</p>
        <p>Nunc quis dui scelerisque, scelerisque urna ut, dapibus orci. Sed vitae condimentum lectus, ut imperdiet quam.
          Maecenas in justo ut nulla aliquam sodales vel at ligula. Sed blandit diam odio, sed fringilla lectus molestie sit amet.
          Praesent eu tortor viverra lorem mattis pulvinar feugiat in turpis. Class aptent taciti sociosqu ad litora torquent per
          conubia nostra, per inceptos himenaeos. Fusce ullamcorper tellus sit amet mattis dignissim. Phasellus ut metus ligula.
          Curabitur nec leo turpis. Ut gravida purus quis erat pretium, sed pellentesque massa elementum. Fusce vestibulum porta
          augue, at mattis justo. Integer sed sapien fringilla, dapibus risus id, faucibus ante. Pellentesque mattis nunc sit amet
          tortor pellentesque, non placerat neque viverra.</p> -->
          
          <div id="feedcontent"></div>
          
        <!-- 좋아요,답글,덧글 기능 -->
        <footer>
          <ul class="stats">
            <li><a href="#">General</a></li>
            <li><a href="#" class="icon fa-heart">28</a></li>
            <li><a href="#" class="icon fa-comment">128</a></li>
          </ul>
        </footer>
      </article>

    </div>

    <!-- Footer -->
    <section id="footer">
      <ul class="icons">
        <li><a href="#" class="fa-twitter"><span class="label">Twitter</span></a></li>
        <li><a href="#" class="fa-facebook"><span class="label">Facebook</span></a></li>
        <li><a href="#" class="fa-instagram"><span class="label">Instagram</span></a></li>
        <li><a href="#" class="fa-rss"><span class="label">RSS</span></a></li>
        <li><a href="#" class="fa-envelope"><span class="label">Email</span></a></li>
      </ul>
      <p class="copyright">&copy; Untitled. Design: ZZO.</p>
    </section>

  </div>

  <!-- Scripts -->
  <script src="assets/js/jquery.min.js"></script>
  <script src="assets/js/skel.min.js"></script>
  <script src="assets/js/util.js"></script>
  <!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
  <script src="assets/js/main.js"></script>

</body>

</html>