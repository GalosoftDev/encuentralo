package com.galosoft.encuentralo.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.galosoft.encuentralo.dao.UserDao;
import com.galosoft.encuentralo.entities.User;

@Service
public class UserDeatailsServiceImpl implements UserDetailsService {
	
	@Autowired
	UserDao userDao;

	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		User user = userDao.findByEmail(username);
		
		if(user==null) {
			throw new UsernameNotFoundException("User not found with email: " + user);
		}
		
		return new org.springframework.security.core.userdetails.User(user.getEmail(), 
				                                                      user.getPassword(), user.getRoles());
	}

}
