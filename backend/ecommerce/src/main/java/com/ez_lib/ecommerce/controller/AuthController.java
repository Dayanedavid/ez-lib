package com.ez_lib.ecommerce.controller;


import com.ez_lib.ecommerce.dto.ResponseDTO;
import com.ez_lib.ecommerce.entity.Customer;
import com.ez_lib.ecommerce.repository.CustomerRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.Optional;

@RestController
@RequestMapping("/auth")
@CrossOrigin(origins = "https://ez-lib.onrender.com")
@RequiredArgsConstructor
public class AuthController {
    private final CustomerRepository repository;

    @PostMapping("/login")
    public ResponseEntity login(@RequestBody Customer body){
        Customer customer = this.repository.findByEmail(body.getEmail()).orElse(null);
        if(body.equals(customer)){
            Boolean token = true;
            return ResponseEntity.ok(new ResponseDTO(customer.getName(), token, customer.getEmail(), customer.getId()));
        }
        return ResponseEntity.badRequest().build();
    }


    @PostMapping("/register")
    public ResponseEntity register(@RequestBody Customer body){
        Optional<Customer> customer = this.repository.findByEmail(body.getEmail());

        if(customer.isEmpty()) {
            Customer newUser = new Customer();
            newUser.setPassword(body.getPassword());
            newUser.setEmail(body.getEmail());
            newUser.setName(body.getName());
            this.repository.save(newUser);
            Boolean token = true;

            return ResponseEntity.ok(new ResponseDTO(newUser.getName(), token, newUser.getEmail(), newUser.getId()));
        }
        return ResponseEntity.badRequest().build();
    }
}