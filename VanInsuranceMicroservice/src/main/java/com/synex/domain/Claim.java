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
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToMany;
import jakarta.persistence.OneToOne;
import jakarta.persistence.Table;

@Entity
@Table(name="claim")
public class Claim {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int claimId;
	private String accidentDate;
	private String claimDate;
	private String issuedParts;
	private double fixingPrice;
	private double claimPrice;
	private double acceptAmount;
	private String status;
	
	@OneToMany(cascade = CascadeType.ALL)
	private Set<Documents> documents = new HashSet<>();
	
	public int getClaimId() {
		return claimId;
	}

	public void setClaimId(int claimId) {
		this.claimId = claimId;
	}

	public String getAccidentDate() {
		return accidentDate;
	}

	public void setAccidentDate(String accidentDate) {
		this.accidentDate = accidentDate;
	}

	public String getClaimDate() {
		return claimDate;
	}

	public void setClaimDate(String claimDate) {
		this.claimDate = claimDate;
	}

	public String getIssuedParts() {
		return issuedParts;
	}

	public void setIssuedParts(String issuedParts) {
		this.issuedParts = issuedParts;
	}

	public double getFixingPrice() {
		return fixingPrice;
	}

	public void setFixingPrice(double fixingPrice) {
		this.fixingPrice = fixingPrice;
	}

	public double getClaimPrice() {
		return claimPrice;
	}

	public void setClaimPrice(double claimPrice) {
		this.claimPrice = claimPrice;
	}

	public double getAcceptAmount() {
		return acceptAmount;
	}

	public void setAcceptAmount(double acceptAmount) {
		this.acceptAmount = acceptAmount;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public Set<Documents> getDocuments() {
		return documents;
	}

	public void setDocuments(Set<Documents> documents) {
		this.documents = documents;
	}

	
	
	
	
}
