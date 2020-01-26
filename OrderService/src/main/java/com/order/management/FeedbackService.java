package com.order.management;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping(value = "/feedback")
public class FeedbackService {

    @Autowired
    FeedbackRepo feedbackRepo;

    @GetMapping(value = "/all")
    public List<Feedback> getAll() {
        return feedbackRepo.findAll();
    }

    @PostMapping(value = "/load")
    public List<Feedback> persist(@RequestBody final Feedback feedback) {
        feedbackRepo.save(feedback);
        return feedbackRepo.findAll();
    }
    
    @GetMapping(value = "/order/{orderId}")
    public List<Feedback> persist(@PathVariable final Integer orderId) {
        return feedbackRepo.findByOrderid(orderId);
    }
    
    @GetMapping(value = "/agent/{agentId}")
    public List<Feedback> getOrdersByAgentId(@PathVariable final Integer agentId) {
        return feedbackRepo.findByAgentid(agentId);
    }
    
    @GetMapping(value = "/user/{userId}")
    public List<Feedback> getOrdersByUserId(@PathVariable final Integer userId) {
        return feedbackRepo.findByUserid(userId);
    }
}