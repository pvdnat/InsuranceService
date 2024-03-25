package com.synex.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import com.stripe.exception.StripeException;

import com.synex.domain.Request;
import com.synex.service.PaymentService;


@RestController
public class PaymentController {
	
	@Autowired
	PaymentService paymentService;
	
	@RequestMapping(value = "/makePayment", method = RequestMethod.POST)
	public ResponseEntity<?> makePayment(@RequestBody Request request) {
		try {
			String response = paymentService.makePayment(request);
			return new ResponseEntity<>(response, HttpStatus.OK); 
		} catch (StripeException e) {
			return new ResponseEntity<>("Fail to Pay",HttpStatus.BAD_REQUEST); 
		}
		
	}
}
