<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
//세션변수의 값 조회
String userid=(String)session.getAttribute("userid");
if(userid==null){ //세션이 null이면 (로그인 안한 경우)
/*   String message
    ="로그인한 사용자만 사용가능한 화면입니다.";
  message = URLEncoder.encode(message, "utf-8");
  response.sendRedirect(
"sessionTestForm2.jsp?message="+message); */
%>
  <script>
  	alert("로그인한 사용자만 사용가능한 화면입니다.");
  	location.href="sessionTestForm2.jsp";
  </script>
<%
}
%>





















