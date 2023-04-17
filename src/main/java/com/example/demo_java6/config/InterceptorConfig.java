package com.example.demo_java6.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import com.example.demo_java6.interceptor.GlobalInterceptor;

@Configuration
public class InterceptorConfig implements WebMvcConfigurer{
	@Autowired
	GlobalInterceptor gobal;

	@Override
	public void addInterceptors(InterceptorRegistry registry) {
		registry.addInterceptor(gobal)
		.addPathPatterns("/products/**","/cart/**")
		.excludePathPatterns("/images/**","/admin/**");
	}
}
