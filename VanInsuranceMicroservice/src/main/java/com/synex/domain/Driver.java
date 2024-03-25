package com.synex.domain;

import java.util.HashSet;
import java.util.Set;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.OneToOne;
import jakarta.persistence.Table;

@Entity
@Table(name="driver")
public class Driver {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int driverId;
	private String lastName;
	private String firstName;
	private int age;
	private String phoneNumber;
	private int yearExperience;
	
	private String userName;
	private String email;
	
	@Column(unique=true)
	private String licenseId;
	
	@OneToOne(cascade = CascadeType.ALL)
	private Address address;
	
	@OneToMany(cascade = CascadeType.ALL)
	private Set<Car> cars = new HashSet<>();
	
	@OneToMany(cascade = CascadeType.ALL)
	private Set<PurchasedPolicies> purchasedPolicices = new HashSet<>();
	
	@OneToMany(cascade = CascadeType.ALL)
	private Set<Documents> documents = new HashSet<>();
	
	public Set<Documents> getDocuments() {
		return documents;
	}

	public void setDocuments(Set<Documents> documents) {
		this.documents = documents;
	}

	public int getDriverId() {
		return driverId;
	}

	public void setDriverId(int driverId) {
		this.driverId = driverId;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public String getLicenseId() {
		return licenseId;
	}

	public void setLicenseId(String licenseId) {
		this.licenseId = licenseId;
	}

	public Set<Car> getCars() {
		return cars;
	}

	public void setCars(Set<Car> cars) {
		this.cars = cars;
	}

	public int getYearExperience() {
		return yearExperience;
	}

	public void setYearExperience(int yearExperience) {
		this.yearExperience = yearExperience;
	}
	public Address getAddress() {
		return address;
	}
	public void Address(Address address) {
		this.address = address;
	}

	public Set<PurchasedPolicies> getPurchasedPolicices() {
		return purchasedPolicices;
	}

	public void setPurchasedPolicices(Set<PurchasedPolicies> purchasedPolicices) {
		this.purchasedPolicices = purchasedPolicices;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
	
	
}
