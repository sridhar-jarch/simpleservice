package com.order.management;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

public interface FeedbackRepo extends JpaRepository<Feedback, Integer> {

	List<Feedback> findByAgentid(Integer agentid);
	
	List<Feedback> findByUserid(Integer userid);
	
	List<Feedback> findByOrderid(Integer orderid);
	
}