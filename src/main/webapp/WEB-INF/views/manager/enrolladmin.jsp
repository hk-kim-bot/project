<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!--  admin용 아이디 생성페이지 입니다 -->
	<div class="adminenroll-container">
		<form>
			<table>
				<tr>
					<td><label for="adminname">이름</label></td>
					<td><input type="text" id="adminname" placeholder="이름 입력">
					</td>
				</tr>
				<tr>
					<td><label for="adminid">아이디</label></td>
					<td><input type="text"  id="userid"
						placeholder="아이디 입력(6~20자)"></td>
				</tr>
				<tr>
					<td><label for="adminpwd">비밀번호</label></td>
					<td>
						 <input type="text" id="adminpwd" placeholder="비밀번호 입력(문자,숫자,특수문자 포함 8~20자)">
					</td>
				</tr>
				<tr>
					<td><label for="adminbirthdate">생일</label></td>
					<td>
						 <input type="text" id="adminbirthdate" placeholder="년, 월, 일 8자리 입력 (예: 20181020)" maxlength="8" >
					</td>
				</tr>
					<tr>
					<td><label for="adminemail">이메일</label></td>
					<td>
						 	<input type="email" id="adminemail" placeholder="이메일 주소">
       						
					</td>
				</tr>
				<tr>
					<td><label for="adminphone">전화번호</label></td>
					<td>
						 	<input type="text" id="adminphone" placeholder="전화번호">
       						
					</td>
				</tr>
			</table>
		</form>
		<button onclick="admin.enroll()">관리자 등록</button>
		<p><span style="color:red;">*</span>임의 생성 및 차후 개인별 변경요망 </p>
		
	</div>
</body>
</html>