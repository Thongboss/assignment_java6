package com.example.demo_java6;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

@SpringBootApplication
public class DemoJava6Application {

	public static void main(String[] args) {
		SpringApplication.run(DemoJava6Application.class, args);
	}

}
