package com.cos.test.service;

import java.io.File;
import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import com.cos.test.model.ProductType;
import com.cos.test.model.green_product;
import com.cos.test.model.green_shoessize;
import com.cos.test.repository.ItemRepository;
import com.cos.test.repository.itemStockRepository;




@Service
public class ItemService {
	static String url;
	
	@Autowired
	private ItemRepository itemRepository;

	@Autowired
	private itemStockRepository itemstockrepository;
	
	@Transactional
	public void 상품입력(green_product pd)  {
		pd.setStatus(ProductType.NEW);
		pd.setImg("/downloadimg/"+url);
		itemRepository.save(pd);
	}	
	@Transactional
	public void 이미지저장(MultipartFile file) throws IOException {
		file.transferTo(new File( "C:\\Users\\GREEN\\Documents\\workspace-spring-tool-suite-4-4.11.1.RELEASE\\greenshoes\\src\\main\\resources\\static\\downloadimg\\"+file.getOriginalFilename()));
		String imgaddr = file.getOriginalFilename();
		url=imgaddr;
	}

	@Transactional
	public void 상품수정(int id,green_product pd) {
		green_product referpd =itemRepository.findById(id).orElseThrow(()->{
			return new IllegalArgumentException("상품 찾기 실패");
		});
		referpd.setContents(pd.getContents());
		referpd.setImg("/downloadimg/"+url);
		referpd.setMaterial(pd.getMaterial());
		referpd.setPrice(pd.getPrice());
		referpd.setPurpose(pd.getPurpose());
		
	}
	@Transactional
	public void 상품삭제(int id) {
		itemRepository.deleteById(id);
	}
	@Transactional(readOnly=true)
	public  Page<green_product> 상품목록(Pageable pageable){
		return itemRepository.findAll(pageable);
	}
	@Transactional(readOnly=true)
	public green_product 상품상세(int id) {
		return itemRepository.findById(id).orElseThrow(()->{
			return new IllegalArgumentException("상품 상세보기 실패:상품을 찾을수없습니다.");
		});
	}
	@Transactional
	public void 재고입력(green_shoessize greenshoessize, int productid) {
		green_product refer=itemRepository.findById(productid).orElseThrow(()->{
			return new IllegalArgumentException("상품을 찾을수 없습니다.");
		});
		greenshoessize.setProduct_name(refer);
		itemstockrepository.save(greenshoessize);
	}
	@Transactional(readOnly=true)
	public Page<green_shoessize> 재고목록(Pageable pageable){
		return itemstockrepository.findAll(pageable);
	}
	@Transactional
	public green_shoessize 재고상세(int id) {
		return itemstockrepository.findById(id).orElseThrow(()->{
			return new IllegalArgumentException("재고를 찾을수 없습니다.");
		});
	}
	@Transactional
	public void 재고변경(int id,green_shoessize green_shoessize) {
		green_shoessize refer = itemstockrepository.findById(id).orElseThrow(()->{
			return new IllegalArgumentException("상품 찾기 실패");
		});
		refer.setItem_size(green_shoessize.getItem_size());
		refer.setItem_stock(green_shoessize.getItem_stock());
	}
}
