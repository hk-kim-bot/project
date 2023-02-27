<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>
<!DOCTYPE html>

<meta charset="UTF-8">
<link rel="stylesheet" href="/css/login.css">

<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<script src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.2.js"
	charset="utf-8"></script>

<title>로그인</title>

	<div class="login-wrapper">

		<h3>
			<img src="/img/greenshoeslogo.jpg">
		</h3>
		<form action="/auth/loginProc" method="POST" id="login-form"
			name="login-form">

			<input type="text" name="username" id="username" size="30"
				placeholder="아이디를 입력해주세요">
			
			<input type="password"
				name="password" id="password" size="30" placeholder="비밀번호를 입력해주세요">
			
			<label for="remember-check"> <input type="checkbox"
				name="remember" id="remember">&nbsp;아이디 저장
			</label>
			
			<button type="submit"
				>로그인</button>
			<!--onclick="loginform_check();"  -->
		</form>
		<div class="join">
			<ul>
				<li class="look_box"><a href="" class=look_link>아이디
						찾기</a></li>
				<li>|</li>
				<li class="look_box"><a href="/auth/joinForm" class=look_link>회원
						가입</a></li>
			</ul>

		</div>
 
		<div class="social_login">

			<ul>
				<li onclick="kakaoLogin();"><a href="javascript:void(0)">
						<div>
							<img src="/img/kakao.jpg"><span class="social_loginname">카카오
								로그인</span>
						</div></a>
				</li>
				<li>
					 <a id="naverIdLogin_loginButton"
					href="javascript:void(0)">
						<div>
							<img src="/img/naver.jpg" style="padding-left: -150px;"><span
								class="social_loginname">네이버 로그인</span>
						</div></a>
				</li>
			</ul>
	
			
			
<!--  
			 <li onclick="kakaoLogout();">
            <a href="javascript:void(0)">
                <span>카카오 로그아웃</span>
            </a>
        </li> 

			 <li onclick="naverLogout(); return false;">
            <a href="javascript:void(0)">
                <span>네이버 로그아웃</span>
            </a>
        </li> 
        -->
		</div>

	</div>


 
	<script>
		//joinform_check 함수로 유효성 검사
		function loginform_check() {
			//변수에 담아주기
			var userid = document.getElementById("userid");
			var pwd = document.getElementById("pwd");
			var remember_check = document.getElementById("rememberCheck");

			if (userid.value == "") {
				alert("아이디를 입력하세요.");
				userid.focus();
				return false;
			}
			;

			if (pwd.value == "") {
				alert("비밀번호를 입력하세요.");
				pwd.focus();
				return false;
			}
			;
		}
	</script>
	
	<script>
		Kakao.init('8890a67c089173194979845f9389950d'); //발급받은 키 중 javascript키를 사용해준다.
		console.log(Kakao.isInitialized()); // sdk초기화여부판단
		//카카오로그인
		function kakaoLogin() {
			Kakao.Auth.login({
				success : function(response) {
					Kakao.API.request({
						url : '/v2/user/me',
						success : function(response) {
							console.log(response)
						},
						fail : function(error) {
							console.log(error)
						},
					})
				},
				fail : function(error) {
					console.log(error)
				},
			})
		}
		//카카오로그아웃  
		function kakaoLogout() {
			if (Kakao.Auth.getAccessToken()) {
				Kakao.API.request({
					url : '/v1/user/unlink',
					success : function(response) {
						console.log(response)
					},
					fail : function(error) {
						console.log(error)
					},
				})
				Kakao.Auth.setAccessToken(undefined)
			}
		}
	</script>

	<script>
		var naverLogin = new naver.LoginWithNaverId({
			clientId : "80mdf88flkWWJT1f93Tz", //내 애플리케이션 정보에 cliendId를 입력해줍니다.
			callbackUrl : "http://localhost:8181/naverLogin", // 내 애플리케이션 API설정의 Callback URL 을 입력해줍니다.
			isPopup : false,
			callbackHandle : true
		});

		naverLogin.init();

		window.addEventListener('load', function() {
			naverLogin.getLoginStatus(function(status) {
				if (status) {
					var email = naverLogin.user.getEmail(); // 필수로 설정할것을 받아와 아래처럼 조건문을 줍니다.

					console.log(naverLogin.user);

					if (email == undefined || email == null) {
						alert("이메일은 필수정보입니다. 정보제공을 동의해주세요.");
						naverLogin.reprompt();
						return;
					}
				} else {
					console.log("callback 처리에 실패하였습니다.");
				}
			});
		});

		var testPopUp;
		function openPopUp() {
			testPopUp = window
					.open("https://nid.naver.com/nidlogin.logout", "_blank",
							"toolbar=yes,scrollbars=yes,resizable=yes,width=1,height=1");
		}
		function closePopUp() {
			testPopUp.close();
		}

		function naverLogout() {
			openPopUp();
			setTimeout(function() {
				closePopUp();
			}, 1000);

		}
	</script>

		<%@ include file="../layout/footer.jsp"%>
