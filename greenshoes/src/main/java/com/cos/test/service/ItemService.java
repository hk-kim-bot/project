package com.cos.test.service;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import com.cos.test.model.ProductType;
import com.cos.test.model.green_img;
import com.cos.test.model.green_product;
import com.cos.test.model.green_shoessize;
import com.cos.test.repository.ItemRepository;
import com.cos.test.repository.itemStockRepository;
import com.cos.test.repository.itemimgrepository;




@Service
public class ItemService {
	static String url;
	
	@Autowired
	private ItemRepository itemRepository;

	@Autowired
	private itemStockRepository itemstockrepository;
	@Autowired
	private itemimgrepository itemimgrepository;	
	
	static green_img green;	
	
	
	@Transactional
	public void 상품입력(green_product pd)  {
		
		pd.setStatus(ProductType.NEW);
		pd.setImg("/downloadimg/"+url);
		itemRepository.save(pd);
	}	
	@Transactional
	public void 이미지저장(MultipartFile file) throws IOException {
		UUID uuid= UUID.randomUUID();//랜덤문자 생성
		file.transferTo(new File( "C:\\Users\\GREEN\\Documents\\workspace-spring-tool-suite-4-4.11.1.RELEASE\\greenshoes\\src\\main\\resources\\static\\downloadimg\\"+uuid.toString()+file.getOriginalFilename()));
		String imgaddr =uuid.toString()+file.getOriginalFilename();//이미지 이름 저장할 방법 생각하기
		url=imgaddr;
	}
	@Transactional
	public void 다중이미지저장(int id, MultipartFile[] files) {
		green_product product =itemRepository.findById(id).orElseThrow(()->{
			return new IllegalArgumentException("상품 상세보기 실패:상품을 찾을수없습니다.");
		});
		green=new green_img();
		green.setProduct(product);
		for(int i=0;i<files.length;i++) {
			try {
				UUID uuid= UUID.randomUUID();//랜덤문자 생성
				files[i].transferTo(new File( "C:\\Users\\GREEN\\Documents\\workspace-spring-tool-suite-4-4.11.1.RELEASE\\greenshoes\\src\\main\\resources\\static\\downloadimg\\"+uuid.toString()+files[i].getOriginalFilename()));
				String imgname = uuid.toString()+files[i].getOriginalFilename();
				selectimgnumber(i,imgname);
			} catch (IllegalStateException | IOException e) {
				e.printStackTrace();
			}
			
		}//여기에 이미지 이름 변경
		itemimgrepository.save(green);
		
	}
	public void selectimgnumber(int i,String imgname) {
		
		boolean condi= true;
		while(condi) {
			switch(i) {
			case 0:{
				green.setSubimg0("/downloadimg/"+imgname);
				condi=false;
				break;
			}
			case 1:{
				green.setSubimg1("/downloadimg/"+imgname);
				condi=false;
				break;
			}
			case 2:{
				green.setSubimg2("/downloadimg/"+imgname);
				condi=false;
				break;
			}
			case 3:{
				green.setSubimg3("/downloadimg/"+imgname);
				condi=false;
				break;
			}
			case 4:{
				green.setSubimg4("/downloadimg/"+imgname);
				condi=false;
				break;
			}
			case 5:{
				green.setSubimg5("/downloadimg/"+imgname);
				condi=false;
				break;
			}
			}
		}
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
