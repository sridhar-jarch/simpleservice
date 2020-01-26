package com.order.management;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping(value = "/sr")
public class ServiceRequestService {

    @Autowired
    ServiceRequestRepo serviceRequestRepo;

    @GetMapping(value = "/all")
    public List<ServiceRequest> getAll() {
        return serviceRequestRepo.findAll();
    }

    @PostMapping(value = "/load")
    public List<ServiceRequest> persist(@RequestBody final ServiceRequest serviceRequest) {
        serviceRequestRepo.save(serviceRequest);
        return serviceRequestRepo.findAll();
    }
	
    @GetMapping(value = "/{serviceRequestId}")
    public Optional<ServiceRequest> persist(@PathVariable final Integer serviceRequestId) {
        return serviceRequestRepo.findById(serviceRequestId);
    }
    
    @GetMapping(value = "/active/{active}")
    public List<ServiceRequest> getServiceRequestByAgentId(@PathVariable final String active) {
        return serviceRequestRepo.findByActive(active);
    }
    
    @GetMapping(value = "/user/{userId}")
    public List<ServiceRequest> getServiceRequestByUserId(@PathVariable final String userId) {
        return serviceRequestRepo.findByUserId(userId);
    }
        
    @PutMapping("/{serviceRequestId}")
    public ServiceRequest updateserviceRequest(@RequestBody ServiceRequest newServiceRequest, @PathVariable Integer serviceRequestId) {
    	    	
    	return serviceRequestRepo.findById(serviceRequestId).map(serviceRequest -> {
    		serviceRequest.setDate(newServiceRequest.getDate());
    		serviceRequest.setActive(newServiceRequest.getActive());
    		serviceRequest.setOrderid(newServiceRequest.getOrderid());
    		serviceRequest.setServiceType(newServiceRequest.getServiceType());
    		serviceRequest.setUserid(newServiceRequest.getUserid());
    		return serviceRequestRepo.save(serviceRequest);
    	}).orElseGet(() -> {
        	newServiceRequest.setId(serviceRequestId);
            return serviceRequestRepo.save(newServiceRequest);
        });
   	
    }
    
    @DeleteMapping("/{serviceRequestId}")
    void deleteEmployee(@PathVariable Integer serviceRequestId) {
    	serviceRequestRepo.deleteById(serviceRequestId);
    }
    
 }