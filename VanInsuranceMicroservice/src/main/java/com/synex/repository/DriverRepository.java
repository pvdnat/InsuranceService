package com.synex.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.synex.domain.Driver;

@Repository
public interface DriverRepository extends JpaRepository<Driver, Integer>{
	Driver findByUserName(String username);
}
