package com.example.practice;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication
@RestController
public class PracticeApplication {
	@GetMapping("/display")
	public String Getcheck()
	{
		return "checking the get request";
	}

	public static void main(String[] args) {
		SpringApplication.run(PracticeApplication.class, args);
	}

}
