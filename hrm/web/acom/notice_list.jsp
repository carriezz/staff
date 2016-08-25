<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>공지사항</title>
<script src="../js/jquery-1.10.2.min.js"></script>
<script type="text/javascript"></script>
<link rel="stylesheet" type="text/css" href="css/common.css">
<style type="text/css">
.notice_list{
	position: absolute; top: 100px; left: 300px;
}

.notice_table{
	font-size: 14px;
	border-collapse: collapse;
}

.notice_table th, .notice_table td{
	border: #6d6d6d solid 1px;
	border-left: none;
	border-right: none;
	height: 25px;
}

.notice_table th{
	width: 170px;
}

.notice_table a{
	text-decoration: none;
}

</style>
</head>
<body>
<jsp:include page="header.jsp"/>
<jsp:include page="navigation.jsp"/>

<div class="gross_div">
	<h3>임직원 인적사항</h3>
	<table class="notice_table">
		<tr>
			<td colspan="7" style="border:none; text-align: right">
				<a href="newNoticeInsert.jsp">신규등록</a>
			</td>
		</tr>
		<tr>
			<th style="width:80px;">No.</th>
			<th>부서</th>
			<th>직급</th>
			<th>사번</th>
			<th>이름</th>
			<th colspan="2">편집</th>
		</tr>
		<tr>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
		</tr>
	</table>
</div>
</body>
</html>