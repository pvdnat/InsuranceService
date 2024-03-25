package com.synex.domain;
import java.util.HashSet;
import java.util.Set;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.ManyToMany;
import jakarta.persistence.Table;

@Entity
@Table(name="plan")
public class Plan {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int planId;
	private String planName;
	private int yearExperience;
	private int monthlyCharge;
	
	@ManyToMany(cascade = CascadeType.ALL)
	private Set<InsurancePolicy> insurancePolicy = new HashSet<>();
	
	public int getPlanId() {
		return planId;
	}

	public void setPlanId(int planId) {
		this.planId = planId;
	}

	public String getPlanName() {
		return planName;
	}

	public void setPlanName(String planName) {
		this.planName = planName;
	}

	public int getYearExperience() {
		return yearExperience;
	}

	public void setYearExperience(int yearExperience) {
		this.yearExperience = yearExperience;
	}

	public int getMonthlyCharge() {
		return monthlyCharge;
	}

	public void setMonthlyCharge(int monthlyCharge) {
		this.monthlyCharge = monthlyCharge;
	}

	public Set<InsurancePolicy> getInsurancePolicy() {
		return insurancePolicy;
	}

	public void setInsurancePolicy(Set<InsurancePolicy> insurancePolicy) {
		this.insurancePolicy = insurancePolicy;
	}
	
}
