package com.example.demo;

import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.circuitbreaker.EnableCircuitBreaker;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;
import org.springframework.cloud.netflix.hystrix.dashboard.EnableHystrixDashboard;
import org.springframework.cloud.netflix.ribbon.RibbonClient;
import org.springframework.context.annotation.Bean;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestTemplate;

import com.netflix.hystrix.contrib.javanica.annotation.HystrixCommand;

import springfox.documentation.swagger2.annotations.EnableSwagger2;

@SpringBootApplication
@EnableSwagger2
@EnableHystrixDashboard
@EnableCircuitBreaker
@EnableDiscoveryClient
@RestController
@RibbonClient(name = "ping-a-server", configuration = RibbonConfiguration.class)
public class SprCldMicroServiceRestApplication {
	
	   private static final Logger LOG = Logger.getLogger(SprCldMicroServiceRestApplication.class.getName());
	    
	//@LoadBalanced
	@Bean
	RestTemplate getRestTemplate() {
	    return new RestTemplate();
	}
	
	@Autowired
	RestTemplate restTemplate;
	
	@Value("${key}")
	String key1;
	
	@Value("${protocol}")
	String protocol;
	
	@Autowired
	private Configuration configuration;
	
	@RequestMapping("/server-location")
	@HystrixCommand(fallbackMethod = "serverLocation_Fallback")
	public String serverLocation() {
	    String servLoc = this.restTemplate.getForObject(protocol + "://ip-api.com/json/202.89.106.203", String.class); //3
	    return servLoc;
	}
	
	@RequestMapping("/sleuthTesting")
	public String index() {
	   LOG.log(Level.INFO, "Index API is calling");
	   return "Welcome Sleuth!" + protocol;
	}
	
	@SuppressWarnings("unused")
	private String serverLocation_Fallback() {
		 
       System.out.println("Hitec City, Hyderabad");
 
       return "CIRCUIT BREAKER ENABLED!!! No Response From Service Location at this moment. " +
                    " Service will be back shortly - " + new Date();
    }
	
	@Bean
	public org.springframework.cloud.sleuth.sampler.SamplerAutoConfiguration defaultSampler() {
	   return new org.springframework.cloud.sleuth.sampler.SamplerAutoConfiguration();
	}
	
	public static void main(String[] args) {
		SpringApplication.run(SprCldMicroServiceRestApplication.class, args);
	}

}
