package com.galosoft.encuentralo.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.galosoft.encuentralo.entities.Role;

public interface RoleDao extends JpaRepository<Role, Long> {

}
