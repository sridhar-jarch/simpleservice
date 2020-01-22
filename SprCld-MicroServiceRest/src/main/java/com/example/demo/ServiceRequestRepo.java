package com.example.demo;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface ServiceRequestRepo extends JpaRepository<ServiceRequest, Integer> {

	@Query("SELECT t FROM ServiceRequest t WHERE t.active = ?1")
	List<ServiceRequest> findByActive(String active);
	
	@Query("SELECT t FROM ServiceRequest t WHERE t.userid = ?1")
	List<ServiceRequest> findByUserId(String userId);

}