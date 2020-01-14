package com.example.demo;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

@EnableJpaRepositories(basePackageClasses = UserRepository.class)
@SpringBootApplication
public class SprCldTestSecurityApplication {

	public static void main(String[] args) {
		SpringApplication.run(SprCldTestSecurityApplication.class, args);
	}

}
