package com.vikas.patientportal.responses;

import java.util.ArrayList;

public class GenericResponse {

	private String message;
	
	private ArrayList<Object> data = new ArrayList<>();

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public ArrayList<Object> getData() {
		return data;
	}

	public void setData(ArrayList<Object> data) {
		this.data = data;
	}
	
	
}
