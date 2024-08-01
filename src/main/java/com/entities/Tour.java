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
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Entity
@AllArgsConstructor
@NoArgsConstructor
@Table(name="tours")
public class Tour implements Serializable {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	Integer tourId;
	
	@Column(name="tourname", columnDefinition = "nvarchar(225)")
	String tourName;
	
	Integer price;
	@Column(name="fromTo", columnDefinition = "nvarchar(225)")
	String fromTo;
	
	@Column(name="destination", columnDefinition = "nvarchar(225)")
	String destination;
	
	@Column(name="departureDate", columnDefinition = "nvarchar(225)")
	String departureDate;
	
	@Column(name="itinerary", columnDefinition = "nvarchar(225)")
	String itinerary;
	
	String contentTour;
	String poster;
	Boolean hot;
	
	Integer totalQuantity;
	@ManyToOne
    @JoinColumn(name = "AdminID")
    Admin admin;
	
	@OneToMany(mappedBy = "ImageID")
    List<Image> imageID;
	
	@ManyToOne
    @JoinColumn(name = "id_CH")
	Children_Category ch_id;
	
	
}
