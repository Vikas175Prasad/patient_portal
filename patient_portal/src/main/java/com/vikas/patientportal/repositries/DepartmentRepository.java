package com.vikas.patientportal.repositries;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.vikas.patientportal.models.Department;

@Repository
public interface DepartmentRepository extends JpaRepository<Department, Integer>{

	
}
