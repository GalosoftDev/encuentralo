package com.galosoft.encuentralo.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.galosoft.encuentralo.entities.User;

public interface UserDao extends JpaRepository<User, Long> {

	User findByEmail(String email);
	

}
