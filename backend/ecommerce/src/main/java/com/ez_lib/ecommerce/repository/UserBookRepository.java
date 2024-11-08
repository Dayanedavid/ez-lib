package com.ez_lib.ecommerce.repository;

import com.ez_lib.ecommerce.entity.Customer;
import com.ez_lib.ecommerce.entity.Order;
import com.ez_lib.ecommerce.entity.UserBook;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.web.bind.annotation.CrossOrigin;

import java.util.List;
import java.util.Optional;

@CrossOrigin("http://localhost:4200")

public interface UserBookRepository extends JpaRepository<UserBook, Long> {

    List<UserBook> findByCustomerId(Long customer);

}
