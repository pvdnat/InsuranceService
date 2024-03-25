package com.synex.component;

import org.springframework.core.io.Resource;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Component;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.multipart.MultipartFile;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;

@Component
public class InsuranceComponent {

		public JsonNode getBrands() {
			RestTemplate restTemplate = new RestTemplate();
			ResponseEntity<Object> responseEntity = restTemplate.getForEntity("http://localhost:8383/getAllDefaultBrands", Object.class);
			Object objects = responseEntity.getBody();
			
			ObjectMapper mapper = new ObjectMapper();
			JsonNode returnObj = mapper.convertValue(objects, JsonNode.class);
			return returnObj;
		}
		
		public JsonNode getDefaultCars(String brand) {
			RestTemplate restTemplate = new RestTemplate();
			ResponseEntity<Object> responseEntity = restTemplate.getForEntity("http://localhost:8383/getDefaultCars/" + brand, Object.class);
			Object objects = responseEntity.getBody();
			
			ObjectMapper mapper = new ObjectMapper();
			JsonNode returnObj = mapper.convertValue(objects, JsonNode.class);
			return returnObj;
		}
		
		public JsonNode getYearRelease(String carModel) {
			RestTemplate restTemplate = new RestTemplate();
			ResponseEntity<Object> responseEntity = restTemplate.getForEntity("http://localhost:8383/getYearRelease/" + carModel, Object.class);
			Object objects = responseEntity.getBody();
			
			ObjectMapper mapper = new ObjectMapper();
			JsonNode returnObj = mapper.convertValue(objects, JsonNode.class);
			return returnObj;
		}
		
		public JsonNode saveUserInfo(JsonNode user) {
			RestTemplate restTemplate = new RestTemplate();
			ResponseEntity<Object> responseEntity = restTemplate.postForEntity("http://localhost:8383/saveDriver", user, Object.class);
			Object objects = responseEntity.getBody();
			
			ObjectMapper mapper = new ObjectMapper();
			JsonNode returnObj = mapper.convertValue(objects, JsonNode.class);
			return returnObj;
		}
		
		public JsonNode getDriverInfo(String username) {
			RestTemplate restTemplate = new RestTemplate();
			ResponseEntity<Object> responseEntity = restTemplate.getForEntity("http://localhost:8383/getDriverInfo/"+ username, Object.class);
			Object objects = responseEntity.getBody();
			
			ObjectMapper mapper = new ObjectMapper();
			JsonNode returnObj = mapper.convertValue(objects, JsonNode.class);
			return returnObj;
		}
		
		public JsonNode getPlans(int yearExp) {
			RestTemplate restTemplate = new RestTemplate();
			ResponseEntity<Object> responseEntity = restTemplate.getForEntity("http://localhost:8383/getPlans/" + yearExp, Object.class);
			Object objects = responseEntity.getBody();
			
			ObjectMapper mapper = new ObjectMapper();
			JsonNode returnObj = mapper.convertValue(objects, JsonNode.class);
			return returnObj;
		}
		
		public String upload(MultipartFile file, String username, String documentType) {
		 	HttpHeaders headers = new HttpHeaders();
		    headers.setContentType(MediaType.MULTIPART_FORM_DATA);

		    MultiValueMap<String, Object> body = new LinkedMultiValueMap<>();
		    body.add("file", file.getResource());

		    HttpEntity<MultiValueMap<String, Object>> requestEntity = new HttpEntity<>(body, headers);

		    RestTemplate restTemplate = new RestTemplate();
		    ResponseEntity<String> responseEntity = restTemplate.postForEntity("http://localhost:8383/upload/"+username+"/"+documentType,requestEntity,String.class);

		    return responseEntity.getBody();
		}
		
		public ResponseEntity<String> download(String filename) {
			RestTemplate restTemplate = new RestTemplate();
		    ResponseEntity<String> responseEntity = restTemplate.getForEntity("http://localhost:8383/download/"+filename,String.class);
		    
		    return ResponseEntity.ok()
			        .header(HttpHeaders.CONTENT_DISPOSITION, "attachment; filename=\"" + filename + "\"").body(responseEntity.getBody());
		}
		
		public JsonNode getAllDriver() {
			RestTemplate restTemplate = new RestTemplate();
			ResponseEntity<Object> responseEntity = restTemplate.getForEntity("http://localhost:8383/getAllDriver", Object.class);
			Object objects = responseEntity.getBody();
			
			ObjectMapper mapper = new ObjectMapper();
			JsonNode returnObj = mapper.convertValue(objects, JsonNode.class);
			return returnObj;
		}
		
