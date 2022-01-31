package com.devsuperior.dslearnbds.services;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.oauth2.common.exceptions.UnauthorizedClientException;
import org.springframework.stereotype.Service;

import com.devsuperior.dslearnbds.entities.User;
import com.devsuperior.dslearnbds.repositories.UserRepository;
import com.devsuperior.dslearnbds.services.exceptions.ForbiddenException;

@Service
public class AuthService {
	
	@Autowired
	private UserRepository userRepository;
	
	@Transactional()
	public User authenticated() {
		try {
			String username = SecurityContextHolder.getContext().getAuthentication().getName();
			return userRepository.findByEmail(username);
		}
		catch (Exception e) {
			throw new UnauthorizedClientException("Invalid user");
		}
	}
	
	public void validadeSelfOrAdmin(Long UserId) {
		User user = authenticated();
		if (!user.getId().equals(UserId) && !user.hasHole("ROLE_ADMIN")){// não for admin) 
			throw new ForbiddenException("Access denied");
		}
	}
}
	
