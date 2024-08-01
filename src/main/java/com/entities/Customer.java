package com.entities;

import java.io.Serializable;
import java.util.List;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Entity
@AllArgsConstructor
@NoArgsConstructor
@Table(name="Customers")
public class Customer implements Serializable{
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	Integer CustomerID;
	
	String email;
	
	@Column(name="customerName", columnDefinition = "nvarchar(50)")
	String customerName;
	
	String password;
	String phoneNumber;
	Boolean gender;
	String avatar;
	
}
