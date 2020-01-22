package com.example.demo;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;
import org.springframework.web.context.annotation.RequestScope;

import lombok.Data;

@RequestScope
@Data
@Component
public class Configuration {
	@Value("${key}")
	static String key;
	
	@Value("${protocol}")
	static String protocol;
}
