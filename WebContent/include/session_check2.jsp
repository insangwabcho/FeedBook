<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- JSTL(Jsp Standard Tag Library)   -->  
<%@ taglib prefix="c" 
uri="http://java.sun.com/jsp/jstl/core" %>
<c:if test="${sessionScope.userid == null }">
<script>
	alert("로그인하신 후 사용하세요.");
	location.href="${path}/ch10/session_login.jsp";
</script>
</c:if>







