package com.DAO;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.IDclass.RatingID;
import com.entities.Rating;

public interface RatingDAO extends JpaRepository<Rating, RatingID> {
	
	@Query("SELECT o  FROM Rating o WHERE o.starNumber = 5")
	List<Rating> findAllFiveStarsRating();

}
