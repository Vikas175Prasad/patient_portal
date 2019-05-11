package com.vikas.patientportal.controllers;


import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Optional;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.transaction.Transaction;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.InputStreamResource;
import org.springframework.core.io.Resource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpRequest;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.vikas.patientportal.models.NewAppointment;
import com.vikas.patientportal.models.Reports;
import com.vikas.patientportal.models.User;
import com.vikas.patientportal.repositries.AppointmentsRepository;
import com.vikas.patientportal.repositries.ReportsRepository;
import com.vikas.patientportal.repositries.UserRepository;
import com.vikas.patientportal.responses.GenericResponse;

@RestController
@Controller
public class UserController {

	@Autowired
	private UserRepository userRepository;
	
	@Autowired
	private AppointmentsRepository appointmentsRepository;
	
	@Autowired
	private ReportsRepository reportsRepo;
	
	
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView loginPage() {
		
		ModelAndView modelAndView = new ModelAndView("login");
		return modelAndView;
		
	}
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView indexPage() {
		
		ModelAndView modelAndView = new ModelAndView("index");
		return modelAndView;
		
	}
	
	@RequestMapping(value = "/signup", method = RequestMethod.GET)
	public ModelAndView signupPage() {
		
		ModelAndView modelAndView = new ModelAndView("signup");
		return modelAndView;
		
	}
	
	@RequestMapping(value = "/register", method = RequestMethod.POST, consumes="application/json",produces="application/json")
	public GenericResponse register(@RequestBody User user) {
		
		GenericResponse response = new GenericResponse();
		userRepository.save(user);
		if(user.getId()>0) {
			
			response.setMessage("Success");

		}else {
			
			response.setMessage("Failed");
		}
		
		return response;
		
	}
	
	@RequestMapping(value = "/login_user/{email}/{phone}", method = RequestMethod.GET)
	public ResponseEntity<User> register(@PathVariable("email") String email, @PathVariable("phone") String phone,HttpServletRequest req) {

		User loginCred = userRepository.findByEmailAndPhone(email, phone);
		ResponseEntity<User> user = new ResponseEntity<User>(loginCred, HttpStatus.OK);
		HttpSession session = req.getSession();
		session.setAttribute("loggedInUser", user);
		return user;
		
	}
	
	
	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public ModelAndView home() {
		
		ModelAndView modelAndView = new ModelAndView("home");
		
		return modelAndView;
		
	}
	
	
	@RequestMapping(value = "/bookappointment", method = RequestMethod.GET)
	public ModelAndView bookAppointment() {
		
		ModelAndView modelAndView = new ModelAndView("bookappointment");
		
		return modelAndView;
		
	}
	
	@RequestMapping(value="/book_appointment",method = RequestMethod.POST, consumes="application/json", produces="application/json")
	public HashMap<String,String> bookNewAppointment(@RequestBody NewAppointment newAppointment){
		
		HashMap<String,String> res = new HashMap<>();
		User user = userRepository.findById(newAppointment.getUserId()).get();
			
		newAppointment.setUser(user);
		appointmentsRepository.save(newAppointment);
		if(newAppointment.getId()>0) {
			
			res.put("message","Success");

		}else {
			 
			res.put("message","Failed");
		}
		
		
		return res;
		
		
		
	}
	
	@RequestMapping(value = "/allappointments/{id}", method = RequestMethod.GET)
	public ModelAndView allAppointments(@PathVariable("id") Integer id) {
		
		ModelAndView modelAndView = new ModelAndView("allappointments");
		User user = userRepository.findById(id).get();
		List<NewAppointment> allAppointments = appointmentsRepository.findAppointmentsByUser(user);
		System.out.println(allAppointments.toString());
		modelAndView.addObject("appointmentList", allAppointments);
		return modelAndView;
		
	}
	
	@RequestMapping(value = "/labreports/{id}/{type}", method = RequestMethod.GET)
	public ModelAndView labReports(@PathVariable("id") Integer id, @PathVariable("type") String type) {
		
		ModelAndView modelAndView = new ModelAndView("labreports");
		List<Reports> labReports = reportsRepo.findByPatientIdAndReportType(id, type);
		modelAndView.addObject("labreportsList", labReports);
		return modelAndView;
		
	}
	
	
	@RequestMapping(value = "/prescribedmedicines/{id}/{type}", method = RequestMethod.GET)
	public ModelAndView prescriptions(@PathVariable("id") Integer id, @PathVariable("type") String type) {
		
		ModelAndView modelAndView = new ModelAndView("prescriptions");
		List<Reports> prescriptions = reportsRepo.findByPatientIdAndReportType(id, type);
		modelAndView.addObject("prescriptionsList", prescriptions);
		return modelAndView;
		
	}
	
	
	@RequestMapping(path = "/download/{filename}", method = RequestMethod.GET)
	public ResponseEntity<Resource> download(@PathVariable("filename") String fileName) throws IOException {

		File file = new File("src/main/resources/static/reports/"+fileName);
        HttpHeaders headers = new HttpHeaders();
        headers.add("Cache-Control", "no-cache, no-store, must-revalidate");
        headers.add("Pragma", "no-cache");
        headers.add("Expires", "0");

	    InputStreamResource resource = new InputStreamResource(new FileInputStream(file));

	    return ResponseEntity.ok()
	            .headers(headers)
	            .contentLength(file.length())
	            .contentType(MediaType.parseMediaType("application/pdf"))
	            .body(resource);
	}
	
	
	
	
}
