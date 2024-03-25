package com.synex.service;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Calendar;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fasterxml.jackson.databind.JsonNode;
import com.synex.domain.Driver;
import com.synex.domain.InsurancePolicy;
import com.synex.domain.Plan;
import com.synex.domain.PurchasedPolicies;
import com.synex.repository.BrandRepository;
import com.synex.repository.CarRepository;
import com.synex.repository.ClaimRepository;
import com.synex.repository.DefaultCarsRepository;
import com.synex.repository.DocumentRepository;
import com.synex.domain.Brand;
import com.synex.domain.Car;
import com.synex.domain.Claim;
import com.synex.domain.DefaultCars;
import com.synex.domain.Documents;
import com.synex.repository.DriverRepository;
import com.synex.repository.PlanRepository;

import com.synex.domain.Address;

@Service
public class InsuranceService {
	@Autowired
	DriverRepository driverRepository;
	
	@Autowired
	CarRepository carRepository;
	
	@Autowired
	BrandRepository brandRepository;
	
	@Autowired
	DefaultCarsRepository defaultCarsRepository;
	
	@Autowired
	PlanRepository planRepository;
	
	@Autowired
	DocumentRepository documentRepository;
	
	@Autowired
	ClaimRepository claimRepository;
	
	
	public Driver saveDriver(Driver driver) {
		return driverRepository.save(driver);
	}
	
	public Car saveClaim(int carId, Set<Claim> claim) {
		Car car = carRepository.findByCarId(carId);
		car.setClaims(claim);
		return carRepository.save(car);
	}
	
	public List<InsurancePolicy> getInsuranceByCar(int CarId) {
		return null;
	}
	
	public List<Car> getUserCars() {
		return carRepository.findAll();
	}
	
	public List<Brand> getAllDefaultBrands() {
		return brandRepository.findAll();
	}
	
	public Set<DefaultCars> getDefaultCars(String brand) {
		Brand brands = brandRepository.findByBrand(brand);
		return brands.getCars();
	}

	public String getYearRelease(String carModel) {
		DefaultCars car = defaultCarsRepository.findByCarModel(carModel);
		return car.getYearRelease();
	}

	public List<Plan> getPlans(int yearExperience) {
		return planRepository.findByYearExperience(yearExperience);
	}
	
	public Driver getDriverInfo(String username) {
		return driverRepository.findByUserName(username);
	}

	public List<Driver> getAllDriver() {
		return driverRepository.findAll();
	}
	
	public Documents updateDocStatus(String name, String status) {
		Documents doc = documentRepository.findByName(name);
		doc.setStatus(status);
		return documentRepository.save(doc);
	}
	
	public Car saveCar(Car car, String username) {
		Driver driverInfo = driverRepository.findByUserName(username);
		Car newCar = new Car();

		
		Set<Car> existCars = driverInfo.getCars();
		for (Car eachCar : existCars) {
			if ((eachCar.getBrand()).equals(car.getBrand()) && (eachCar.getCarModel()).equals(car.getCarModel())
					&& (eachCar.getMiles()==car.getMiles()) && (eachCar.getYear()).equals(car.getYear())) {
				return null;
			}
		}
		
		newCar.setBrand(car.getBrand());
		newCar.setCarModel(car.getCarModel());
		newCar.setMiles(car.getMiles());
		newCar.setYear(car.getYear());
		newCar.setPlan(car.getPlan());
		
		carRepository.save(newCar);
		
		existCars.add(newCar);
		driverInfo.setCars(existCars);
		
		driverRepository.save(driverInfo);
		
		return newCar;
	}

	public Driver updateDriver(Driver driver, String username) {
		Driver driverInfo = driverRepository.findByUserName(username);
		driverInfo.setFirstName(driver.getFirstName());
		driverInfo.setLastName(driver.getLastName());
		driverInfo.setLicenseId(driver.getLicenseId());
		driverInfo.setAge(driver.getAge());
		driverInfo.setPhoneNumber(driver.getPhoneNumber());
		driverInfo.setYearExperience(driver.getYearExperience());
		
		Address oldAddr = driverInfo.getAddress();
		Address newAddr = driver.getAddress();
		
		driverInfo.setFirstName(driver.getFirstName());
		driverInfo.setFirstName(driver.getFirstName());
		driverInfo.setFirstName(driver.getFirstName());
		driverInfo.setFirstName(driver.getFirstName());
		oldAddr.setStreet(newAddr.getStreet());
		oldAddr.setState(newAddr.getState());
		oldAddr.setCity(newAddr.getCity());
		oldAddr.setZipcode(newAddr.getZipcode());
		return driverRepository.save(driverInfo);
	}
	
	public Claim saveClaim(Claim claim, int carId) {
		Car car = carRepository.findByCarId(carId);
		Claim newClaim = new Claim();
		newClaim.setAccidentDate(claim.getAccidentDate());
		newClaim.setClaimPrice(claim.getClaimPrice());
		newClaim.setFixingPrice(claim.getFixingPrice());
		newClaim.setIssuedParts(claim.getIssuedParts());
		newClaim.setStatus("Pending");
		
		
		DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
		Date date = new Date();
		newClaim.setClaimDate(df.format(date));
		
		claimRepository.save(newClaim);
		
		Set<Claim> claims = car.getClaims();
		claims.add(newClaim);
		
		car.setClaims(claims);
		carRepository.save(car);
		return newClaim;
	}

	public List<Car> getAllCar() {
		return carRepository.findAll();
	}
	
	public Claim updateClaim(int claimId, String status, double acceptAmount) {
		Claim claim = claimRepository.findByClaimId(claimId);
		claim.setStatus(status);
		claim.setAcceptAmount(acceptAmount);
		return claimRepository.save(claim);
	}
	
	public Car updatePlanStatus(int carId, String status) {
		Car car = carRepository.findByCarId(carId);
		PurchasedPolicies plan = car.getPlan();
		
		
		
		DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
		Calendar c= Calendar.getInstance();
		c.add(Calendar.DATE, 30);
		Date date =c.getTime();
		Date today = new Date();
		plan.setStatus(status);
		plan.setStartDate(df.format(today));
		plan.setEndDate(df.format(date));
		
		return carRepository.save(car);
	}
}
