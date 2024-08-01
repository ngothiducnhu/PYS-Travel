package com.DAO;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.entities.Children_Category;

public interface Children_CategoryDAO extends JpaRepository<Children_Category, Integer> {
	
	@Query("SELECT o FROM Children_Category o WHERE o.categoryID.id_PR =  ?1")
	List<Children_Category> findByCategoryParent (String CategoryParentID);

}
