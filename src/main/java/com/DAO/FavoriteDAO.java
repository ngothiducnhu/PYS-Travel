package com.DAO;

import org.springframework.data.jpa.repository.JpaRepository;

import com.IDclass.FavouriteID;
import com.entities.Favourite;

public interface FavoriteDAO extends JpaRepository<Favourite, FavouriteID> {

}
