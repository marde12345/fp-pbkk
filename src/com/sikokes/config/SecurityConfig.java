package com.sikokes.config;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.User.UserBuilder;

@Configuration
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter {
	
	@Autowired
	private CustomSuccessAuthHandler successHandler ;
	
	@Autowired
	private DataSource dataSource;
	
	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
		UserBuilder users = User.withDefaultPasswordEncoder();
		
		auth.jdbcAuthentication().dataSource(dataSource)
		.usersByUsernameQuery("select username,password,enabled from user where username=?")
		.authoritiesByUsernameQuery("select username,role from role where username=?");
	}

	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http.authorizeRequests().antMatchers("/resources/**").permitAll()
			.antMatchers("/doktor/**").hasRole("DOKTOR")
			.antMatchers("/pasien/**").hasRole("PASIEN")
			.and()
			.formLogin().successHandler(successHandler).loginPage("/showLogin").loginProcessingUrl("/authenticateUser").permitAll()
			.and()
			.logout().permitAll()
			.and()
			.exceptionHandling().accessDeniedPage("/access-denied");
	}

}
