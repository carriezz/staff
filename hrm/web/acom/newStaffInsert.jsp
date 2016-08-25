<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>인사관리</title>
<script src="js/jquery-1.10.2.min.js"></script>
<script src="https://code.jquery.com/ui/1.10.2/jquery-ui.js"></script>
<link rel="stylesheet" type="text/css" href="css/common.css">
<style type="text/css">
.regNewStaff{
	height: 100%;
	position: absolute; top: 100px; left: 300px;
}

#new_insert_div{
	font-size: 13px;
}

#regNewStaff th{
	text-align: left;
	width: 300px;
	height: 30px;	
}

#regNewStaff td{
	width: 600px;
}

.personnalInfo{
	padding-top: 10px;
}
</style>
</head>
<body>
<jsp:include page="header.jsp"/>
<jsp:include page="navigation.jsp"/>

<div class="gross_div" id="regNewStaff">
  <form name="newStaff_form" method="post" enctype="multipart/form-data" action="StaffServlet?command=staff_insert">
  <input type="hidden" name="command" value="staff_insert">
	<h3>신규 임직원 등록</h3>
  	<div id="new_insert_div">
		<div class="personnalInfo">
		<table class="pers_table" >
			<tr>
				<th><label for="staff_id">사원번호</label></th>
				<td><input type="text" name="staff_id"></td>
			</tr>
			<tr>
				<th><label for="staff_pwd">비밀번호</label></th>
				<td><input type="text" name="staff_pwd" placeholder="초기 비밀번호 설정"></td>
			</tr>
			<tr>
				<th><label for="picture">사진</label></th>
				<td><input type="file" name="picture"></td>
			</tr>
			<tr>
				<th><label for="staff_name">성명</label></th>
				<td><input type="text" name="staff_name" placeholder="성명"></td>
			</tr>
			<tr>
				<th><label for="staff_jumin" name="staff_jumin">주민등록번호</label></th>
				<td>
					<input type="text" id="jumin" name="staff_jumin1" placeholder="주민번호 앞 6자리"> 
					- 
					<input type="text" id="jumin" name="staff_jumin2" placeholder="주민번호 뒤 7자리">
				</td>
			</tr>
			<tr>
				<th><label for="gender">성별</label></th>
				<td>
					<input type="radio" name="gender" value="1" checked="checked">남 
					&nbsp; 
					<input type="radio" name="gender" value="2">여 
				</td>
			</tr>
			<tr>
				<th><label for="phone">연락처</label></th>
				<td><input type="text" name="phone" placeholder="연락처(전화번호)"></td>
			</tr>
			<tr>
				<th><label for="staff_email">e-mail</label></th>
				<td><input type="text" name="staff_email" placeholder="연락처(e-mail)"></td>
			</tr>
			<tr>
				<th><label for="zipcode">우편번호</label></th>
				<td><input type="text" name="zipcode" value="우편번호 검색"></td>
			</tr>
			<tr>
				<th><label for="address">자택주소</label></th>
				<td><input type="text" name="address" placeholder="자택주소"></td>
			</tr>
			<tr>
				<th><label for="detail_add">상세주소</label></th>
				<td><input type="text" name="detail_add" placeholder="상세주소"></td>
			</tr>
			<tr>
				<th><label for="dep_id">부서</label></th>
				<td>
					<select name="dep_id">
						<option value="0" selected="selected">부서명</option>
						<option value="101">재경</option>
						<option value="102">기획</option>
						<option value="103">영업</option>		
					</select>
				</td>
			</tr>
			<tr>
				<th><label for="pos_id">직급</label></th>
				<td>
					<select name="pos_id">
						<option value="0" selected="selected">직급명</option>
						<option value="201">사원</option>
						<option value="202">대리</option>
						<option value="203">과장</option>
					</select>
				</td>
			</tr>
			<tr>
				<th><label for="admin">관리자 권한</label></th>
				<td>
					<input type="radio" name="admin" value="1" checked="checked">일반
					&nbsp;
					<input type="radio" name="admin" value="2">관리자
				</td>
			</tr>
			<tr>
				<th><label for="salary">급여(연)</label></th>
				<td><input type="text" name="salary" placeholder="급여(연)">&nbsp;(단위 : 원)</td>
			</tr>
			<tr>
				<th><label for="stt_date">입사일</label></th>
				<td><input type="text" name="stt_date" placeholder="입사일"></td>
			</tr>
			<tr>
				<th><label for="end_date">퇴사일</label></th>
				<td><input type="text" name="end_date" placeholder="퇴사일"></td>
			</tr>
			<tr>
				<th><label for="reg_date">등록일</label></th>
				<td><input type="text" name="reg_date" placeholder="등록일"></td>
			</tr>
			<tr>
				<th><label for="registrant">등록자</label></th>
				<td><input type="text" name="registrant"></td>
			</tr>	
		</table>
		</div>
		<br>
		<br>
		<div align="center">
			<input type="button" value="목록" onclick="location.href='StaffServlet?command=staff_list'">
			<input type="submit" value="등록">
			<input type="reset" value="취소">
		</div>
	</div>
	</form>
</div>
</body>
</html>