package com.cos.test.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.cos.test.model.green_notice;

public interface BoardRepository extends JpaRepository<green_notice,Integer> {

}
