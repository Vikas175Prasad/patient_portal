package com.vikas.patientportal.controllers;

import static org.junit.Assert.*;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.Mockito;
import org.mockito.junit.MockitoJUnitRunner;
import org.skyscreamer.jsonassert.JSONAssert;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.WebMvcTest;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.http.MediaType;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.MvcResult;
import org.springframework.test.web.servlet.RequestBuilder;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;

import com.vikas.patientportal.models.User;
import com.vikas.patientportal.repositries.AppointmentsRepository;
import com.vikas.patientportal.repositries.UserRepository;

//@RunWith(SpringRunner.class)
@RunWith(MockitoJUnitRunner.class)
@WebMvcTest(value=UserController.class)
public class UserControllerTests {

	@Autowired
	private MockMvc mockMvc;
	
	@MockBean
	private UserRepository userRepo;
	
	@MockBean
	private AppointmentsRepository appointmentsRepo;
	

	@Test
	public void appointmentsByPatientId() throws Exception{
		
		User user = new User();

		user.setId(5);
		user.setFirstName("hfjf");
		System.out.println(user.getId());
//		Mockito.doReturn(user).when(userRepo.findById(Mockito.anyInt()));

		Mockito.when(userRepo.findById(Mockito.anyInt())).thenReturn(null);
		
		RequestBuilder reqBuilder = MockMvcRequestBuilders.get("/allappointments/1").accept(MediaType.APPLICATION_JSON);
		
		MvcResult mvcResult = mockMvc.perform(reqBuilder).andReturn();
		
		System.out.println(mvcResult.getResponse());
		
		String expected = "{id:Course1,name:Spring,description:10 Steps}";
		
		JSONAssert.assertEquals(expected, mvcResult.getResponse().getContentAsString(), false);
		
		
	}

}
