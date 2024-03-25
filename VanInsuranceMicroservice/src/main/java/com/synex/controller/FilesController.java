package com.synex.controller;
import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.Resource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.method.annotation.MvcUriComponentsBuilder;

import com.synex.service.FilesService;

@RestController
public class FilesController {
	@Autowired
	FilesService filesService;
	
	@RequestMapping(value = "/upload/{username}/{documentType}", method = RequestMethod.POST)
	public ResponseEntity<String> uploadFile(@RequestParam("file") MultipartFile file, @PathVariable String username, @PathVariable String documentType) {
		String message = "";
		try {
			filesService.save(file, username, documentType);
			message = "Uploaded the file successfully: " + file.getOriginalFilename();
			return ResponseEntity.status(HttpStatus.OK).body(message);
		} catch (Exception e) {
			message = "Could not upload the file: " + file.getOriginalFilename() + ". Error: " + e.getMessage();
			return ResponseEntity.status(HttpStatus.EXPECTATION_FAILED).body(message);
		}
	}
	
	@RequestMapping(value = "/uploadClaim/{claimId}", method = RequestMethod.POST)
	public ResponseEntity<String> uploadClaim(@RequestParam("file") MultipartFile file, @PathVariable int claimId) {
		String message = "";
		try {
			filesService.saveClaimDoc(file, claimId);
			message = "Uploaded the file successfully: " + file.getOriginalFilename();
			return ResponseEntity.status(HttpStatus.OK).body(message);
		} catch (Exception e) {
			message = "Could not upload the file: " + file.getOriginalFilename() + ". Error: " + e.getMessage();
			return ResponseEntity.status(HttpStatus.EXPECTATION_FAILED).body(message);
		}
	}
	
	
	@RequestMapping(value = "/download/{filename:.+}", method = RequestMethod.GET)
	public ResponseEntity<Resource> getFile(@PathVariable String filename) {
	    Resource file = filesService.load(filename);
	    return ResponseEntity.ok()
	        .header(HttpHeaders.CONTENT_DISPOSITION, "attachment; filename=\"" + file.getFilename() + "\"").body(file);
	}
}
