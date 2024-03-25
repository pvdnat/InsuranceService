
package com.synex.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.synex.domain.User;
import com.synex.repository.UserRepository;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	UserRepository userRepository;
	
	@Override
	public List<User> findAll() {
		return userRepository.findAll();
	}

	@Override
	public User save(User u) {
		BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
		String hashedPassword = passwordEncoder.encode(u.getUserPassword());
		u.setUserPassword(hashedPassword);
		User user = userRepository.save(u);
		return user;
	}

	@Override
	public User findByUserId(long uId) {
		Optional<User> u = userRepository.findById(uId);
		if(u.isPresent()) {
			return u.get();
		}else
		return null;
	}

	@Override
	public void deleteUserById(long uId) {
		userRepository.deleteById(uId);
		
	}

	@Override
	public User findByUserName(String userName) {
		return userRepository.findByUserName(userName);
	}
	
	@Override
	public User checkUserNameAndEmail(String userName, String email) {
		User username = userRepository.findByUserName(userName);
		User useremail = userRepository.findByEmail(email);
		if (username!=null) {
			return username;
		}
		if (useremail!=null) {
			return useremail;
		}
		return userRepository.findByUserNameAndEmail(userName,email);
	};
}
