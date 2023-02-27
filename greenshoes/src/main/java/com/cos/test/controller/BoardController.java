package com.cos.test.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.web.PageableDefault;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.cos.test.service.BoardService;

@Controller
public class BoardController {
	
	@Autowired
	private BoardService boardService;
	
	@GetMapping({"","/"})
	public String index() {
		return "index";
	}
	
	@GetMapping({"/board/saveForm"})
	public String saveForm() {
		return "board/saveForm";
	}
	
//	@GetMapping("/board/csboard")
//	public String index(Model model) {
//		model.addAttribute("boards",boardService.글목록());
//		return "board/cs";
//	}
	
	
	
	@GetMapping("/board/csboard")
	public String index(Model model,@PageableDefault(size= 3, sort = "id",
	direction = Sort.Direction.DESC) Pageable pageable) {
		model.addAttribute("boards",boardService.글목록(pageable));		
		return "board/cs";
	}
	
	@GetMapping("/board/{id}")
	public String findById(@PathVariable int id, Model model) {
		model.addAttribute("board",boardService.글상세보기(id));
		return "board/detail";
	}
	
	@GetMapping("/board/{id}/updateForm")
	public String UpdateForm(@PathVariable int id,Model model) {
		model.addAttribute("board",boardService.글상세보기(id));
		return "board/updateForm";
	}
	
	
}
