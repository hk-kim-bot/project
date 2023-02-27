package com.cos.test.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class testController {

	@GetMapping("/user/login")
	public String login() {
		return "user/login";
	}
	@GetMapping("/user/join")
	public String join() {
		return "user/join";
	}
//	@GetMapping("/board/csboard")
//	public String csboard() {
//		return "board/cs";
//	}
	@GetMapping("/main")
	public String main() {
		return "index";
	}
//	@GetMapping("/user/mypage")
//	public String mypage() {
//		return "user/mypage";
//	}
	@GetMapping("/board/event")
	public String eventpage() {
		return "board/event";
	}
	@GetMapping("/manager/item")
	public String manager(@RequestParam int id ,HttpServletRequest request) {
		HttpSession session = request.getSession();
		session.setAttribute("page", id);
		return "manager/manager";
	}
	
	@GetMapping("/user/out")
	public String out() {
		return "user/out";
	}
}
