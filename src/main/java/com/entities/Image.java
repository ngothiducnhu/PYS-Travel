package com.entities;

import java.io.Serializable;

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
@Table(name="images")
public class Image implements Serializable {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	Integer ImageID;
	
	String imageName;
	
	@ManyToOne
    @JoinColumn(name = "tourId")
    Tour tour ;
}
