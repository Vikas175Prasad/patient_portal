<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <style>
  
  #gender{
  
  	text-transform:capitalize;
  }
  
  .bookappointment{
  
  	width:250px;
  	background-color:#f39c12;
  	color:white;
  	border-radius:10px;
  	height:250px;
  	text-align:center;
  	padding-top:80px;
  	font-weight:900;
  	font-size:30px;
  
  }
  
  .bookappointment:hover{
  
  	cursor:pointer;
  	background-color:white;
  	color:#f39c12
  }
  
  
  .appointmenthistory{
  
  	width:250px;
  	background-color:#00A65A;
  	color:white;
  	border-radius:10px;
  	height:250px;
  	text-align:center;
  	padding-top:50px;
  	font-weight:900;
  	font-size:30px;
  	margin-left:0px;
  
  }
  
  .appointmenthistory:hover{
  
  	cursor:pointer;
  	background-color:white;
  	color:#00A65A
  }
  
  .prescribedmedicines{
  	width:250px;
  	background-color:#cd071e;
  	color:white;
  	border-radius:10px;
  	height:250px;
  	text-align:center;
  	padding-top:70px;
  	font-weight:900;
  	font-size:30px;
  	margin-left:0px;
  
  }
  
  .prescribedmedicines:hover{
  
  	cursor:pointer;
  	background-color:white;
  	color:#cd071e;
  }
  
  .labreports{
  
  	width:250px;
  	background-color:#00c6b8;
  	color:white;
  	border-radius:10px;
  	height:250px;
  	text-align:center;
  	padding-top:80px;
  	font-weight:900;
  	font-size:30px;
  	margin-left:0px;
  
  }
  
  .labreports:hover{
  
  	cursor:pointer;
  	background-color:white;
  	color:#00c6b8;
  }
  </style>
</head>
<body>

<c:import url="header.jsp"></c:import>
<br>
<div class="container">
<div class="row" style="padding:10px;">
	<div class="col-sm-4 col-md-4 col-lg-4" class="column">
	
		<div>
			<h3>Your Details</h3>
		
		</div>
		<div>
		<table border="1" cellpadding="3">
		<tr>
			<td>First Name</td>
			<td id="firstname"></td>
		</tr>
		<tr>
			<td>Last Name</td>
			<td id="lastname"></td>
		</tr>
		<tr>
			<td>Email</td>
			<td id="email"></td>
		</tr>
		<tr>
			<td>Phone</td>
			<td id="phone"></td>
		</tr>
		<tr>
			<td>DOB</td>
			<td id="dob"></td>
		</tr>
		<tr>
			<td>Age</td>
			<td id="age"></td>
		</tr>
		<tr>
			<td>Gender</td>
			<td id="gender"></td>
		</tr>
		
		
		
		</table>
		
		
		</div>
	</div>
	
	<div class="row col-sm-8 col-md-8 col-lg-8" >
	<div class="col-sm-6 col-md-6 col-lg-6" >
		<div class="bookappointment">
			<span>Book Appointment</span>
		</div>
		<div class="appointmenthistory" style="margin-top:25px;">
			<span>View Appointments</span>
		</div>
	</div>

	<div class="col-sm-6 col-md-6 col-lg-6">
		<div class="labreports" style="">
			<span>Lab<br>Reports</span>
		</div>
		<br>
		<div class="prescribedmedicines" style="">
			<span>Prescribed<br>Medicines</span>
		</div>
	</div>
	
	
	</div>
</div>
<script>
var userDetail;
	$(document).ready(function(){
		
		userDetail = JSON.parse(sessionStorage.getItem("loggedInUser"));
		console.log(userDetail);
		$('#firstname').text(userDetail.firstname);
		$('#lastname').text(userDetail.lastname);
		$('#email').text(userDetail.email);
		$('#phone').text(userDetail.phone);
		$('#dob').text(userDetail.dob);
		$('#age').text(userDetail.age);
		$('#gender').text(userDetail.gender);
		
	});
	
	$('.bookappointment').click(function(){
				
		window.location.href="http://localhost:8093/bookappointment";
		
	});
	
	$('.appointmenthistory').click(function(){
		
		window.location.href="http://localhost:8093/allappointments/"+userDetail["id"];
		
	});
	
	$('.labreports').click(function(){
		
		window.location.href="http://localhost:8093/labreports/"+userDetail["id"]+"/Lab Report";
		
	});
	
	$('.prescribedmedicines').click(function(){
		
		window.location.href="http://localhost:8093/prescribedmedicines/"+userDetail["id"]+"/Prescription";
		
	});
	
	
	
	

</script>
</div>
</body>
</html>