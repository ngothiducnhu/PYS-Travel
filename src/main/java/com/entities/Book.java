package com.entities;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import com.IDclass.BookedID;

import jakarta.persistence.Column;
import jakarta.persistence.EmbeddedId;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.IdClass;
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
@Table(name="booked")
public class Book implements Serializable {
	@EmbeddedId
    private BookedID id;
	
	Integer quantity;
	
	Integer amount;
	
	@Temporal(TemporalType.DATE)
	@Column(name = "bookedDate")
	Date bookedDate = new Date();
	
	@Temporal(TemporalType.DATE)
	@Column(name = "departuteDate")
	Date departuteDate = new Date();
	
	
	
}
