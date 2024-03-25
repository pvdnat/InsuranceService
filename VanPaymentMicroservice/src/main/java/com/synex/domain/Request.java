package com.synex.domain;



public class Request {
	

	private String tokenId;
	private Double amount;
	private String email;
	private String username;
	private int carId;
	
	
	public int getCarId() {
		return carId;
	}
	public void setCarId(int carId) {
		this.carId = carId;
	}
	public String getTokenId() {
		return tokenId;
	}
	public void setTokenId(String tokenId) {
		this.tokenId = tokenId;
	}
	public Double getAmount() {
		return amount;
	}
	public void setAmount(Double amount) {
		this.amount = amount;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getName() {
		return username;
	}
	public void setName(String name) {
		this.username = name;
	}
	
	
	
}
