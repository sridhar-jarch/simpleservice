package com.user.management;


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
@RequestMapping(value = "/Profile")
public class ProfileService {

    @Autowired
    ProfileRepo profileRepo;

    @GetMapping(value = "/all")
    public List<Profile> getAll() {
        return profileRepo.findAll();
    }

    @PostMapping(value = "/load")
    public List<Profile> persist(@RequestBody final Profile profile) {
        profileRepo.save(profile);
        return profileRepo.findAll();
    }
	
    @GetMapping(value = "/{profileId}")
    public Optional<Profile> persist(@PathVariable final Integer profileId) {
        return profileRepo.findById(profileId);
    }
        
    @GetMapping(value = "/user/{userId}")
    public List<Profile> getProfileByUserId(@PathVariable final String userId) {
        return profileRepo.findByUserid(userId);
    }
        
	@PutMapping("/{profileId}")
    public Profile updateOrder(@RequestBody Profile newProfile, @PathVariable Integer profileId) {
    	    	
    	return profileRepo.findById(profileId).map(profile -> {
    		profile.setActive(newProfile.getActive());
    		profile.setDate(newProfile.getDate());
    		profile.setEmail(newProfile.getEmail()); 
    		profile.setFullname(newProfile.getFullname());
    		profile.setNickname(newProfile.getNickname());
    		profile.setPhone(newProfile.getPhone());
    		profile.setUserid(newProfile.getUserid());
    		return profileRepo.save(profile);
    	}).orElseGet(() -> {
        	newProfile.setId(profileId);
            return profileRepo.save(newProfile);
        });
   	
    }
    
    @PatchMapping("/{orderId}/phone/{phone}")
    public Profile updatePhone(@PathVariable Integer profileId, @PathVariable String phone) {
    
    	return profileRepo.findById(profileId).map(order -> {
    		order.setPhone(phone);
    		return profileRepo.save(order);
    	}).orElseThrow(null);//handle exception that given orderId does not exist
    	
    }
    
    @DeleteMapping("/{profileId}")
    void deleteEmployee(@PathVariable Integer profileId) {
    	profileRepo.deleteById(profileId);
    }
    
 }