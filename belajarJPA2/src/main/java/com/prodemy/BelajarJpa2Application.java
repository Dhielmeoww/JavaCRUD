package com.prodemy;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication
@RestController
public class BelajarJpa2Application {

	public static void main(String[] args) {
		SpringApplication.run(BelajarJpa2Application.class, args);
	}
	
	@RequestMapping("/")
	public String hello() {
		return "Hello spring boot";
	}

}
