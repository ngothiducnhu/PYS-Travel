package com.entities;

import java.io.Serializable;

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
@Table(name="children_categories")
public class Children_Category implements Serializable{
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	Integer id_CH;
	
	@Column(name="categoryName", columnDefinition = "nvarchar(30)")
	String name;
	
	@ManyToOne
    @JoinColumn(name = "Adminid")
    Admin admin;
	
	@ManyToOne
    @JoinColumn(name = "id_PR")
    Parent_Category categoryID;
}