		public JsonNode getAllCar() {
			RestTemplate restTemplate = new RestTemplate();
			ResponseEntity<Object> responseEntity = restTemplate.getForEntity("http://localhost:8383/getAllCar", Object.class);
			Object objects = responseEntity.getBody();
			
			ObjectMapper mapper = new ObjectMapper();
			JsonNode returnObj = mapper.convertValue(objects, JsonNode.class);
			return returnObj;
		}
		
		public JsonNode docUpdate(String name, String status) {
			RestTemplate restTemplate = new RestTemplate();
			ResponseEntity<Object> responseEntity = restTemplate.postForEntity("http://localhost:8383/updateDoc/"+name+"/"+status,name, Object.class);
			Object objects = responseEntity.getBody();
			
			ObjectMapper mapper = new ObjectMapper();
			JsonNode returnObj = mapper.convertValue(objects, JsonNode.class);
			return returnObj;
		}
		
		public JsonNode updateDriver( JsonNode driver, String userName) {
			RestTemplate restTemplate = new RestTemplate();
			ResponseEntity<Object> responseEntity = restTemplate.postForEntity("http://localhost:8383/updateDriver/"+userName,driver, Object.class);
			Object objects = responseEntity.getBody();
			
			ObjectMapper mapper = new ObjectMapper();
			JsonNode returnObj = mapper.convertValue(objects, JsonNode.class);
			return returnObj;
		}
		
		public JsonNode saveCar( JsonNode car, String userName) {
			RestTemplate restTemplate = new RestTemplate();
			ResponseEntity<Object> responseEntity = restTemplate.postForEntity("http://localhost:8383/saveCar/"+userName,car, Object.class);
			Object objects = responseEntity.getBody();
			
			ObjectMapper mapper = new ObjectMapper();
			JsonNode returnObj = mapper.convertValue(objects, JsonNode.class);
			return returnObj;
		}
		
		public JsonNode saveClaim( JsonNode claim, int carId) {
			RestTemplate restTemplate = new RestTemplate();
			ResponseEntity<Object> responseEntity = restTemplate.postForEntity("http://localhost:8383/saveClaim/"+carId,claim, Object.class);
			Object objects = responseEntity.getBody();
			
			ObjectMapper mapper = new ObjectMapper();
			JsonNode returnObj = mapper.convertValue(objects, JsonNode.class);
			return returnObj;
		}
		
		public String uploadClaim(MultipartFile file, int claimId) {
		 	HttpHeaders headers = new HttpHeaders();
		    headers.setContentType(MediaType.MULTIPART_FORM_DATA);

		    MultiValueMap<String, Object> body = new LinkedMultiValueMap<>();
		    body.add("file", file.getResource());

		    HttpEntity<MultiValueMap<String, Object>> requestEntity = new HttpEntity<>(body, headers);

		    RestTemplate restTemplate = new RestTemplate();
		    ResponseEntity<String> responseEntity = restTemplate.postForEntity("http://localhost:8383/uploadClaim/"+claimId,requestEntity,String.class);

		    return responseEntity.getBody();
		}
		
		public JsonNode updateClaim( int claimId, String status, double acceptAmount) {
			RestTemplate restTemplate = new RestTemplate();
			ResponseEntity<Object> responseEntity = restTemplate.postForEntity("http://localhost:8383/updateClaim/"+claimId+"/"+status+"/"+acceptAmount,claimId, Object.class);
			Object objects = responseEntity.getBody();
			
			ObjectMapper mapper = new ObjectMapper();
			JsonNode returnObj = mapper.convertValue(objects, JsonNode.class);
			return returnObj;
		}
		
		public JsonNode updatePlanStatus(int carId, String status) {
			RestTemplate restTemplate = new RestTemplate();
			ResponseEntity<String> responseEntity = restTemplate.postForEntity("http://localhost:8383/updatePlanStatus/"+carId+"/"+status,carId, String.class);
			Object objects = responseEntity.getBody();
			
			ObjectMapper mapper = new ObjectMapper();
			JsonNode returnObj = mapper.convertValue(objects, JsonNode.class);
			return returnObj;
		}
		
		public ResponseEntity<String> makePayment(JsonNode jsonObj) {
			HttpHeaders headers = new HttpHeaders();
	        headers.setContentType(MediaType.APPLICATION_JSON);
	        HttpEntity<String> request  = new HttpEntity<>(jsonObj.toString(),headers);
	        RestTemplate restTemplate = new RestTemplate();
	        ResponseEntity<String> responseEntity = restTemplate.postForEntity("http://localhost:8484/makePayment",request, String.class);
	        
	        return responseEntity;
		}
}
