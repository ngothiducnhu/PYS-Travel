package com.entities;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import jakarta.persistence.Temporal;
import jakarta.persistence.TemporalType;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Entity
@AllArgsConstructor
@NoArgsConstructor
@Table(name="discounts")
public class Discount implements Serializable {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	Integer DiscountID;
	
	String code;
	
	Integer value;
	
	@Temporal(TemporalType.DATE)
	@Column(name = "fromdate")
	Date fromDate = new Date();
	
	@Temporal(TemporalType.DATE)
	@Column(name = "todate")
	Date toDate = new Date();
	
	@ManyToOne
    @JoinColumn(name = "AdminId")
    Admin admin;
	
	
	
	
	
}
