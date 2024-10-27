package com.ez_lib.ecommerce.controller;

import com.ez_lib.ecommerce.dto.Purchase;
import com.ez_lib.ecommerce.dto.PurchaseResponse;
import com.ez_lib.ecommerce.service.CheckoutService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@CrossOrigin("https://ez-lib.onrender.com")
@RestController
@RequestMapping("/api/checkout")
public class CheckoutController {

    @Autowired
    private CheckoutService checkoutService;

    @PostMapping("/purchase")
    public PurchaseResponse placeOrder(@RequestBody Purchase orderDTO) {

        PurchaseResponse orderResponse = checkoutService.placeOrder(orderDTO);

        return orderResponse;
    }
}
