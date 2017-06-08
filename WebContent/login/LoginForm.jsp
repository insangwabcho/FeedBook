<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="../include/header.jsp"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

  <div class="container" style="margin-top: 10%;" align="center">
    <form action="${path}/servlet/login.do" method="post">
      <table style="width: 30%;">
        <tr class="text-center">
          <th>
            <h2>
              <p class="text-center text-success">FeedBook</p>
            </h2>
          </th>
        </tr>
        <tr>
          <th style="padding-top: 10%;">
            <p class="text-center">
              <input id="id" name="id" placeholder=" 아이디를 입력해주세요" style="width: 80%;">
            </p>
          </th>
        </tr>
        <tr>
          <th>
            <p class="text-center">
              <input type="password" id="pwd" name="pwd" placeholder="비밀번호를 입력해주세요" style="width: 78%">
            </p>
          </th>
        </tr>
        <tr>
          <th style="padding: 3%;">
            <p class="text-center">
              <input type="submit" value="login" class="btn" style="width: 60%;">
            </p>
          </th>
        </tr>
      </table>
    </form>
  </div>

</body>
</html>