package com.synex.repository;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.synex.domain.DefaultCars;

@Repository
public interface DefaultCarsRepository extends JpaRepository<DefaultCars, Integer>{

	public DefaultCars findByCarModel(String carModel);

}
