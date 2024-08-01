package com.DAO;

import org.springframework.data.jpa.repository.JpaRepository;

import com.entities.Admin;

public interface AdminDAO extends JpaRepository<Admin, Integer>{
	Admin findByEmail(String email);

}
