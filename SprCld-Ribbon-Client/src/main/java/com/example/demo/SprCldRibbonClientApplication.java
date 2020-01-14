package com.example.demo;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.netflix.eureka.EnableEurekaClient;
import org.springframework.cloud.netflix.ribbon.RibbonClient;

import com.example.demo.config.RibbonConfiguration;

@RibbonClient(name = "ping-a-server", configuration = RibbonConfiguration.class)
@EnableEurekaClient
@SpringBootApplication
public class SprCldRibbonClientApplication {

	public static void main(String[] args) {
		SpringApplication.run(SprCldRibbonClientApplication.class, args);
	}

}
