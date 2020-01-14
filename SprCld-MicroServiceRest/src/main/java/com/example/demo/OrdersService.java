package com.example.demo;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestAttribute;
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
    
	/*
	 * @GetMapping(value = "/{orderId}/validOTP") public boolean
	 * validateOTP(@PathVariable final Integer orderId, @RequestBody String OTP) {
	 * Integer sourceOTP = (orderRepo.findById(orderId)).orElseGet(null).getOTP();
	 * return sourceOTP.intValue()==new Integer(OTP).intValue()?true:false;
	 * 
	 * }
	 */
    
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
 
    @DeleteMapping("/{orderId}")
    void deleteEmployee(@PathVariable Integer orderId) {
    	orderRepo.deleteById(orderId);
    }
    
 }
