package com.synex.repository;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.synex.domain.Car;

@Repository
public interface CarRepository extends JpaRepository<Car, Integer>{

	public Car findByCarId(int carId);

}
