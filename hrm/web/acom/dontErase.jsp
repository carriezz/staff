<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<div class="academic_info" id="tabs-2">
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
		<br>
		<div class="career_info" id="tabs-3">
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
		<div class="certifi_info" id="tabs-4">
		<p>자격증 보유 현황</p>
		<table class="certifi_table">
			<tr>
				<th><label for="certifi_name" name="certifi_name">보유자격증명</label></th>
				<td><input type="text" name="certifi_name" placeholder="보유 자격증 명칭"></td>
			</tr>
			<tr>
				<th><label for="certifi_num" name="certifi_num">자격증 번호</label></th>
				<td><input type="text" name="certifi_num" placeholder="자격증 번호"></td>
			</tr>
			<tr>
				<th><label for="certifi_date" name="certifi_date">취득일자</label></th>
				<td><input type="text" name="certifi_date" placeholder="취득일자"></td>
			</tr>
			<tr>
				<th><label for="certiEnd_date" name="certiEnd_date">만료일자</label></th>
				<td><input type="text" name="certiEnd_date" placeholder="만료일자"></td>
			</tr>
		</table>


</body>
</html>