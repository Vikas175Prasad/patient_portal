package com.vikas.patientportal.repositries;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.vikas.patientportal.models.User;

@Repository
public interface UserRepository extends JpaRepository<User, Integer>{
	
	User findByEmailAndPhone(String email,String phone);

}
