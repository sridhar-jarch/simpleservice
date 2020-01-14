package com.example.demo;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.config.server.EnableConfigServer;

import com.jcraft.jsch.ConfigRepository.Config;

@SpringBootApplication
@EnableConfigServer
public class SprCldApplication {

	public static void main(String[] args) {
		SpringApplication.run(SprCldApplication.class, args);
	}

}