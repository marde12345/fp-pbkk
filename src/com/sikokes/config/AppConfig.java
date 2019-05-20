//package com.sikokes.config;
//
//import org.springframework.context.annotation.Bean;
//import org.springframework.context.annotation.ComponentScan;
//import org.springframework.context.annotation.Configuration;
//import org.springframework.web.servlet.ViewResolver;
//import org.springframework.web.servlet.config.annotation.EnableWebMvc;
//import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
//import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
//import org.springframework.web.servlet.view.InternalResourceViewResolver;
//
//@Configuration
//@EnableWebMvc
//@ComponentScan(basePackages = "com.sikokes")
//public class AppConfig implements WebMvcConfigurer{
//
//	@Bean
//	public ViewResolver viewResolver() {
//
//		InternalResourceViewResolver internalResourceViewResolver = new InternalResourceViewResolver();
//
//		internalResourceViewResolver.setPrefix("/WEB-INF/view/");
//		internalResourceViewResolver.setSuffix(".jsp");
//
//		return internalResourceViewResolver;
//
//	}
//	
//	@Override
//	public void addResourceHandlers(ResourceHandlerRegistry registry) {
//		registry.addResourceHandler("/resources/**").addResourceLocations("/WEB-INF/resources/");
//	}
//
//}
