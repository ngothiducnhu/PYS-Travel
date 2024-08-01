package com.entities;

import java.io.Serializable;
import java.util.List;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Entity
@AllArgsConstructor
@NoArgsConstructor
@Table(name="parent_categories")
public class Parent_Category implements Serializable {
	@Id
	String id_PR;
	
	@Column(name="categoryName", columnDefinition = "nvarchar(30)")
	String name;
	
	@ManyToOne
    @JoinColumn(name = "adminId")
    Admin admin;
}
