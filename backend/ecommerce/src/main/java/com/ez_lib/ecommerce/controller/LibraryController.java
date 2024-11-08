package com.ez_lib.ecommerce.controller;

import com.ez_lib.ecommerce.dto.BookDTO;
import com.ez_lib.ecommerce.dto.ResponseDTO;
import com.ez_lib.ecommerce.entity.*;
import com.ez_lib.ecommerce.repository.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@CrossOrigin("http://localhost:4200")
@RestController
@RequestMapping("/api/library")
public class LibraryController {

    @Autowired
    CustomerRepository customerRepository;

    @Autowired
    UserBookRepository userBookRepository;

    @Autowired
    BookRepository bookRepository;

    @GetMapping
    public ResponseEntity getLibrary(@RequestParam(name = "id") Long id){

        Optional<Customer> customer = this.customerRepository.findById(id);

        if(!customer.isEmpty()) {
            List<BookDTO> books = new ArrayList<>();

            List<UserBook> userBooks =userBookRepository.findByCustomerId(customer.get().getId());

            for(UserBook item : userBooks){

                books.add(bookRepository.findAllExcludingCategory(item.getBookId()));
            }

            return ResponseEntity.ok(books);
        }

        return ResponseEntity.badRequest().build();
    }
}
