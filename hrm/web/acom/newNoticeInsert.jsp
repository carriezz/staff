<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>공지사항</title>
<script src="js/jquery-1.10.2.min.js"></script>
<script type="text/javascript"></script>
<link rel="stylesheet" type="text/css" href="css/common.css">
<style type="text/css">
textarea{
	resize: none;
}

.regNotice_tb{
	font-size: 13px;
	border-collapse: collapse;
}

.regNotice_tb tr{
	height: 30px;
}

.regNotice_tb th, .regNotice_tb td{
	border: #6d6d6d solid 1px;
	border-left: none;
	border-right: none;
}

.regNotice_tb th{
	width: 100px;
	border-right: #6d6d6d solid 1px;
	background-color: #eee;
}

</style>
</head>
<body>
<jsp:include page="header.jsp"/>
<jsp:include page="navigation.jsp"/>

<div class="gross_div">
<h3>공지사항 등록</h3>
<br>
	<form>
		<table class="regNotice_tb">
			<tr>
				<th rowspan="2">작성자</th>
				<th>사번</th>
				<td></td>
			</tr>
			<tr>
				<th>이름</th>
				<td></td>
			</tr>
			<tr>
				<th colspan="2">제목</th>
				<td><input type="text"></td>
			</tr>
			<tr>
				<th colspan="2">내용</th>
				<td><textarea rows="30" cols="100"></textarea> </td>
			</tr>
		</table>
		<br>
		<div align="center">
			<input type="submit" value="등록">
			<input type="reset" value="취소">
		</div>
	</form>
</div>
</body>
</html>