package com.ilsan.myggumi;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.FilterRegistrationBean;
import org.springframework.boot.web.support.ErrorPageFilter;
import org.springframework.boot.web.support.SpringBootServletInitializer;
import org.springframework.context.annotation.Bean;

@SpringBootApplication
public class MyggumiApplication extends SpringBootServletInitializer{

	public static void main(String[] args) {
		SpringApplication.run(MyggumiApplication.class, args);
	}
	
    @Override
    protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
        // 스프링 환경 구성 클래스 지정
        return application.sources(MyggumiApplication.class);
    }
    
/*    @Bean
    public ErrorPageFilter errorPageFilter() {
    	return errorPageFilter();
    }
    
    @Bean
    public FilterRegistrationBean disableSpringBootErrorFilter(ErrorPageFilter filter) {
    	FilterRegistrationBean filterRegistrationBean = new FilterRegistrationBean();
    	filterRegistrationBean.setFilter(filter);
    	filterRegistrationBean.setEnabled(false);
    	return filterRegistrationBean;
    }*/
    
    
}
