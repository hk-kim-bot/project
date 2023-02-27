package com.cos.test.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import com.cos.test.model.green_Users;

public interface UserRepository extends JpaRepository<green_Users,Integer> {
	Optional<green_Users> findByUsername(String username);
}
