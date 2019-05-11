package com.vikas.patientportal.controllers;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.jackson.JsonObjectDeserializer;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.vikas.patientportal.models.Admin;
import com.vikas.patientportal.models.Department;
import com.vikas.patientportal.models.Doctor;
import com.vikas.patientportal.models.Reports;
import com.vikas.patientportal.models.User;
import com.vikas.patientportal.repositries.AdminRepository;
import com.vikas.patientportal.repositries.AppointmentsRepository;
import com.vikas.patientportal.repositries.DepartmentRepository;
import com.vikas.patientportal.repositries.DoctorsRepository;
import com.vikas.patientportal.repositries.ReportsRepository;
import com.vikas.patientportal.repositries.UserRepository;

@RestController
@Controller
@RequestMapping(value="/admin")
public class AdminController {
	
	@Autowired
	private AdminRepository adminRepo;
	
	@Autowired
	private UserRepository userRepo;
	
	@Autowired
	private AppointmentsRepository appointmentsRepo;
	
	@Autowired
	private DoctorsRepository doctorRepo;
	
	@Autowired
	private DepartmentRepository departmentRepo;
	
	@Autowired
	private ReportsRepository reportsRepo;
	
	@RequestMapping(value="/login",method=RequestMethod.GET)
	public ModelAndView adminLoginPage() {
		
		ModelAndView modelAndView = new ModelAndView("adminlogin");
		return modelAndView;
	
	}
	
	
	@RequestMapping(value = "/login_user/{email}/{phone}", method = RequestMethod.GET)
	public ResponseEntity<Admin> register(@PathVariable("email") String email, @PathVariable("phone") String phone,HttpServletRequest req) throws Exception {

		Admin loginCred = adminRepo.findByUsernameAndPassword(email, phone);
		if(loginCred.getUsername() != null) {
			
			ResponseEntity<Admin> user = new ResponseEntity<Admin>(loginCred, HttpStatus.OK);
			return user;
		}else {
			System.out.println("Not Found");
			throw new Exception();
		}
		
		
	}
	
	@RequestMapping(value="/adminhome",method=RequestMethod.GET)
	public ModelAndView adminHome() {
		
		ModelAndView modelAndView = new ModelAndView("adminhome");
		return modelAndView;
	
	}
	
	@RequestMapping(value="/patients",method=RequestMethod.GET)
	public ModelAndView adminPatients() {
		
		ModelAndView modelAndView = new ModelAndView("patients");
		List<User> allPatients = userRepo.findAll();
		modelAndView.addObject("allpatients", allPatients);
		return modelAndView;
	
	}
	
	@RequestMapping(value="/searchPatient/{id}",method=RequestMethod.GET,produces="application/json")
	public HashMap<String,Object> searchPatient(@PathVariable("id") Integer id) throws Exception{
		
		User searchedResult = userRepo.findById(id).get();
		if(searchedResult.getFirstName() != null) {
			
			HashMap<String,Object> res = new HashMap<>();
			res.put("data",searchedResult);
			res.put("message", "Success");
			return res;			
			
		}else {
			
			 throw new Exception();
		}
		
	}
	
	@RequestMapping(value="/doctors",method=RequestMethod.GET)
	public ModelAndView doctors() {
		
		ModelAndView doctorsPage = new ModelAndView("doctors");
		List<Doctor> doctorsList = doctorRepo.findAll();
		doctorsPage.addObject("doctorsList", doctorsList);
		
		return doctorsPage;
		
	}
	
	@RequestMapping(value="/doctors_list",method=RequestMethod.GET,produces="application/json")
	public HashMap<String,Object> doctorsList() {
		
		HashMap<String,Object> res = new HashMap<>(); 
		List<Doctor> doctorsList = doctorRepo.findAll();
		res.put("doctorsList", doctorsList);
		return res;
		
	}
	
	@RequestMapping(value="/departments",method=RequestMethod.GET)
	public ModelAndView departments() {
		
		ModelAndView departmentPage = new ModelAndView("departments");
		List<Department> departmentList = departmentRepo.findAll();
		departmentPage.addObject("departmentList", departmentList);
		
		return departmentPage;
		
	}
	
	@RequestMapping(value="/all_departments",method=RequestMethod.GET,produces="application/json")
	public HashMap<String,Object> allDepartments() {
		
		HashMap<String, Object> res = new HashMap<>();
		List<Department> departmentList = departmentRepo.findAll();
		res.put("departmentList", departmentList);
		
		return res;
		
	}
	
	@RequestMapping(value="/add_department",method=RequestMethod.POST,consumes="application/json",produces="application/json")
	public HashMap<String,Object> addDepartment(@RequestBody Department department){
		
		HashMap<String, Object> res = new HashMap<>();
		departmentRepo.save(department);
		res.put("message", "Success");
		return res;
	}
	
	@RequestMapping(value="/add_doctor",method=RequestMethod.POST,consumes="application/json",produces="application/json")
	public HashMap<String,Object> addDoctor(@RequestBody Doctor doctor){
		
		HashMap<String, Object> res = new HashMap<>();
		doctorRepo.save(doctor);
		res.put("message", "Success");
		return res;
	}
	
	@RequestMapping(value="/delete_doctor",method=RequestMethod.DELETE,consumes="application/json",produces="application/json")
	public HashMap<String,Object> deleteDoctor(@RequestBody Doctor doctor){
		
		HashMap<String, Object> res = new HashMap<>();
		doctorRepo.deleteById(doctor.getId());
		res.put("message", "Success");
		return res;
	}
	
	
	@RequestMapping(value="/delete_department",method=RequestMethod.DELETE,consumes="application/json",produces="application/json")
	public HashMap<String,Object> deleteDepartment(@RequestBody Department department){
		
		HashMap<String, Object> res = new HashMap<>();
		departmentRepo.deleteById(department.getId());
		res.put("message", "Success");
		return res;
	}
	
	@RequestMapping(value="/upload_report",consumes="multipart/form-data",produces="application/json")
	public HashMap<String,Object> uploadReport(@RequestParam("file") MultipartFile report, @RequestParam("documentType") String documentType, @RequestParam("appointmentDate") String appointmentDate, @RequestParam("patientId") Integer patientId) throws IOException{
		
		HashMap<String, Object> res = new HashMap<>();
		System.out.println(report.getOriginalFilename());
		System.out.println(documentType);
		System.out.println(appointmentDate);
		System.out.println(patientId);
		String fileName = System.currentTimeMillis()+"-"+report.getOriginalFilename();
		File file = new File("src/main/resources/static/reports/"+fileName);
		file.createNewFile(); 
		FileOutputStream out = new FileOutputStream(file);
		out.write(report.getBytes());
		out.close();
		
		// from ui 2019/01/06
		//to save 6/1/2019
		Reports reportsObj = new Reports();
		
		String [] dateSplitted = appointmentDate.split("/");
		int year = Integer.valueOf(dateSplitted[0]);
		int month = Integer.valueOf(dateSplitted[1]);
		int date = Integer.valueOf(dateSplitted[2]);
		
		String formattedDate = date+"/"+month+"/"+year;
		
		reportsObj.setAppointmentDate(formattedDate);
		reportsObj.setPatientId(patientId);
		reportsObj.setReportType(documentType);
		reportsObj.setFileName(fileName);
		reportsRepo.save(reportsObj);

		res.put("message","Success");
		return res;
		
	}
	
	

}
