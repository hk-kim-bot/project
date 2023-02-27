<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>

<!DOCTYPE html>

<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="/css/join.css">
<title>회원가입</title>


	<div class="join-wrapper">
		<h3>
			<img src="/img/greenshoeslogo.jpg">
		</h3>
		<form action="/auth/joinProc" id="join-form"
			name="join-form" autocomplete="off">

			<input type="text" id="userid" name="userid" placeholder="이름 입력">

			<div class="info_id">
				<input type="text" id="username" name="username"
					placeholder="아이디 입력(6~20자)" >


				<button type="button" onclick="id_check();">중복 확인</button>

			</div>
			<input type="password" name="password" id="password"
				placeholder="비밀번호 입력(문자,숫자,특수문자 포함 8~20자)" required="required" autocomplete="new-password" /> 
			
			<input type="password" name="pwdcheck" id="pwdcheck" placeholder="비밀번호 확인">
			
			<input type="text" name="birthday" id="birthday"
				placeholder="년, 월, 일 8자리 입력 (예: 20181020)" maxlength="8"> <span
				id="phone1"><input type="text" name="phonenumber" id="phonenumber"
				placeholder="휴대폰 번호 입력('-'제외 11자리 입력)" maxlength="11"></span>

			<div class="info_email">
				<input type="text" name="email" id="email" placeholder="이메일 주소">
			</div>
		
			<label for="remember_check"> <input type="checkbox"
				id="remember_check" name="remember-check">&nbsp;[필수] 만 14세
				이상이며 모두 동의합니다.
			</label><br>
			<br> <label for="remember_check2"> <input
				type="checkbox" id="remember_check2" name="remember-check2">&nbsp;[선택]
				광고성 정보 수신에 모두 동의합니다.
			</label>
			
		</form>
		<button type="submit" class="btn btn-primary" id="btn-save" >회원가입</button>
	</div>
<!-- onclick="joinform_check();" -->

<script src="/js/user.js"></script>

<%@ include file="../layout/footer.jsp"%>




