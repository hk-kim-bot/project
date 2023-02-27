package com.cos.test.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class UserController {
	@GetMapping("/auth/joinForm")
	public String joinForm() {
		return "user/joinForm";
	}
	@GetMapping("/auth/loginForm")
	public String loginForm() {
		return "user/loginForm";
	}
	@GetMapping("/auth/main")
	public String main() {
		return "index";
	}
	
	
	
	@GetMapping("/user/updateForm")
	public String updateForm() {
		return "user/updateForm";
	}
	
	
	
	
	@GetMapping("/user/mypage")
	public String mypage() {
		return "user/mypage";
	}
	@GetMapping("/")
	public String Form() {
		return "index";
	}
	@GetMapping("/blog")
	public String blog() {
		return "index";
	}
	
	
}
