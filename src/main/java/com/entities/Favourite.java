package com.entities;

import java.util.Date;
import com.IDclass.FavouriteID;

import jakarta.persistence.Column;
import jakarta.persistence.EmbeddedId;
import jakarta.persistence.Entity;
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
@Table(name="favourite")
public class Favourite {
	@EmbeddedId
    private FavouriteID id;
	
	@Temporal(TemporalType.DATE)
	@Column(name = "dateFavourite")
	Date dateFavourite = new Date();
}
