package com.ez_lib.ecommerce.dto;

import com.ez_lib.ecommerce.entity.Customer;
import com.ez_lib.ecommerce.entity.Order;
import com.ez_lib.ecommerce.entity.OrderItem;
import lombok.Data;

import java.util.HashSet;
import java.util.Set;

@Data
public class Purchase {

    private String customer;
    private Order order;
    private Set<OrderItem> orderItems;


}
