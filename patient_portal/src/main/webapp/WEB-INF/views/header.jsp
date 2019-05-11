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
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
</head>
<style>
#signup:hover{

	cursor:pointer;
}

#logout:hover{

	cursor:pointer;
}

</style>
<body>
<div class="row" style="background-color:#333333;height:40px;margin-right:0px;;">
<div style="margin-left:90px;background-color:#0DB7C4;height:40px;width:45px;"><i class="material-icons" style="font-size:36px;color:white;margin-left:5px;">add</i></div>
<div style="background-color:#F85B5B">
<div style="color:white;margin:8px 16px 8px 16px;">
VIKAS CARE
</div>

</div>

<div style="margin:8px 10px 8px 10px;color:white;">
A DIGITAL INDIA INITIATIVE

</div>
<div class="row" style="margin-left:700px;color:white;">
<div style="margin:8px 10px 8px -70px;font-size: 13px;" id="logout">
Logout
</div>
<div style="width:1px;background-color:#444444;"></div>
<div style="margin:8px 10px 8px 10px;font-size: 13px;" id="signup">
Sign Up
</div>
<div style="width:1px;background-color:#444444;"></div>
<div style="margin:8px 10px 8px 10px;font-size: 13px;">
Contact
</div>
<div style="width:1px;background-color:#444444;"></div>
</div>
</div>
<script>
$(document).ready(function(){

	//var sessionId = '<%= session.getId() %>';
	//console.log(sessionId);
	
	var userDetails = JSON.parse(sessionStorage.getItem('loggedInUser'));
	
	if(userDetails == undefined){
		
		$('#logout').hide();
		
	}else{
		
		
		$('#logout').show();
		$('#signup').hide();
	}
	

});

$('#signup').click(function(){
	
	window.location.href = 'http://localhost:8093/signup';
	
});

$('#logout').click(function(){
	
	sessionStorage.clear();
	window.location.href = 'http://localhost:8093/';
	
});

</script>
</body>
</html>