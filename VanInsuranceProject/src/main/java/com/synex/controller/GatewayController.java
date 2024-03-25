package com.synex.controller;

import java.security.Principal;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.Resource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.synex.component.InsuranceComponent;
import com.synex.domain.User;
import com.synex.service.UserService;

@RestController
public class GatewayController {
	
	@Autowired
	InsuranceComponent insuranceComponent;
	
	@Autowired
	UserService userService;
	
	@RequestMapping(value = "/getAllBrands", method = RequestMethod.GET)
	public JsonNode getAllCars() {
		return insuranceComponent.getBrands();
	}
	
	@RequestMapping(value = "/getAllCars/{brand}", method = RequestMethod.GET)
	public JsonNode getDefaultCars(@PathVariable String brand) {
		return insuranceComponent.getDefaultCars(brand);
	}
	
	@RequestMapping(value = "/getYearRelease/{carModel}", method = RequestMethod.GET)
	public JsonNode getYearRelease(@PathVariable String carModel) {
		return insuranceComponent.getYearRelease(carModel);
	}
	
	@RequestMapping(value = "/signup/{username}/{email}",method = RequestMethod.GET)
	public User checkUserNameAndEmail(@PathVariable String username, @PathVariable String email) {
		return userService.checkUserNameAndEmail(username, email);
	}
	
	@RequestMapping(value = "/saveNewUser", method = RequestMethod.POST)
	public User saveNewUser(@RequestBody User user) {
		return userService.save(user);
	}
	
	@RequestMapping(value = "/saveUserInfo", method = RequestMethod.POST)
	public JsonNode saveUserInfo(@RequestBody JsonNode user, Principal principal) {		
		return insuranceComponent.saveUserInfo(user);
	}
	
	@RequestMapping(value = "/getDriverInfo", method = RequestMethod.GET)
	public JsonNode getDriverInfo(Principal principal) {	
		String userName = principal.getName();
		return insuranceComponent.getDriverInfo(userName);
	}
	
	@RequestMapping(value = "/getPlans/{yearExp}", method = RequestMethod.GET)
	public JsonNode getPlans(@PathVariable int yearExp) {		
		return insuranceComponent.getPlans(yearExp);
	}
	
	
	@RequestMapping(value = "/upload/{documentType}", method = RequestMethod.POST)
	public String upload(@RequestParam("file") MultipartFile file, Principal principal, @PathVariable String documentType) {		
		String userName = principal.getName();
		return insuranceComponent.upload(file,userName,documentType);
	}
	
	@RequestMapping(value = "/uploadClaim/{claimId}", method = RequestMethod.POST)
	public String uploadClaim(@RequestParam("file") MultipartFile file,@PathVariable int claimId) {
		return insuranceComponent.uploadClaim(file, claimId);
	}
	
//	@RequestMapping(value = "/upload/{username}/{documentType}", method = RequestMethod.POST)
//	public String upload(@RequestParam("file") MultipartFile file,@PathVariable String username, @PathVariable String documentType) {		
//		return insuranceComponent.upload(file,username,documentType);
//	}
	
	@RequestMapping(value = "/getAllDriver", method = RequestMethod.GET)
	public JsonNode getAllDriver() {	
		return insuranceComponent.getAllDriver();
	}
	
	@RequestMapping(value = "/getDriverInfo/{userName}", method = RequestMethod.GET)
	public JsonNode getDriverInfo(@PathVariable String userName) {	
		return insuranceComponent.getDriverInfo(userName);
	}
	
	@RequestMapping(value = "/download/{filename:.+}", method = RequestMethod.GET)
	public ResponseEntity<String> getFile(@PathVariable String filename) {
	    return insuranceComponent.download(filename);
	}
	
	@RequestMapping(value = "/docUpdate/{name}/{status}", method = RequestMethod.POST)
	public JsonNode docUpdate(@PathVariable String name, @PathVariable String status) {	
		return insuranceComponent.docUpdate(name,status);
	}
	

	
	@RequestMapping(value = "/getCurrentUser", method = RequestMethod.GET)
	public JsonNode getCurrentUser(Principal principal) {
		String userName = principal.getName();
		return insuranceComponent.getDriverInfo(userName);
	}
	
	@RequestMapping(value = "/updateDriver", method = RequestMethod.POST)
	public JsonNode updateDriver(@RequestBody JsonNode driver, Principal principal) {
		String userName = principal.getName();
		return insuranceComponent.updateDriver(driver, userName);
	}
	
	@RequestMapping(value = "/saveCar", method = RequestMethod.POST)
	public JsonNode saveCar(@RequestBody JsonNode car, Principal principal) {
		String userName = principal.getName();
		return insuranceComponent.saveCar(car, userName);
	}
	
	@RequestMapping(value = "/saveClaim/{carId}", method = RequestMethod.POST)
	public JsonNode saveClaim(@PathVariable int carId, @RequestBody JsonNode claim) {
		return insuranceComponent.saveClaim(claim, carId);
	}
	
	@RequestMapping(value = "/getAllCar", method = RequestMethod.GET)
	public JsonNode getAllCar() {
		return insuranceComponent.getAllCar();
	}
	
	@RequestMapping(value = "/updateClaim/{claimId}/{status}/{acceptAmount}", method = RequestMethod.POST)
	public JsonNode saveClaim(@PathVariable int claimId, @PathVariable String status, @PathVariable double acceptAmount) {
		return insuranceComponent.updateClaim(claimId, status, acceptAmount);
	}
	
	@RequestMapping(value = "/makePayment", method = RequestMethod.POST)
	public ResponseEntity<String> makePayment(@RequestBody JsonNode request) {
		return insuranceComponent.makePayment(request);
	}
	
	@RequestMapping(value = "/updatePlanStatus/{carId}/{status}", method = RequestMethod.POST)
	public JsonNode updatePlanStatus(@PathVariable int carId, @PathVariable String status) {
		return insuranceComponent.updatePlanStatus(carId, status);
	}
}

