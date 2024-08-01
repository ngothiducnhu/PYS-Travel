package com.DAO;

import org.springframework.data.jpa.repository.JpaRepository;

import com.entities.Admin;
import com.entities.Discount;

public interface DiscountDAO extends JpaRepository<Discount, Integer>{

}
