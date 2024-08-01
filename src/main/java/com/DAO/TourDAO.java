package com.DAO;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.entities.Tour;

public interface TourDAO extends JpaRepository<Tour, Integer>{
	
	@Query("SELECT o FROM Tour o WHERE o.ch_id.categoryID.name = ?1 and o.hot = true")
	public List<Tour> findByCategoryNameAndHot(String categoryName);
	
	@Query("SELECT MAX(o.tourId) FROM Tour o")
	public int findMaxId();
	
	@Query("SELECT o FROM Tour o WHERE o.fromTo LIKE ?1 AND o.tourName LIKE ?2")
	public Page<Tour> findByFromAndName(String from,String name, Pageable pageable);
	
	@Query("SELECT o FROM Tour o WHERE o.ch_id.name LIKE ?1 AND o.ch_id.categoryID.name LIKE ?2")
	public List<Tour> findByCategoryChildrenNameAndCategoryNam(String categoryChildrenName, String categoryName);
	

}
