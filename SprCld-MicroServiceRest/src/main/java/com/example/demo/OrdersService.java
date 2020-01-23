package com.example.demo;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PatchMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping(value = "/orders")
public class OrdersService {

    @Autowired
    OrdersRepo orderRepo;

    @GetMapping(value = "/all")
    public List<Orders> getAll() {
        return orderRepo.findAll();
    }

    @PostMapping(value = "/load")
    public List<Orders> persist(@RequestBody final Orders order) {
        orderRepo.save(order);
        return orderRepo.findAll();
    }
	
    @GetMapping(value = "/{orderId}")
    public Optional<Orders> persist(@PathVariable final Integer orderId) {
        return orderRepo.findById(orderId);
    }
    
    @GetMapping(value = "/agent/{agentId}")
    public List<Orders> getOrdersByAgentId(@PathVariable final String agentId) {
        return orderRepo.findByAgentId(agentId);
    }
    
    @GetMapping(value = "/user/{userId}")
    public List<Orders> getOrdersByUserId(@PathVariable final String userId) {
        return orderRepo.findByUserId(userId);
    }
    
    
    @GetMapping(value = "/{orderId}/resend")
    public Integer resend(@PathVariable final Integer orderId) {
    	Integer sourceOTP = (orderRepo.findById(orderId)).orElseGet(null).getOTP();
    	return sourceOTP;
    }
    
	@PostMapping(value = "/{orderId}/validOTP") 
	public boolean validateOTP(@PathVariable final Integer orderId, @RequestBody String OTP) {
		Integer sourceOTP = (orderRepo.findById(orderId)).orElseGet(null).getOTP();
		return sourceOTP.intValue()==new Integer(OTP).intValue()?true:false;
	}
	
    @PutMapping("/{orderId}")
    public Orders updateOrder(@RequestBody Orders newOrder, @PathVariable Integer orderId) {
    	    	
    	return orderRepo.findById(orderId).map(order -> {
    		order.setDescription(newOrder.getDescription());
    		order.setDate(newOrder.getDate());
    		order.setTime(newOrder.getTime());
    		order.setOTP(newOrder.getOTP());
    		order.setComments(newOrder.getComments());
    		order.setStatus(newOrder.getStatus());
    		return orderRepo.save(order);
    	}).orElseGet(() -> {
        	newOrder.setId(orderId);
            return orderRepo.save(newOrder);
        });
   	
    }
    
    @PatchMapping("/{orderId}")
    public Orders changeOrderStatus(@RequestBody OrderStatus orderstatus, @PathVariable Integer orderId) {
    
    	return orderRepo.findById(orderId).map(order -> {
    		order.setDescription(orderstatus.getStatus());
    		order.setDate(orderstatus.getDate());
    		order.setStatus(orderstatus.getStatus());
    		return orderRepo.save(order);
    	}).orElseGet(() -> {
    		orderstatus.setId(orderId);
    		return orderRepo.save(new Orders(orderstatus));
        });
    	
    }
    
    @PatchMapping("/{orderId}/assign/{agentId}")
    public Orders assignOrder(@PathVariable Integer orderId, @PathVariable String agentId ) {
    
    	return orderRepo.findById(orderId).map(order -> {
    		order.setAgentid(agentId);
    		return orderRepo.save(order);
    	}).orElseThrow(null);//handle exception that given orderId does not exist
    	
    }
    
    @PatchMapping("/{orderId}/approve/{approved}")
    public Orders enableUser(@PathVariable Integer approved, @PathVariable Integer orderId ) {
     	return orderRepo.findById(orderId).map(order -> {
    		order.setApproved(approved);
    		return orderRepo.save(order);
    	}).orElseThrow(null);//handle exception that given orderId does not exist
    	
    }
    
    @DeleteMapping("/{orderId}")
    void deleteEmployee(@PathVariable Integer orderId) {
    	orderRepo.deleteById(orderId);
    }
    
 }