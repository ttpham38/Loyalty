package com.dxc;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication(scanBasePackages = "com.dxc")
@ComponentScan
@EnableAutoConfiguration
public class LoyaltyDxcProjectApplication {

	public static void main(String[] args) {
		SpringApplication.run(LoyaltyDxcProjectApplication.class, args);
	}
	
}

