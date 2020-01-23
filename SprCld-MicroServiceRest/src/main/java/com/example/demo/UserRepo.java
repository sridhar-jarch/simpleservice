package com.example.demo;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface UserRepo extends JpaRepository<User, Integer> {
	@Query("SELECT t FROM User t WHERE t.username = ?1")
	List<Orders> findByUserName(String userName);
}