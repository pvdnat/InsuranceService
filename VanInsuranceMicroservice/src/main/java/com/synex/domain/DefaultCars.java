package com.synex.domain;

import java.time.LocalDate;
import java.util.HashSet;
import java.util.List;
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
@Table(name="defaultCars")
public class DefaultCars {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int carId;
	private String carModel;
	
	private String yearRelease;

	public String getYearRelease() {
		return yearRelease;
	}
	public void setYearRelease(String yearRelease) {
		this.yearRelease = yearRelease;
	}
	public int getCarId() {
		return carId;
	}
	public void setCarId(int carId) {
		this.carId = carId;
	}
	
	public String getCarModel() {
		return carModel;
	}
	public void setCarModel(String carModel) {
		this.carModel = carModel;
	}
	
}
