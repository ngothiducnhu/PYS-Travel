package com.DAO;

import org.springframework.data.jpa.repository.JpaRepository;

import com.IDclass.BookedID;
import com.entities.Book;

public interface BookDAO extends JpaRepository<Book, BookedID> {

}
