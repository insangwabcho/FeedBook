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
    init();
  })

  function logOut() {
    location.href = "${path}/servlet/logout.do";
  }

  function init() {
    $.ajax({
      type : "post",
      url : "${path}/servlet/getfeed.do",
      success : function(result) {
        $("#feedResult").html(result);
      }
    });
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
              <td><button class="btn-default" style="margin-top: 5%;" onclick="logOut()">LogOut</button>
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

      <div id="feedResult"></div>

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