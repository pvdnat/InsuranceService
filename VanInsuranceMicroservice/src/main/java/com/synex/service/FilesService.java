package com.synex.service;

import java.io.IOException;
import java.net.MalformedURLException;
import java.nio.file.FileAlreadyExistsException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.HashSet;
import java.util.Set;
import java.util.stream.Stream;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.Resource;
import org.springframework.core.io.UrlResource;
import org.springframework.stereotype.Service;
import org.springframework.util.FileSystemUtils;
import org.springframework.web.multipart.MultipartFile;

import com.synex.domain.Car;
import com.synex.domain.Claim;
import com.synex.domain.Documents;
import com.synex.domain.Driver;
import com.synex.repository.CarRepository;
import com.synex.repository.ClaimRepository;
import com.synex.repository.DriverRepository;


@Service
public class FilesService {
	
	@Autowired
	DriverRepository driverRepository;
	
	@Autowired
	ClaimRepository claimRepository;
	
	private final Path root = Paths.get("uploads");
	
	public void init() {
	    try {
	    	Files.createDirectories(root);
	    } catch (IOException e) {
	    	throw new RuntimeException("Could not initialize folder for upload!");
	    }
	}
	
	public void save(MultipartFile file, String username, String documentType) {
	    try {
	    	String name = file.getOriginalFilename();
	    	String fileType = file.getContentType();
	    	
	    	DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy-MM-dd");  
		    LocalDateTime now = LocalDateTime.now();
			String uploadDate = dtf.format(now);
	    	
			Documents document = new Documents();
			document.setName(name);
			document.setFileType(fileType);
			document.setDocumentType(documentType);
			document.setUploadDate(uploadDate);
			document.setStatus("Pending");
			
			Driver driverInfo = driverRepository.findByUserName(username);
			Set<Documents> documents = driverInfo.getDocuments();
			
			documents.add(document);
			
	    	driverInfo.setDocuments(documents);
	    	driverRepository.save(driverInfo);
	    	
	    	Files.copy(file.getInputStream(), this.root.resolve(name));
	    } catch (Exception e) {
	    	if (e instanceof FileAlreadyExistsException) {
	    		throw new RuntimeException("A file of that name already exists.");
	    	}
	    	throw new RuntimeException(e.getMessage());
	    }
	}
	
	public void saveClaimDoc(MultipartFile file, int claimId) {
	    try {
	    	String name = file.getOriginalFilename();
	    	String fileType = file.getContentType();
	    	
	    	DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy-MM-dd");  
		    LocalDateTime now = LocalDateTime.now();
			String uploadDate = dtf.format(now);
	    	
			Documents document = new Documents();
			document.setName(name);
			document.setFileType(fileType);
			document.setDocumentType("Reciept");
			document.setUploadDate(uploadDate);
			document.setStatus("Claim");
			
			Claim claim = claimRepository.findByClaimId(claimId);
			
			Set<Documents> documents = claim.getDocuments();
			
			documents.add(document);
			
			claim.setDocuments(documents);
			claimRepository.save(claim);
	    	
	    	Files.copy(file.getInputStream(), this.root.resolve(name));
	    } catch (Exception e) {
	    	if (e instanceof FileAlreadyExistsException) {
	    		throw new RuntimeException("A file of that name already exists.");
	    	}
	    	throw new RuntimeException(e.getMessage());
	    }
	}
	
	public Resource load(String filename) {
		try {
			Path file = root.resolve(filename);
			Resource resource = new UrlResource(file.toUri());
		
			if (resource.exists() || resource.isReadable()) {
				return resource;
			} else {
				throw new RuntimeException("Could not read the file!");
			}
		} catch (MalformedURLException e) {
			throw new RuntimeException("Error: " + e.getMessage());
		}
	}

	
}
