package com.cos.test.controller.api;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.cos.test.dto.ResponseDto;
import com.cos.test.model.green_product;
import com.cos.test.model.green_shoessize;

import com.cos.test.service.ItemService;

@RestController
public class ItemControllerapi {
	@Autowired
	private ItemService itemservice;

	
	@PostMapping("/api/itemimg")
	public ResponseDto<Integer> saveimg(@RequestPart MultipartFile img) throws IOException{
		itemservice.이미지저장(img);
		return new ResponseDto<Integer>(HttpStatus.OK.value(),1);
	}
	@PostMapping("/api/item")
	public ResponseDto<Integer> save(@RequestBody green_product pd){
	itemservice.상품입력(pd);
	return new ResponseDto<Integer>(HttpStatus.OK.value(),1);
	}
	
	@PutMapping("/api/item/{id}")
	public ResponseDto<Integer> update(@PathVariable int id,@RequestBody green_product pd){
		itemservice.상품수정(id,pd);
		return new ResponseDto<Integer>(HttpStatus.OK.value(),1);
	}
	
	@DeleteMapping("/api/item/{id}")
	public ResponseDto<Integer> delete(@PathVariable int id){
		itemservice.상품삭제(id);
		return new ResponseDto<Integer>(HttpStatus.OK.value(),1);
		
	}
	@PostMapping("/api/itemsize/{productid}")
	public ResponseDto<Integer> stockinput(@PathVariable int productid,@RequestBody green_shoessize green_shoessize){
		itemservice.재고입력(green_shoessize, productid);
		return new ResponseDto<Integer>(HttpStatus.OK.value(),1);
		}
	@PutMapping("/api/itemsize/{id}")
	public ResponseDto<Integer> stockupdate(@PathVariable int id,@RequestBody green_shoessize green_shoessize){
		itemservice.재고변경(id,green_shoessize);
		return new ResponseDto<Integer>(HttpStatus.OK.value(),1);
	}

	
}
