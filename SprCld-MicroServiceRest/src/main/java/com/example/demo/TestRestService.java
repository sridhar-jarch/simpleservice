package com.example.demo;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.cloud.context.config.annotation.RefreshScope;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

	@RefreshScope
	@RestController
	public class TestRestService {
	 
		@Value("${key}")
		String key;
		
		@Value("${protocol}")
		String protocol;
	    
	    @RequestMapping("/configTesting")
		public String index() {
		   return "Configuration:" + protocol + "," + key;
		}
	    
	}