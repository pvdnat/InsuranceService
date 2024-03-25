package com.synex.domain;

import java.time.LocalDate;
import java.util.Set;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.ManyToMany;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;

@Entity
@Table(name="UserPolicies")
public class PurchasedPolicies {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int userPoliciesId;
	
	private String planName;
	private Double paidAmount;
	private String status;
	private String startDate;
	private String endDate;
	


	public String getPlanName() {
		return planName;
	}

	public void setPlanName(String planName) {
		this.planName = planName;
	}
	
	public String getStartDate() {
		return startDate;
	}

	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}

	public String getEndDate() {
		return endDate;
	}

	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}
	
	public int getUserPoliciesId() {
		return userPoliciesId;
	}

	public void setUserPoliciesId(int userPoliciesId) {
		this.userPoliciesId = userPoliciesId;
	}


	public Double getPaidAmount() {
		return paidAmount;
	}

	public void setPaidAmount(Double paidAmount) {
		this.paidAmount = paidAmount;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	
	
}
