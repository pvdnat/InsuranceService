package com.synex.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.synex.domain.User;

public interface UserRepository extends JpaRepository<User, Long> {

	User findByUserName(String userName);
	User findByEmail(String email);
	User findByUserNameAndEmail(String userName, String email);
}
