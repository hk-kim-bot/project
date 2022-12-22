package com.cos.test.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.cos.test.model.green_product;

public interface ItemRepository extends JpaRepository<green_product,Integer> {

}
