package com.example.demo;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface ProfileRepo extends JpaRepository<Profile, Integer> {
	
	@Query("SELECT t FROM Profile t WHERE t.userid = ?1")
	List<Profile> findByUserid(String userId);
}