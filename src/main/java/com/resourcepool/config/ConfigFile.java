package com.resourcepool.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

@Configuration
@ComponentScan({"com.resourcepool"})
public class ConfigFile {
	
	
	/**
	 * This is used to display jsp pages on the browser by setting up the 
	 * Views folder inside WEB_INF folder
	 * @return
	 */
	@Bean
	public ViewResolver viewResolver() {

		InternalResourceViewResolver viewResolver = new InternalResourceViewResolver();

		viewResolver.setPrefix("WEB-INF/Views/");
		viewResolver.setSuffix(".jsp");	
		return viewResolver;
	}
	
	
	
}
