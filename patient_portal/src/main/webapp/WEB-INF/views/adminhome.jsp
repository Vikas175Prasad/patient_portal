<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Home</title>
<c:import url="adminheader.jsp"></c:import>
<style>
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
<div class="container">
	<div class="row col-sm-12 col-md-12 col-lg-12">
	<div class="col-sm-6 col-md-6 col-lg-6" style="padding:50px 0px 0px 200px;">
		<div class="bookappointment">
			<span>Search<br>Patient</span>
		</div>
		<div class="appointmenthistory" style="margin-top:25px;">
			<span>Add/View<br>Departments</span>
		</div>
	</div>

	<div class="col-sm-6 col-md-6 col-lg-6" style="padding:200px 0px 0px 200px;">
		<div class="labreports" style="">
			<span>Add/View<br>Doctors</span>
		</div>
		<br>
		<div style="display:none;" class="prescribedmedicines">
			<span>Discharged<br>Patients</span>
		</div>
	</div>
	
	
	</div>


</div>

</body>
<script>
	$('.bookappointment').click(function(){
	
		window.location.href = "patients";
	});
	
	$('.appointmenthistory').click(function(){
		
		
		window.location.href = "departments";
	});
	
	$('.labreports').click(function(){
		
		
		window.location.href = "doctors";
	});
	
	


</script>
</html>