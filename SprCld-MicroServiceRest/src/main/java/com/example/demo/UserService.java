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
@RequestMapping(value = "/users")
public class UserService {

    @Autowired
    UserRepo userRepo;

    @GetMapping(value = "/all")
    public List<User> getAll() {
        return userRepo.findAll();
    }

    @PostMapping(value = "/load")
    public List<User> persist(@RequestBody final User user) {
        userRepo.save(user);
        return userRepo.findAll();
    }
	
    @GetMapping(value = "/{userId}")
    public Optional<User> persist(@PathVariable final Integer userId) {
        return userRepo.findById(userId);
    }
    
    @GetMapping(value = "/{userId}/email")
    public String resend(@PathVariable final Integer userId) {
    	return (userRepo.findById(userId)).orElseGet(null).getEmail();
    }
    
	@PutMapping("/{userId}")
    public User updateuser(@RequestBody User newUser, @PathVariable Integer userId) {
    	    	
    	return userRepo.findById(userId).map(user -> {
    		user.setEmail(newUser.getEmail());
    		user.setEnabled(newUser.getEnabled());
    		user.setCredentialsExpired(newUser.getCredentialsExpired());
    		user.setAccountExpired(newUser.getAccountExpired());
    		user.setAccountLocked(newUser.getAccountLocked());
    		user.setUsername(newUser.getUsername());
    		user.setPassword(newUser.getPassword());
    		return userRepo.save(user);
    	}).orElseGet(() -> {
        	newUser.setId(userId);
            return userRepo.save(newUser);
        });
   	
    }
 
    @PatchMapping("/{userId}/enable/{enabled}")
    public User enableUser(@PathVariable Integer enabled, @PathVariable Integer userId ) {
     	return userRepo.findById(userId).map(user -> {
    		user.setEnabled(enabled);
    		return userRepo.save(user);
    	}).orElseThrow(null);//handle exception that given orderId does not exist
    	
    }
    
    @PatchMapping("/{userId}/lock/{locked}")
    public User assignOrder(@PathVariable Integer locked, @PathVariable Integer userId ) {
    	return userRepo.findById(userId).map(user -> {
    		user.setAccountLocked(locked);
    		return userRepo.save(user);
    	}).orElseThrow(null);//handle exception that given orderId does not exist
    }
	
    @DeleteMapping("/{userId}")
    void deleteEmployee(@PathVariable Integer userId) {
    	userRepo.deleteById(userId);
    }
    
 }