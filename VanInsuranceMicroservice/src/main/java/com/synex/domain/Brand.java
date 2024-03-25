package com.synex.domain;
import java.util.HashSet;
import java.util.Set;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;

@Entity
@Table(name="brand")
public class Brand {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int brandId;
	private String brand;
	
	@OneToMany(cascade = CascadeType.ALL)
	private Set<DefaultCars> cars = new HashSet<>();
	
	public int getBrandId() {
		return brandId;
	}

	public void setBrandId(int brandId) {
		this.brandId = brandId;
	}

	public String getBrand() {
		return brand;
	}

	public void setBrand(String brand) {
		this.brand = brand;
	}
	
	public Set<DefaultCars> getCars() {
		return cars;
	}

	public void setCars(Set<DefaultCars> cars) {
		this.cars = cars;
	}
}
