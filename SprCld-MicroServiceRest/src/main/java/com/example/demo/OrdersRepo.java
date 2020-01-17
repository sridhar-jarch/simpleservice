package com.example.demo;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface OrdersRepo extends JpaRepository<Orders, Integer> {

	@Query("SELECT t FROM Orders t WHERE t.agentid = ?1")
	List<Orders> findByAgentId(String agentId);
	
	@Query("SELECT t FROM Orders t WHERE t.userid = ?1")
	List<Orders> findByUserId(String userId);
	
}