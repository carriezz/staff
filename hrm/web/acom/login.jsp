<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="js/jquery-1.10.2.min.js"></script>
<script type="text/javascript">
</script>
<link rel="stylesheet" type="text/css" href="css/common.css">
<style type="text/css">
.gross_div{
	position: absolute; top: 100px; left: 300px;		
}
</style>
<title>Log in</title>
</head>
<body>
<jsp:include page="header.jsp"/>
<div class="gross_div">
	<form name="login_form" method="post">
	<table class="login_table">
		<tr>
			<th>사번</th>
			<td><input type="text" name="staff_id" placeholder="사번을 입력하세요" autofocus="autofocus"></td>
		</tr>
		<tr>
			<th>비밀번호</th>
			<td><input type="password" name="staff_pwd" placeholder="비밀번호를 입력하세요"></td>
		</tr>
			</table>
	<input type="submit" name="login" value="로그인(login)">
	<p class="error_message">${message}</p>
	</form>
</div>
</body>
</html>