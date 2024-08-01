package com.entities;

import java.util.Date;
import java.util.List;

import com.IDclass.RatingID;

import jakarta.persistence.Column;
import jakarta.persistence.EmbeddedId;
import jakarta.persistence.Entity;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
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
@Table(name="rating")
public class Rating {
	@EmbeddedId
    private RatingID id;
	
	@Temporal(TemporalType.DATE)
	@Column(name = "dateRating")
	Date dateRating = new Date();
	
	Integer starNumber;
	@Column(name="content", columnDefinition = "nvarchar(225)")
	String content;
	
}
