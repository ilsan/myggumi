package com.ilsan.myggumi.web.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.servlet.resource.PathResourceResolver;

@Configuration
public class StaticResourceConfiguration extends WebMvcConfigurerAdapter{
	  private static final String[] CLASSPATH_RESOURCE_LOCATIONS = { 
		      "classpath:/static/"
			  
		       };


	  @Override
	  public void addResourceHandlers(ResourceHandlerRegistry registry) {
		  registry
		  .addResourceHandler("/**")
		  .addResourceLocations(CLASSPATH_RESOURCE_LOCATIONS)
		  .setCachePeriod(3600)
		  .resourceChain(true)
		  .addResolver(new PathResourceResolver());
	}
}
