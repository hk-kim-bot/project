package com.cos.test.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.cos.test.model.green_product;
import com.cos.test.model.green_shoessize;

public interface itemStockRepository extends JpaRepository<green_shoessize,Integer>{

	
	List<green_shoessize>  findAllByProduct(green_product refer);



	


		
}
