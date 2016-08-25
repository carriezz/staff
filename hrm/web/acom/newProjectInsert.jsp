<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Registration_New Project</title>
<script src="js/jquery-1.10.2.min.js"></script>
<script type="text/javascript"></script>
<link rel="stylesheet" type="text/css" href="css/common.css">
<style type="text/css">
textarea{
	resize: none;
}

.regNewProject{
	position: absolute; top: 100px; left: 280px;
}

</style>
</head>
<body>
<jsp:include page="header.jsp"/>
<jsp:include page="navigation.jsp"/>

<div class="gross_div">
<h3>프로젝트 이력</h3>
	<form>
		<table class="regStf_pjt_tb">
			<tr>
				<th>프로젝트 명</th>
				<td><input type="text"></td>
			</tr>
			<tr>
				<th>사번</th>
				<td></td>
			</tr>
			<tr>
				<th>이름</th>
				<td></td>
			</tr>
			<tr>
				<th>기간</th>
				<td><input type="date"> ~ <input type="date"></td>
			</tr>
			<tr>
				<th>사용스킬</th>
				<td><input type="text"></td>
			</tr>
			<tr>
				<th>수행역할</th>
				<td>
					<select>
						<option value="0">선택하세요</option>
						<option value="1">다른역할</option>
					</select>
				</td>
			</tr>
			<tr>
				<th>상세내용</th>
				<td><textarea rows="30" cols="100"></textarea></td>
			</tr>
		</table>
	<div align="center">
		<input type="submit" value="등록">
		<input type="reset" value="취소">
	</div>	
	</form>
</div>
</body>
</html>