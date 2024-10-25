package com.ez_lib.ecommerce.repository;

import com.ez_lib.ecommerce.entity.Order;
import com.ez_lib.ecommerce.entity.OrderItem;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.web.bind.annotation.CrossOrigin;

@CrossOrigin("http://localhost:4200")
public interface OrderItemRepository extends JpaRepository<OrderItem, Long> {
}