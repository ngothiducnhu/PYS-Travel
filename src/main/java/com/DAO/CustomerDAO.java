package com.DAO;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.entities.Customer;

public interface CustomerDAO extends JpaRepository<Customer, Integer>{
	Customer findByEmail(String email);
	
	@Query("SELECT MAX(o.CustomerID) FROM Customer o")
	int getMaxID();
	
	

}
