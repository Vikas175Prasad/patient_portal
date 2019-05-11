<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>Register</title>
</head>
<body>
<c:import url="header.jsp"></c:import>
<div style="text-align:center;">
<h2>Sign Up</h2>
</div>
<form id="registerForm">
<table>
<tr>
<td>First Name</td>
<td><input type="text" id="firstname" name="firstname"/></td>

</tr>
<tr>
<td>Last Name</td>
<td><input type="text" id="lastname" name="lastname"/></td>
</tr>

<tr>
<td>Date of Birth</td>
<td><input type="date" id="dob" name="dob"/></td>
</tr>

<tr>
<td>Age</td>
<td><input type="number" id="age" name="age"/></td>
</tr>

<tr>
<td>Gender</td>
<td><input type="radio" id="male" name="gender" value="male"  checked/>Male
<input type="radio" id="female" name="gender" value="female"/>Female</td>
</tr>

<tr>
<td>Email</td>
<td><input type="email" id="email" name="email"/></td>
</tr>

<tr>
<td>Phone</td>
<td><input type="phone" id="phone" name="phone"/></td>
</tr>
<tr>
<td></td>
<td><input type="submit" id="sumbit" name="submit"/></td>
</tr>
</table>
</form>
<script>

	$('#registerForm').submit(function(){
		
		var firstName = $('#firstname').val();
		var lastName = $('#lastname').val();
		var email = $('#email').val();
		var phone = $('#phone').val();
		var age = $('#age').val();
		var dob = $('#dob').val();
		var gender = $('input[name=gender]:checked').val();
		
		var registerObj = {'firstname':firstName,'lastname':lastName,'email':email,'phone':phone,'age':age,'dob':dob,'gender':gender};
		
		$.ajax({
			
			headers:{
		        "Content-Type": "application/json; charset=utf-8"
			},
			type:"POST",
			url: "register",
			data: JSON.stringify(registerObj),
			contentType: "application/json; charset=utf-8",
		    success:function(data){
		    	console.log(data);
		    	window.location.href= "http://localhost:8093/";
		    },
            error: function (textStatus, errorThrown) {
            	console.log(textStatus);
            }
			
		});
		
		return false;
	});
	
	


</script>
</body>
</html>