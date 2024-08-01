package com.IDclass;

import java.io.Serializable;

import com.entities.Customer;
import com.entities.Discount;

import jakarta.persistence.Embeddable;
import jakarta.persistence.EmbeddedId;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import lombok.AllArgsConstructor;
import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@EqualsAndHashCode
@Embeddable
public class UseID implements Serializable {
	@ManyToOne
    @JoinColumn(name = "DiscountID")
	@GeneratedValue(strategy = GenerationType.AUTO)
    private Discount discount;

    @ManyToOne
    @JoinColumn(name = "CustomerID")
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Customer customer;
}
