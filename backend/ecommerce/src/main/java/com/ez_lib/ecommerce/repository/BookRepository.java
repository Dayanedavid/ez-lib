package com.ez_lib.ecommerce.repository;

import com.ez_lib.ecommerce.dto.BookDTO;
import com.ez_lib.ecommerce.entity.Book;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.web.bind.annotation.CrossOrigin;

@CrossOrigin("http://localhost:4200")
public interface BookRepository extends JpaRepository<Book, Long> {
    Page<Book> findByCategoryId(@Param("id") Long id, Pageable pageable);

    Page<Book> findByNameContaining(@Param("name") String name, Pageable pageable);

    @Query("SELECT new com.ez_lib.ecommerce.dto.BookDTO(b.id, b.name, b.author, b.description, b.imageUrl, b.price) FROM Book b WHERE b.id = :bookId")
    BookDTO findAllExcludingCategory(Long bookId);


}
