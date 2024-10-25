package com.ez_lib.ecommerce.entity;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

import java.math.BigDecimal;



@Entity
@Table(name="order_item")
@Getter
@Setter
public class OrderItem {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="id")
    private Long id;

    @Column(name="image_url")
    private String imageUrl;

    @Column(name="price")
    private BigDecimal unitPrice;

    @Column(name="book_id")
    private Long bookId;

    @ManyToOne
    @JoinColumn(name = "order_id")
    private Order order;

}