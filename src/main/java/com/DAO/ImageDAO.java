package com.DAO;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.entities.Admin;
import com.entities.Image;

public interface ImageDAO extends JpaRepository<Image, Integer>{
	@Query("SELECT o FROM Image o WHERE o.tour.tourId = ?1")
	List<Image> findByTourID(int id);
}
