package com.DTO;

import com.entities.Customer;
import com.entities.Rating;

import lombok.Data;

@Data
public class RateDTO {
	int customerID;
	int tourID;
	String customerName;
	String rateContent;
	int starNumber;
	String customerAvatar;
	
	public RateDTO(Rating rating) {
		this.customerID = rating.getId().getCustomer().getCustomerID();
		this.tourID = rating.getId().getTour().getTourId();
		this.customerName = rating.getId().getCustomer().getCustomerName();
		this.rateContent = rating.getContent();
		this.starNumber = rating.getStarNumber();
		this.customerAvatar = rating.getId().getCustomer().getAvatar();
	}

}
