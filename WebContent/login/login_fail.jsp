<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<%@ include file="../include/header.jsp" %>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script>
  $(function(){
    alert("로그인에 실패하였습니다 다시 시도해주세요.");
    location.href="${path}/login/LoginForm.jsp";
  })
</script>
</head>
<body>
  
</body>
</html>