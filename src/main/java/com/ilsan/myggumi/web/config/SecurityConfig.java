package com.ilsan.myggumi.web.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter {

/*    private final MyggumiUserDetailService myggumiUserDetailService;

    @Autowired
    public SecurityConfig(MyggumiUserDetailService myggumiUserDetailService) {
        this.myggumiUserDetailService = myggumiUserDetailService;
    }
*/
    @Override
	public void configure(WebSecurity http) throws Exception {
        
    	http.ignoring().antMatchers("/**");    	
    }

    @Bean
	public PasswordEncoder passwordEncoder() {
		return new BCryptPasswordEncoder();
	}
    
}
