<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>header</title>
<style type="text/css">
.headdiv{
	width: 90%;
	height: 80px;
	box-shadow: 0px 10px 10px -5px #ccc;
	position: fixed;
}

.headdiv p{
	padding-left: 15px;
	padding-top: 20px;
}

.headdiv a{
	text-decoration: none;
	color: #0D0D63;
	font-family: Arial;
	font-weight: 500;
	font-size: 17px;
}
</style>
</head>
<body>
<div class="headdiv">
	<p>
		<a href="StaffServlet?command=main">HR Management System</a>
	</p>
</div>
</body>
</html>