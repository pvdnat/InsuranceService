package com.synex.service;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.stripe.Stripe;
import com.stripe.exception.StripeException;
import com.stripe.model.*;
import com.stripe.model.PaymentIntent;
import com.stripe.param.PaymentIntentCreateParams;
import com.synex.domain.Request;

@Service
public class PaymentService {

	public String makePayment(Request request) throws StripeException {
		Stripe.apiKey = "sk_test_51O6fWICBdegC1TuDcxo0eccBd25QmH1q1gUhGslsOCc7Aa3nzn2CFsjtsz0bLMnB005K0s2rMX82CS7joh2qRvCq00yz8MuPto";

		PaymentIntentCreateParams params = PaymentIntentCreateParams.builder()
				.setAmount((long) (request.getAmount()*100))
				.setCurrency("usd")
				.setConfirmationMethod(PaymentIntentCreateParams.ConfirmationMethod.AUTOMATIC)
				.setReceiptEmail(request.getEmail())
				.setReturnUrl("http://localhost:8282/home")
				.setPaymentMethod(request.getTokenId())
				.setConfirm(true)
				.build();
		
		PaymentIntent paymentIntent = PaymentIntent.create(params);
		
		if ("succeeded".equals(paymentIntent.getStatus())) {
			return "Successfully Pay";		
		}
		return "Fail";
	}
	
}
