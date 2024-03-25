package com.synex.controller;

import java.security.Principal;
import java.util.List;
import java.util.Set;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.synex.service.InsuranceService;
import com.synex.domain.Brand;
import com.synex.domain.Car;
import com.synex.domain.Claim;
import com.synex.domain.DefaultCars;
import com.synex.domain.Documents;
import com.synex.domain.Driver;
import com.synex.domain.Plan;

@RestController
public class InsuranceMicroserviceController {

	@Autowired
	InsuranceService insuranceService;
	
	@RequestMapping(value = "/getUserCars", method = RequestMethod.GET)
	public List<Car> getUserCars() {
		return insuranceService.getUserCars();
	}
	
	@RequestMapping(value = "/getAllDefaultBrands", method = RequestMethod.GET)
	public List<Brand> getAllDefaultBrands() {
		return insuranceService.getAllDefaultBrands();
	}
	
	@RequestMapping(value = "/getDefaultCars/{brand}", method = RequestMethod.GET)
	public Set<DefaultCars> getAllDefaultCars(@PathVariable String brand) {
		return insuranceService.getDefaultCars(brand);
	}
	
	@RequestMapping(value = "/getYearRelease/{carModel}", method = RequestMethod.GET)
	public String getYearRelease(@PathVariable String carModel) {
		return insuranceService.getYearRelease(carModel);
	}
	
	@RequestMapping(value = "/saveDriver", method = RequestMethod.POST)
	public Driver saveDriver(@RequestBody Driver driver) {
		return insuranceService.saveDriver(driver);
	}
	
	@RequestMapping(value = "/getPlans/{yearExp}", method = RequestMethod.GET)
	public List<Plan> getPlans(@PathVariable int yearExp) {
		return insuranceService.getPlans(yearExp);
	}
	
	@RequestMapping(value = "/getDriverInfo/{username}", method = RequestMethod.GET)
	public Driver getDriverInfo(@PathVariable String username) {
		return insuranceService.getDriverInfo(username);
	}
	
	@RequestMapping(value = "/getAllDriver", method = RequestMethod.GET)
	public List<Driver> getDriverInfo() {
		return insuranceService.getAllDriver();
	}
	
	@RequestMapping(value = "/updateDoc/{name}/{status}", method = RequestMethod.POST)
	public Documents updateDoc(@PathVariable String name, @PathVariable String status) {
		return insuranceService.updateDocStatus(name,status);
	}
	
	@RequestMapping(value = "/updateDriver/{username}", method = RequestMethod.POST)
	public Driver updateDriver(@RequestBody Driver driver, @PathVariable String username) {
		return insuranceService.updateDriver(driver, username);
	}
	
	@RequestMapping(value = "/saveCar/{username}", method = RequestMethod.POST)
	public Car saveCar(@RequestBody Car car, @PathVariable String username) {
		return insuranceService.saveCar(car, username);
	}
	
	@RequestMapping(value = "/saveClaim/{carId}", method = RequestMethod.POST)
	public Claim saveClaim(@RequestBody Claim claim, @PathVariable int carId) {
		return insuranceService.saveClaim(claim, carId);
	}
	
	@RequestMapping(value = "/getAllCar", method = RequestMethod.GET)
	public List<Car> getAllCar() {
		return insuranceService.getAllCar();
	}
	
	@RequestMapping(value = "/updateClaim/{claimId}/{status}/{acceptAmount}", method = RequestMethod.POST)
	public Claim updateClaim(@PathVariable int claimId, @PathVariable String status, @PathVariable double acceptAmount) {
		return insuranceService.updateClaim(claimId, status, acceptAmount);
	}
	
	@RequestMapping(value = "/updatePlanStatus/{carId}/{status}", method = RequestMethod.POST)
	public Car updateClaim(@PathVariable int carId, @PathVariable String status) {
		return insuranceService.updatePlanStatus(carId, status);
	}
	
}
