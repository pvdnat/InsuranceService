package com.synex;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

public class PasswordHash{
	
	
	public static void main(String []args) {
		testBCryptHash();
	}
	
	public static void testBCryptHash() {
		String password = "admin";
		BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
		String hashedPassword = passwordEncoder.encode(password);
		System.out.println(hashedPassword);
		
		DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
		Calendar c= Calendar.getInstance();
		c.add(Calendar.DATE, 30);
		Date d=c.getTime();
		System.out.println(df.format(d));

	}
	
}