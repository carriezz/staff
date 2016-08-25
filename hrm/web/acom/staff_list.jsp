<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>인사관리</title>
<script src="js/jquery-1.10.2.min.js"></script>
<script type="text/javascript"></script>
<link rel="stylesheet" type="text/css" href="css/common.css">
<style type="text/css">
.staff_list{
	position: absolute; top: 100px; left: 300px;
}

.staff_table{
	font-size: 13px;
	border-collapse: collapse;
}

.staff_table th, .staff_table td{
	text-align: center;
	border: #6d6d6d solid 1px;
	border-left: none;
	border-right: none;
	height: 25px;
}

.staff_table th{
	width: 170px;
}

.staff_table a, .staff_table a:link, .staff_table a:visited{
	text-decoration: none;
	color: #0D5697;
}

.staff_table a:hover{
	color: #AFDAFF;
}
</style>
</head>
<body>
<jsp:include page="header.jsp"/>
<jsp:include page="navigation.jsp"/>

<div class="gross_div">
	<h3>임직원 인적사항</h3>
	<table class="staff_table">
		<tr>
			<td colspan="7" style="border:none; height:35px; text-align: right">
				<a href="StaffServlet?command=staff_insert_form">신규등록</a>
			</td>
		</tr>
		<tr>
			<th>사번</th>
			<th>부서</th>
			<th>직급</th>
			<th>이름</th>
			<th>등록일</th>
			<th colspan="2">편집</th>
		</tr>
		<c:forEach var="staff" items="${staffList}">
		<tr>			 
			<td><a href="StaffServlet?command=staff_info_detail&staff_id=${staff.staff_id}">${staff.staff_id}</a></td>
			<td>${staff.dep_id}</td>
			<td>${staff.pos_id}</td>
			<td><a href="StaffServlet?command=staff_info_detail&staff_id=${staff.staff_id}">${staff.staff_name}</a></td>
			<td>${staff.reg_stf_date}</td>
			<td><a href="#">수정</a></td>
			<td><a href="StaffServlet?command=staff_delete&staff_id=${staff.staff_id}">삭제</a></td>
		</tr>
		</c:forEach>
	</table>
</div>
</body>
</html>