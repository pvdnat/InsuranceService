package com.synex.repository;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.synex.domain.Brand;
import com.synex.domain.DefaultCars;

@Repository
public interface BrandRepository extends JpaRepository<Brand, Integer>{

	public Brand findByBrand(String brand);


}

