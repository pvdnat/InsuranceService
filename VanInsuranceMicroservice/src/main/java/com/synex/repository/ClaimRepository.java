package com.synex.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.synex.domain.Claim;

public interface ClaimRepository extends JpaRepository<Claim, Integer>{

	Claim findByClaimId(int claimId);

}
