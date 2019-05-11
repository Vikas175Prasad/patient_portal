package com.vikas.patientportal.repositries;

import org.springframework.data.jpa.repository.JpaRepository;

import com.vikas.patientportal.models.Admin;
import com.vikas.patientportal.models.User;

public interface AdminRepository extends JpaRepository<Admin, Integer> {

	Admin findByUsernameAndPassword(String username, String password);
}
