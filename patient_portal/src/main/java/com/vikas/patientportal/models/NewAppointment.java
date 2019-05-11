package com.vikas.patientportal.models;

import java.util.Optional;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.hibernate.annotations.OnDelete;
import org.hibernate.annotations.OnDeleteAction;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonProperty;

@Entity
@Table(name="appointments")
public class NewAppointment {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name="id") 
	private Integer id;
	
	@Column(name="appointment_date", nullable=false)
	private String appointmentDate;
	
	@Column(name="date_of_booking", nullable=false)
	private String dateOfBooking;
	
	@Column(name="department", nullable=false)
	private String department;
	
	@Transient
	private Integer userId;
	
	@ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "patient_id", nullable = false)
    @OnDelete(action = OnDeleteAction.CASCADE)
    @JsonIgnore
    private User user;

	@JsonProperty("id")
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	@JsonProperty("appointment_date")
	public String getAppointmentDate() {
		return appointmentDate;
	}

	public void setAppointmentDate(String appointmentDate) {
		this.appointmentDate = appointmentDate;
	}

	@JsonProperty("date_of_booking")
	public String getDateOfBooking() {
		return dateOfBooking;
	}

	public void setDateOfBooking(String dateOfBooking) {
		this.dateOfBooking = dateOfBooking;
	}

	@JsonProperty("department")
	public String getDepartment() {
		return department;
	}

	public void setDepartment(String department) {
		this.department = department;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user2) {
		this.user = user2;
	}

	@JsonProperty("patient_id")
	public Integer getUserId() {
		return userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

//	@JsonProperty("patient_id")
//	public Integer getPatientId() {
//		return patientId;
//	}
//
//	public void setPatientId(Integer patientId) {
//		this.patientId = patientId;
//	}
	
	
	
	
	
	
	
	
	
}
