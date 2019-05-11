package com.vikas.patientportal.repositries;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.vikas.patientportal.models.NewAppointment;
import com.vikas.patientportal.models.User;

@Repository
public interface AppointmentsRepository extends JpaRepository<NewAppointment, Integer> {
	
	List<NewAppointment> findAppointmentsByUser(User user);

}
