package com.synex;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import jakarta.annotation.Resource;

import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import com.synex.service.FilesService;

@SpringBootApplication
public class VanHotelMicroserviceApplication implements CommandLineRunner {

	public static void main(String[] args) {
		SpringApplication.run(VanHotelMicroserviceApplication.class, args);
	}

	@Resource
	FilesService filesService;
	
	@Override
	public void run(String... arg) throws Exception {
		filesService.init();
	}
}
