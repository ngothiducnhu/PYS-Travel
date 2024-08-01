package com.DAO;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.IDclass.UseID;
import com.entities.Use;

public interface UseDAO extends JpaRepository<Use, UseID> {
	@Query("SELECT o FROM Use o WHERE o.id.customer.CustomerID = ?1 and o.id.discount.DiscountID = ?2")
	Use findByCustomerAndDiscount (int customerID, int discountID);

}
