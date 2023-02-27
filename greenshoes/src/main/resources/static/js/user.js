let index={
	init: function(){
		$("#btn-save").on("click",()=>{
			//화살표 함수사용 이유: this를 바인딩하기 위해 사용
			this.save();
		});
		
		$("#btn-update").on("click",()=>{
			//화살표 함수사용 이유: this를 바인딩하기 위해 사용
			this.update();
		});
/*
	 	$("#btn-login").on("click",()=>{
			//화살표 함수사용 이유: this를 바인딩하기 위해 사용
			this.login();
		});
*/
	},
	
	/*
	function id_check() {
			window.open("", "", "width=600, height=200, left=200, top=100");
		}
	*/
	save: function(){
	
		/*
			var username = document.getElementById("username");
			var userid = document.getElementById("userid");
			var password = document.getElementById("password");
			var pwdcheck = document.getElementById("pwdcheck");
			var birthday = document.getElementById("birthday");
			var phonenumber = document.getElementById("phonenumber");
			var email = document.getElementById("email");
			var remember_check = document.getElementById("remember_check");
			var remember_check2 = document.getElementById("remember_check2");

			if (username.value == "") {
				alert("이름을 입력하세요.");
				username.focus();
				return false;
			}
			;

			if (userid.value == "") { 
				alert("아이디를 입력하세요.");
				userid.focus(); 
				return false; 
			}
			;

			if (password.value == "") {
				alert("비밀번호를 입력하세요.");
				password.focus();
				return false;
			}
			;


			var pwdCheck = /^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{8,25}$/;

			if (!pwdCheck.test(password.value)) {
				alert("비밀번호는 영문자+숫자+특수문자 조합으로 8~25자리 사용해야 합니다.");
				pwd.focus();
				return false;
			}
			;

			if (pwdcheck.value !== password.value) {
				alert("비밀번호가 일치하지 않습니다..");
				pwdcheck.focus();
				return false;
			}
			;

			if (birthday.value == "") {
				alert("생년월일을 입력하세요.");
				birthday.focus();
				return false;
			}
			;

			var reg = /^[0-9]+/g; 

			if (!reg.test(phonenumber.value)) {
				alert("전화번호는 숫자만 입력할 수 있습니다.");
				phonenumber.focus();
				return false;
			}

			if (email.value == "") {
				alert("이메일 주소를 입력하세요.");
				email.focus();
				return false;
			}

			if (!remember_check.checked) { 
				alert("약관 동의를 체크하세요.");
				remember_check.focus();
				return false;
			}

			if (!remember_check2.checked) { 
				alert("약관 동의를 체크하세요.");
				remember_check2.focus();
				return false;
			}

			document.join_form.submit(); 
		

*/
		
		
		//alert('user의 save함수 호출됨');
		let data={
			username: $("#username").val(),
			userid: $("#userid").val(),
			password: $("#password").val(),
			email: $("#email").val(),
			birthday: $("#birthday").val(),
			phonenumber: $("#phonenumber").val()
		};
		console.log(data); 
		//console.log(JSON.stringfy(data)) json 오브젝트
		//ajax호출시 디폴트가 비동기 호출
		//ajax가 통신을 성공하고 서버가 json을 리턴해주면 자동으로 자바 오브젝트로 변환
		$.ajax({ 
			//회원가입 수행 요청 
			//(100초라 가정한다면 도중에 done이나 fail 실행 )
			type:"POST",
			url:"/auth/joinProc",
			data:JSON.stringify(data), //http body 데이터
			contentType:"application/json; charset=utf-8",
			dataType:"json" //자동으로 변환해주기 때문에 생략 가능
			//응답의 결과가 문자열이 아닌 json으로 변환
		}).done(function(resp){
			alert("회원가입이 완료되었습니다.");
			location.href="/";
			//응답이 정상
		}).fail(function(error){
			alert(JSON.stringify(error));
			//응답이 비정상
		});
		//ajax통신을 이용해서 3개의 데이터를 json으로 변경하여 insert요청!!
	},
	
	update: function(){
		let data={
			id: $("#id").val(),
			password: $("#password").val(),
			email: $("#email").val(),
			birthday: $("#birthday").val(),
			phonenumber: $("#phonenumber").val()
		};
		console.log(id);
		console.log(email);
		$.ajax({ 
			type:"PUT",
			url:"/user",
			data:JSON.stringify(data),
			contentType:"application/json; charset=utf-8",
			dataType:"json"
		}).done(function(resp){
			alert("회원수정이 완료되었습니다.");
			location.href="/";
			//응답이 정상
		}).fail(function(error){
			alert(JSON.stringify(error));
			//응답이 비정상
		});
	},
/*	
	login: function(){
		//alert('user의 save함수 호출됨');
		let data={
			username: $("#username").val(),
			password: $("#password").val()
		};

		$.ajax({ 
			type:"POST",
			url:"/api/user/login",
			data:JSON.stringify(data), //http body 데이터
			contentType:"application/json; charset=utf-8",
			dataType:"json" //자동으로 변환해주기 때문에 생략 가능
			//응답의 결과가 문자열이 아닌 json으로 변환
		}).done(function(resp){
			alert("로그인이 완료되었습니다.");
			location.href="/";
			//응답이 정상
		}).fail(function(error){
			alert(JSON.stringify(error));
			//응답이 비정상
		});
		//ajax통신을 이용해서 3개의 데이터를 json으로 변경하여 insert요청!!
	}
*/
}
index.init();