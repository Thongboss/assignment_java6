package com.example.demo_java6.config;

import java.util.NoSuchElementException;
import java.util.stream.Collector;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Lazy;
import org.springframework.http.HttpMethod;
import org.springframework.security.authentication.dao.DaoAuthenticationProvider;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import com.example.demo_java6.entities.Account;
import com.example.demo_java6.service.AccountService;
import com.example.demo_java6.service.UserService;




@Configuration
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter{
	
	//https://viblo.asia/p/dang-ky-moi-voi-bao-mat-spring-ma-hoa-mat-khau-YWOZrVGYZQ0
	
	@Autowired
	AccountService accountService;
	
//	@Autowired
//	@Lazy
//	BCryptPasswordEncoder pe;
	
	@Autowired
	private UserService userService;

//	@Bean
//	public DaoAuthenticationProvider authProvider() {
//	    DaoAuthenticationProvider authProvider = new DaoAuthenticationProvider();
//	    authProvider.setUserDetailsService(userService);
//	    authProvider.setPasswordEncoder(getPasswordEncoder());
//	    
//	    return authProvider;
//	}
	
	// Cung cấp nguồn dữ liệu đăng nhập
	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception{
//		auth.authenticationProvider(authProvider());
		auth.userDetailsService(userService);
//		auth.userDetailsService(email -> {
//			System.out.println("user: "+email);
//			try {
//				Account user = accountService.findByEmail(email);
//				String pass = pe.encode(user.getPassword());
//				String [] roles = user.getAuthorities().stream()
//						.map(er -> er.getRole().getRoleId())
//						.collect(Collectors.toList()).toArray(new String[0]);
//				return User.withUsername(email).password(pass).roles(roles).build();
//			} catch (NoSuchElementException e) {
//				throw new UsernameNotFoundException(email + "Not found");
//			}
//		});
	}
	
	// phân quyền sử dụng
	@Override
	protected void configure(HttpSecurity http) throws Exception{
		http.csrf().disable();
		
		http.authorizeHttpRequests()
		.antMatchers("/orders/**").authenticated()
		.antMatchers("/admin/**").hasAnyRole("STAF","DIRE")
		.antMatchers("/rest/authorities").hasRole("DIRE")
		.anyRequest().permitAll();
		
		http.formLogin()
		.loginPage("/security/login/form")
		.loginProcessingUrl("/security/login")
		.defaultSuccessUrl("/security/login/success",false)
		.failureUrl("/security/login/fail")
		.usernameParameter("email")
		.passwordParameter("password");
		
//		http.rememberMe().rememberMeParameter("rememberme");
		
		http.rememberMe().tokenValiditySeconds(86400);
		
		http.exceptionHandling().accessDeniedPage("/security/unauthoried");
		
//		Oauth2 Đăng nhập từ mạng xã hội
        http.oauth2Login().loginPage("/security/login/form")
        .defaultSuccessUrl("/security/login/successs",true)
        .failureUrl("/security/login/error")
        .authorizationEndpoint()
        .baseUri("/oauth2/authorization");
		
		http.logout()
		.logoutUrl("/security/logoff")
		.logoutSuccessUrl("/security/logoff/success");
	}
	
	//mã hóa mật khẩu
			@Bean
			public BCryptPasswordEncoder getPasswordEncoder() {
				return new BCryptPasswordEncoder();
			}
	
	// cho phép truy xuất rest api từ bên ngoài (domain khác)
	@Override
	public void configure(WebSecurity web) throws Exception{
		web.ignoring().antMatchers(HttpMethod.OPTIONS,"/**");
	}
}
