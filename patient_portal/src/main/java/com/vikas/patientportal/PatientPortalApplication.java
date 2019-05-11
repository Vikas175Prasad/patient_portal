package com.vikas.patientportal;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan(basePackages= {"com.vikas.patientportal","com.vikas.patientportal.controllers"})
public class PatientPortalApplication {
 
	public static void main(String[] args) {
		SpringApplication.run(PatientPortalApplication.class, args);
	}

}

