package com.vikas.patientportal.security;

import org.springframework.boot.SpringBootConfiguration;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.password.NoOpPasswordEncoder;

@Configuration
@EnableWebSecurity
public class SpringSecurity extends WebSecurityConfigurerAdapter{
	
	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
		// TODO Auto-generated method stub
		auth.inMemoryAuthentication().passwordEncoder(NoOpPasswordEncoder.getInstance()).withUser("vikas").password("12345").roles("USER");
	}

	@Override
	protected void configure(HttpSecurity http) throws Exception {
		
		http.antMatcher("/**").authorizeRequests().anyRequest().hasRole("USER")
		.and().formLogin().loginPage("/login")
		.failureUrl("/login?error=1").loginProcessingUrl("/login")
		.permitAll().and().logout()
		.logoutSuccessUrl("/");
		
	}
	
	
}
