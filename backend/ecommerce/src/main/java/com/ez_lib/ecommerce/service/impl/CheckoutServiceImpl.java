package com.ez_lib.ecommerce.service.impl;

import com.ez_lib.ecommerce.dto.Purchase;
import com.ez_lib.ecommerce.dto.PurchaseResponse;
import com.ez_lib.ecommerce.entity.Customer;
import com.ez_lib.ecommerce.entity.Order;
import com.ez_lib.ecommerce.entity.OrderItem;
import com.ez_lib.ecommerce.entity.UserBook;
import com.ez_lib.ecommerce.repository.CustomerRepository;
import com.ez_lib.ecommerce.repository.UserBookRepository;
import com.ez_lib.ecommerce.service.CheckoutService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import java.util.UUID;

@Service
public class CheckoutServiceImpl implements CheckoutService {

    @Autowired
    private CustomerRepository customerRepository;

    @Autowired
    private UserBookRepository userBookRepository;

    @Override
    @Transactional
    public PurchaseResponse placeOrder(Purchase purchase) {

        Order order = purchase.getOrder();

        String orderTrackingNumber = generateOrderNumber();
        order.setOrderTrackingNumber(orderTrackingNumber);

        Set<OrderItem> orderItems = purchase.getOrderItems();
        orderItems.forEach(item -> order.add(item));


        Customer customer = customerRepository.findByEmail(purchase.getCustomer()).orElseThrow();
        customer.add(order);

        customerRepository.save(customer);

        List<UserBook> userBooks = new ArrayList<>();

        for(OrderItem orderItem : orderItems){
            UserBook userBook = new UserBook();
            userBook.setCustomerId(customer.getId());
            userBook.setBookId(orderItem.getBookId());
            userBooks.add(userBook);
        }

        userBooks.forEach(i -> userBookRepository.save(i));

        return new PurchaseResponse(orderTrackingNumber);
    }

    private String generateOrderNumber() {
        return String.valueOf(UUID.randomUUID());
    }
}
