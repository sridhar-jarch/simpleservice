package com.example.demo;

import org.springframework.data.jpa.repository.JpaRepository;

public interface AddressRepo extends JpaRepository<Profile, Integer> {
	
	/*
	 * @Query("SELECT t FROM Address t WHERE t.profileId = ?1") List<Profile>
	 * findByProfileid(String profileId);
	 * 
	 * @Query("SELECT t FROM Address t, Profile p WHERE t.profileId = p.Id and p.userid = ?1"
	 * ) List<Profile> findByUserid(String userId);
	 */
	
}