package com.vikas.patientportal.repositries;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.vikas.patientportal.models.Doctor;

@Repository
public interface DoctorsRepository extends JpaRepository<Doctor, Integer>{

}
