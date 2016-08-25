<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Side Navigation</title>
<script src="js/jquery-1.10.2.min.js"></script>
<script type="text/javascript">
window.jQuery_1_10_2 = jQuery.noConflict(true);
	$(document).ready(function(){
		$(".hiding_1").hide();
		
		$(".menu1").click(function(){
			var statea = $(".hiding_1").css('display');
			if(statea == 'none') {
				$(".hiding_1").show();
			} else {
				$(".hiding_1").hide();
			}
			
		}); 
	});
</script>

<style type="text/css">
.sidenavi{
	float:left;
	margin-top: 82px;
	width: 200px;
	height: 100%;
	position: fixed;
	border-right: #ccc thin solid;
}

#navi_table{
	margin-left: 12px;
	font-family: 맑은 고딕;
	font-size: 12px;
	color: #0D5697;
}

#navi_table tr{
	height: 35px;
}

#navi_table tr td ul{
	margin-bottom: 0px;
	margin-top: 0px;
}

#navi_table tr td{
	padding: 0px;
	width: 200px;
}
	
#navi_table tr td ul li{
	height: 30px;
}
	
.sidenavi li a:visited, .sidenavi li a:link, .sidenavi td a:visited, .sidenavi td a:link{
	color: #0D5697;
	text-decoration: none;
}
	
.sidenavi li a:hover, .sidenavi td a:hover{
	color: #AFDAFF;
}

.menu1:HOVER, .menu2:hover, .menu3:hover {
	color: #AFDAFF;
}

#logout {
	color: #FA5882;
}

	
</style>
</head>
<body id="body_1">
	<div class="sidenavi">
	<table id="navi_table">
	<tr>
		<td></td>
	</tr>
	<tr>
		<td class="menu1"><a href="javascript:void(0)">[ 인사관리 ]</a></td>
	</tr>
	<tr class="hiding_1">
		<td>
			<ul>
				<li class="li1"><a href="StaffServlet?command=staff_list">임직원 인적사항</a></li>
				<li class="li1"><a href="#">임직원 프로젝트 이력</a></li>
			</ul>
		</td>
	</tr>
	<tr>
		<td><a href="#">[ 프로젝트 ]</a></td>
	</tr>
	<tr>
		<td><a href="#">[ 공지사항 ]</a></td>
	</tr>
	<tr>
		<td>
			<a id="logout" href="javascript:void(0)">[ 로그아웃 ]</a>
		</td>
	</tr>
	</table>
	</div>
</body>
</html>