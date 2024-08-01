package com.IDclass;

import java.io.Serializable;

import com.entities.Customer;

import com.entities.Tour;

import jakarta.persistence.Embeddable;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;
@Data
@AllArgsConstructor
@NoArgsConstructor
@EqualsAndHashCode
@Embeddable
public class BookedID implements Serializable {
	@ManyToOne
    @JoinColumn(name = "TourID")
	@GeneratedValue(strategy = GenerationType.AUTO)
    private Tour tour;

    @ManyToOne
    @JoinColumn(name = "CustomerID")
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Customer customer;
}
