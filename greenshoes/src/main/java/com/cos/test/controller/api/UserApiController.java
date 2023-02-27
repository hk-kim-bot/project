package com.cos.test.controller.api;




import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.cos.test.dto.ResponseDto;
import com.cos.test.model.green_Users;
import com.cos.test.service.UserService;

@RestController
public class UserApiController {
		
	
	@Autowired
	private UserService userService;
	@PostMapping("/auth/joinProc")//회원가입 로직이 실행되는 부분
	public ResponseDto<Integer> save(@RequestBody green_Users user) {
		System.out.println("UserApiController호출됨");
		//user.setRoles(RoleType.USER);
		//실제로 DB에 insert를 하고 아래에서(1자리에) return이 된다.
		userService.회원가입(user);
		return new ResponseDto<Integer>(HttpStatus.OK.value(),1);
		//result가 1이면 성공, -1이면 실패
		//자바 오브젝트를 리턴받아옴
	}
//	@PostMapping("/api/user/login")//회원가입 로직이 실행되는 부분
//	public ResponseDto<Integer> login(@RequestBody Users user, HttpSession session) {
//		System.out.println("UserApiController - login 호출됨");
//		Users principal = userService.로그인(user);
//		System.out.println(principal);
//		if(principal !=null) {
//			session.setAttribute("principal", principal);
//			return new ResponseDto<Integer>(HttpStatus.OK.value(),1);
//		}else {
//			return new ResponseDto<Integer>(HttpStatus.OK.value(),-1); 
//		}
//	}

	//회원정보수정
		@PutMapping("/user")
		public ResponseDto<Integer> update(@RequestBody green_Users user) {
			//json 형태를 받기위한 RequestBody
			userService.회원수정(user);
			
			return new ResponseDto<Integer>(HttpStatus.OK.value(),1);
		}
}
