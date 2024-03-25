package com.synex.domain;

import java.time.LocalDate;
import java.util.HashSet;
import java.util.Set;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.ManyToMany;
import jakarta.persistence.OneToMany;
import jakarta.persistence.OneToOne;
import jakarta.persistence.Table;

@Entity
@Table(name="cars")
public class Car {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int carId;
	
	private String brand;
	private String carModel;
	private double miles;
	private String year;
	
	@OneToMany(cascade = CascadeType.ALL)
	private Set<Claim> claims = new HashSet<>();
	
	@OneToOne(cascade = CascadeType.ALL)
	private PurchasedPolicies plan;
	
	public PurchasedPolicies getPlan() {
		return plan;
	}
	public void setPlan(PurchasedPolicies plan) {
		this.plan = plan;
	}
	public Set<Claim> getClaims() {
		return claims;
	}
	public void setClaims(Set<Claim> claims) {
		this.claims = claims;
	}
	public int getCarId() {
		return carId;
	}
	public void setCarId(int carId) {
		this.carId = carId;
	}
	public String getBrand() {
		return brand;
	}
	public void setBrand(String brand) {
		this.brand = brand;
	}
	public String getCarModel() {
		return carModel;
	}
	public void setCarModel(String carModel) {
		this.carModel = carModel;
	}
	public double getMiles() {
		return miles;
	}
	public void setMiles(double miles) {
		this.miles = miles;
	}
	public String getYear() {
		return year;
	}
	public void setYear(String year) {
		this.year = year;
	}
}
