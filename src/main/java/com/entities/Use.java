package com.entities;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import com.IDclass.UseID;

import jakarta.persistence.Column;
import jakarta.persistence.EmbeddedId;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.IdClass;
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
@Table(name="used")
public class Use implements Serializable {
	@EmbeddedId
    private UseID id;
	
	@Temporal(TemporalType.DATE)
	@Column(name = "dateUsed")
	Date dateUsed = new Date();
	
	
}
