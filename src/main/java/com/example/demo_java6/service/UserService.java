package com.example.demo_java6.service;

import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Lazy;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.oauth2.client.authentication.OAuth2AuthenticationToken;
import org.springframework.stereotype.Service;

import com.example.demo_java6.entities.Account;

@Service
public class UserService implements UserDetailsService{
	
	@Autowired
	private AccountService accountService;
	
	@Autowired
	@Lazy
	private BCryptPasswordEncoder pe;

	@Override
	public UserDetails loadUserByUsername(String email) throws UsernameNotFoundException {
		try {
			Account acc = accountService.findByEmail(email);
//			System.out.println("pass: "+pe.encode(acc.getPassword()));
//			getAuthorities().stream()
//			.map(au -> au.getRole().getName())
//			.collect(Collectors.toList()).toArray(new String[0]);
			String[] roles = acc.getAuthorities().stream()
					.map(rl -> rl.getRole().getName())
					.collect(Collectors.toList()).toArray(new String[0]);
			return User.withUsername(email)
					.password(acc.getPassword())
					.roles(roles).build();
		} catch (Exception e) {
			e.printStackTrace();
			throw new UsernameNotFoundException(email + "not found");
		}
	}
	
	public void loginFormOauth2(OAuth2AuthenticationToken oauth2) {
		String fullName = oauth2.getPrincipal().getAttribute("name");
		String email = oauth2.getPrincipal().getAttribute("email");
		String password = Long.toHexString(System.currentTimeMillis());
		
		UserDetails user = User.withUsername(email)
				.password(pe.encode(password)).roles("GUEST").build();
		Authentication auth = new UsernamePasswordAuthenticationToken(user, null, user.getAuthorities());
		SecurityContextHolder.getContext().setAuthentication(auth);
	}

}
