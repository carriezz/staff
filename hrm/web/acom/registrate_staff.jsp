<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>인사관리</title>
  
  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.0/themes/base/jquery-ui.css">
  <script src="../js/jquery-1.10.2.min.js"></script>
  <script src="https://code.jquery.com/ui/1.12.0/jquery-ui.js"></script>
  <script>
  $( function() {
	    $( "#tabs" ).tabs();
	  } );
  </script>
  <style>
  #tabs{
  	position: absolute; top: 100px; left: 280px;
  }
  </style>
  
</head>
<body>
<jsp:include page="header.jsp"/>
<jsp:include page="navigation.jsp"/>
<form>
<div id="tabs" style="border:none;">
  <ul>
    <li><a href="#tabs-1">Nunc tincidunt</a></li>
    <li><a href="#tabs-2">Proin dolor</a></li>
    <li><a href="#tabs-3">Aenean lacinia</a></li>
  </ul>
  <div id="tabs-1">
  	<p>기본 인적 사항</p>
		<table class="pers_table">
			<tr>
				<th><label for="picture" name="picture">사진</label></th>
				<td><input type="file" name="picture"></td>
			</tr>
			<tr>
				<th><label for="staff_name" name="staff_name">성명</label></th>
				<td><input type="text" name="staff_name" placeholder="성명"></td>
			</tr>
			<tr>
				<th><label for="staff_jumin" name="staff_jumin">주민등록번호</label></th>
				<td>
					<input type="text" id="jumin" name="staff_jumin" placeholder="주민번호 앞 6자리"> 
					- 
					<input type="text" id="jumin" name="staff_jumin" placeholder="주민번호 뒤 7자리">
				</td>
			</tr>
			<tr>
				<th><label for="gender" name="gender">성별</label></th>
				<td>
					<input type="radio" name="gender" value="1" checked="checked">남 
					&nbsp; 
					<input type="radio" name="gender" value="2">여 
				</td>
			</tr>
			<tr>
				<th><label for="phone" name="phone">연락처</label></th>
				<td><input type="text" name="phone" placeholder="연락처(전화번호)"></td>
			</tr>
			<tr>
				<th><label for="address" name="adderess">자택주소</label></th>
				<td><input type="text" name="address" placeholder="자택주소"></td>
			</tr>
			<tr>
				<th><label for="detail_add" name="detail_add">상세주소</label></th>
				<td><input type="text" name="detail_add" placeholder="상세주소"></td>
			</tr>
		</table>
		<br>
		<table class="organ_table">
			<tr>
				<th><label for="staff_num" name="staff_num">사원번호</label></th>
				<td><input type="text" name="staff_num"></td>
			</tr>
			<tr>
				<th><label for="staff_pwd" name="staff_pwd">비밀번호</label></th>
				<td><input type="text" name="staff_pwd"></td>
			</tr>
			<tr>
				<th><label for="department" name="department">부서</label></th>
				<td>
					<select name="department">
						<option value="0" selected="selected">부서명</option>			
					</select>
				</td>
			</tr>
			<tr>
				<th><lable for="position" name="position">직급</lable></th>
				<td>
					<select name="position">
						<option value="0" selected="selected">직급명</option>			
					</select>
				</td>
			</tr>
			<tr>
				<th><label for="salary" name="salary">급여(연)</label></th>
				<td><input type="text" name="salary" placeholder="급여(연)">&nbsp;(단위 : 원)</td>
			</tr>
			<tr>
				<th><label for="stt_date" name="stt_date">입사일</label></th>
				<td><input type="text" name="stt_date" placeholder="입사일"></td>
			</tr>
			<tr>
				<th><label for="end_date" name="end_date">퇴사일</label></th>
				<td><input type="text" name="end_date" placeholder="퇴사일"></td>
			</tr>	
		</table>
  </div>
  
  <div id="tabs-2">
	<p>학력사항</p>
		<table class="acadimic_table">
			<tr>
				<th><label for="last_acdm" name="last_acdm">최종학력</label></th>
				<td>
					<input type="checkbox" name="last_acdm" value="1"> 고등학교 졸업
					<input type="checkbox" name="last_acdm" value="2"> 대학교 졸업
					<input type="checkbox" name="last_acdm" value="3"> 대학원 졸업
				</td>
			</tr>
			<tr>
				<th><label for="highscl_name" name="highscl_name">출신 고등학교(명)</label></th>
				<td><input type="text" name="highscl_name" placeholder="출신고등학교"></td>
			</tr>
			<tr>
				<th><label for="highscl_stt" name="highscl_stt">고등학교 입학년월</label></th>
				<td><input type="text" name="highscl_stt" placeholder="고등학교 입학년월"></td>
			</tr>
			<tr>
				<th><label for="highscl_end" name="highscl_end">고교졸업년월</label></th>
				<td><input type="text" name="highscl_end" placeholder="고등학교 졸업년월"></td>
			</tr>
			<tr>
				<th><label for="univ_name" name="univ_name">출신 대학교(명)</label></th>
				<td><input type="text" name="univ_name" placeholder="출신 대학교 이름"></td>
			</tr>
			<tr>
				<th><label for="major" name="major">전공</label></th>
				<td><input type="text" name="mahor" placeholder="전공"></td>
			</tr>
			<tr>
				<th><label for="univ_stt" name="univ_stt">대학교 입학년월</label></th>
				<td><input type="text" name="univ_stt" placeholder="대학교 입학년월"></td>
			</tr>
			<tr>
				<th><label for="univ_end" name="univ_end">대학교 졸업년월</label></th>
				<td><input type="text" name="univ_end" placeholder="대학교 졸업년월"></td>
			</tr>
			<tr>
				<th><label for="get_major" name="get_major">학위취득여부</label></th>
				<td>
					<input type="radio" name="get_major" value="1" checked="checked"> 기취득
					<input type="radio" name="get_major" value="2"> 졸업예정
				</td>
			</tr>
			<tr>
				<th><label for="univ_grade" name="univ_grade">취득학점</label></th>
				<td><input type="text" name="univ_grade"></td>
			</tr>
			<tr>
				<th><label for="tot_grade" name="tot_grade">총점</label></th>
				<td>
					<input type="checkbox" name="tot_grade" value="1">	4.3
					&nbsp;
					<input type="checkbox" name="tot_grade"	value="2">	4.5
				</td>
			</tr>
		</table>
  </div>
  
  <div id="tabs-3">
	<p>경력사항</p>
		<table class="career_table">
			<tr>
				<th><label for="pre_company" name="pre_company">근무 회사명</label></th>
				<td><input type="text" name="pre_company" placeholder="이전 근무 회사명"></td>
			</tr>
			<tr>
				<th><label for="pre_sttDate" name="pre_sttDate">입사일</label></th>
				<td><input type="text" name="pre_sttDate" placeholder="이전 회사 입사일"></td>
			</tr>
			<tr>
				<th><label for="pre_endDate" name="pre_endDate">퇴사일</label></th>
				<td><input type="text" name="pre_endDate" placeholder="이전 회사 퇴사일"></td>
			</tr>
			<tr>
				<th><label for="pre_posit" name="pre_posit">담당업무</label></th>
				<td><input type="text" name="pre_posit" placeholder="담당업무"></td>
			</tr>
			<tr>
				<th><label for="pre_posit" name="pre_posit">담당업무</label></th>
				<td><input type="text" name="pre_posit" placeholder="담당업무"></td>
			</tr>
			<tr>
				<th><label for="pjt_do" name="pjt_do">수행 프로젝트 명</label></th>
				<td><input type="text" name="pjt_do" placeholder="수행 프로젝트 명"></td>
			</tr>
			<tr>
				<th><label for="pjt_desc" name="pjt_desc">프로젝트 구분</label></th>
				<td>
					<input type="radio" name="pjt_desc" value="1">입사 전
					<input type="radio" name="pjt_desc" value="2">입사 후
				</td>
			</tr>
			<tr>
				<th><label for="pjt_sttDate" name="pjt_sttDate">프로젝트 투입일</label></th>
				<td><input type="text" name="pjt_sttDate" placeholder="프로젝트 투입일자"></td>
			</tr>
			<tr>
				<th><label for="pjt_endDate" name="pjt_endDate">프로젝트 종료일</label></th>
				<td><input type="text" name="pjt_endDate" placeholder="프로젝트 종료일자"></td>
			</tr>
		</table>
  </div>
</div>

<span style="position: relative; top: 700px; left: 500px">
	<input type="submit" value="등록">
	<input type="reset" value="취소">
</span>
</form>
</body>
</html>