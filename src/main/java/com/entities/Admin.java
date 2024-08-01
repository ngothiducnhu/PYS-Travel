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
@Table(name="admins")
public class Admin implements Serializable {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	Integer AdminID;
	
	String email;
	
	@Column(name="adminName", columnDefinition = "nvarchar(50)")
	String adminName;
	
	String password;
	String phoneNumber;
	Boolean gender;
	String avatar;
	
	@OneToMany(mappedBy = "admin")
    List<Tour> tours;
	
	@OneToMany(mappedBy = "id_PR")
    List<Parent_Category> categoryId_PR;
    
    @OneToMany(mappedBy = "id_CH")
    List<Children_Category> categoryId_CH;
    
    @OneToMany(mappedBy = "DiscountID")
    List<Discount> discount;
}
