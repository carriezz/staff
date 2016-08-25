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
</style>
</head>
<body>
<jsp:include page="header.jsp"/>
<jsp:include page="navigation.jsp"/>

<div class="gross_div">
	<h3>임직원 정보 상세보기</h3>
	<form>
		<table class="sft_info_table">
			<tr>
				<th>임직원 사진</th>
				<td colspan="3">
					<img src="upload/${staff.picture}" style="width: 120px; height:auto;">
				</td>				
			</tr>	
			<tr>
				<th>사원번호</th>
				<td>${staff.staff_id}</td>
				<th>성명</th>
				<td>${staff.staff_name}</td>
			</tr>
			<tr>
				<th>주민등록번호</th>
				<td>${staff.staff_jumin}</td>
				<th>성별</th>
				<td>${staff.gender}</td>
			</tr>
			<tr>
				<th>전화번호</th>
				<td>${staff.phone}</td>
				<th>e-mail</th>
				<td>${staff.staff_email}</td>			
			</tr>
			<tr>
				<th>우편번호</th>
				<td colspan="3">${staff.zipcode}</td>
			</tr>
			<tr>
				<th>자택주소</th>
				<td colspan="3">${staff.address}</td>
			</tr>
			<tr>
				<th>상세주소</th>
				<td colspan="3">${staff.detail_add}</td>
			</tr>
			<tr>
				<th>부서</th>
				<td>${staff.dep_id}</td>
				<th>직급</th>
				<td>${staff.pos_id}</td>
			</tr>
			<tr>
				<th>급여 (단위:원)</th>
				<td>${staff.salary}</td>
				<th>권한</th>
				<td>${staff.admin}</td>
			</tr>	
			<tr>
				<th>입사일</th>
				<td>${staff.stt_date}</td>
				<th>퇴사일</th>
				<td>${staff.end_date}</td>
			</tr>
			<tr>
				<th>등록일</th>
				<td>${staff.reg_stf_date}</td>
				<th>등록자</th>
				<td>${staff.registrant}</td>
			</tr>
		</table>
		<input type="button" value="목록" onclick="location.href='StaffServlet?command=staff_list'">
		<input type="button" value="수정" onclick="location.href='#'">
		<input type="button" value="삭제" onclick="location.href='StaffServlet?command=staff_delete&staff_id=${staff.staff_id}'">
	</form>
</div>
</body>
</html>