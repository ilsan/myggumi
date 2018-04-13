package com.ilsan.myggumi.web.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.view.UrlBasedViewResolver;
import org.springframework.web.servlet.view.tiles3.TilesConfigurer;
import org.springframework.web.servlet.view.tiles3.TilesView;

@Configuration
public class TilesConfiguration {
	
	@Bean
	public TilesConfigurer tilesConfigurer() {
		
		final TilesConfigurer configurer = new TilesConfigurer();
		
		//configurer.setDefinitions(new String[] {"WEB-INF/tiles.xml"});
		configurer.setDefinitions(new String[] {"classpath:/static/tiles.xml"});
		configurer.setCheckRefresh(true);
		
		return configurer;
	}
	
	@Bean
	public UrlBasedViewResolver tilesViewResolver() {
		
		UrlBasedViewResolver resolver = new UrlBasedViewResolver();
		resolver.setViewClass(TilesView.class);
		
		return resolver;
	}
}
