package com.synex.domain;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="InsurancePolicy")
public class InsurancePolicy {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int policyId;
	private String name;
	private String description;
	private double monthlyPrice;
	private double maximumCap;
	
	public int getPolicyId() {
		return policyId;
	}
	public void setPolicyId(int policyId) {
		this.policyId = policyId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public double getMonthlyPrice() {
		return monthlyPrice;
	}
	public void setMonthlyPrice(double monthlyPrice) {
		this.monthlyPrice = monthlyPrice;
	}
	public double getMaximumCap() {
		return maximumCap;
	}
	public void setMaximumCap(double maximumCap) {
		this.maximumCap = maximumCap;
	}
	
	
	
	
	
	
}
