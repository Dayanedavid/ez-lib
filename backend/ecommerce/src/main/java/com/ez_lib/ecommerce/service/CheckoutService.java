package com.ez_lib.ecommerce.service;

import com.ez_lib.ecommerce.dto.Purchase;
import com.ez_lib.ecommerce.dto.PurchaseResponse;

public interface CheckoutService {

    PurchaseResponse placeOrder(Purchase orderDTO);
}
