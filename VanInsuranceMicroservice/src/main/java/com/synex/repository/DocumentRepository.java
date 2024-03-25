package com.synex.repository;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.synex.domain.Documents;

@Repository
public interface DocumentRepository extends JpaRepository<Documents, Integer>{

	Documents findByName(String name);
	
}
