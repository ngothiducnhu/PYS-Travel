package com.DTO;

import com.entities.Admin;
import com.entities.Customer;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class AccountDTO {
	int id;
	String name;
	String email;
	String phone;
	boolean gender;
	boolean admin;
	String avatar;
	
	public AccountDTO(Customer customer, Admin admin) {
		if(customer == null) {
			this.id = admin.getAdminID();
			this.name=admin.getAdminName();
			this.email=admin.getEmail();
			this.phone=admin.getPhoneNumber();
			this.gender=admin.getGender();
			this.admin=true;
			this.avatar=admin.getAvatar();
		}else {
			this.id = customer.getCustomerID();
			this.name=customer.getCustomerName();
			this.email=customer.getEmail();
			this.phone=customer.getPhoneNumber();
			this.gender=customer.getGender();
			this.admin=false;
			this.avatar=customer.getAvatar();
		}
	}
	
}
