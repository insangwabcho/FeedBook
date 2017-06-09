<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
</head>
<body>
  <c:forEach var="dto" items="${init}">
  ${dto.name}
  ${dto.content}
  <hr>
  </c:forEach>
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
  <%-- </c:forEach> --%>
</body>
</html>
