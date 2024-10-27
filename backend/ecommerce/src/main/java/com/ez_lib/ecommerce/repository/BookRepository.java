package com.ez_lib.ecommerce.repository;

import com.ez_lib.ecommerce.entity.Book;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.web.bind.annotation.CrossOrigin;

import java.util.Optional;

@CrossOrigin("https://ez-lib.onrender.com")
public interface BookRepository extends JpaRepository<Book, Long> {
    Page<Book> findByCategoryId(@Param("id") Long id, Pageable pageable);

    Page<Book> findByNameContaining(@Param("name") String name, Pageable pageable);


}
