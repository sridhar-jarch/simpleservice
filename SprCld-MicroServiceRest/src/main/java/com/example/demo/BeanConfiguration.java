package com.example.demo;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class BeanConfiguration {
	private String key;
	
	public  BeanConfiguration(String key)
	{
		this.key=key;
	}
}
