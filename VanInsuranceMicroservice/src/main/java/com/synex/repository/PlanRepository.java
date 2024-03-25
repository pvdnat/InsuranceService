package com.synex.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.synex.domain.Plan;

@Repository
public interface PlanRepository extends JpaRepository<Plan, Integer>{

	List<Plan> findByYearExperience(int yearExperience);

}

