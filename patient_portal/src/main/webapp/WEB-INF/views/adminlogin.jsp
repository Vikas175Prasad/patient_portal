<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Login</title>
<c:import url="adminheader.jsp"></c:import>
</head>
<body>
<div style="text-align:center;">
<h2>Admin Login</h2>
</div>

<div style="height:20px;"></div>
<div style="margin:0 auto;width:250px;">
<form id="loginForm">
<table>
<tr>
<td>Email</td>
<td><input type="email" id="email" name="email" placeholder="Enter email"/></td>
</tr>

<tr>
<td>Phone</td>
<td><input type="phone" id="phone" name="phone" placeholder="Enter phone"/></td>
</tr>
<tr>
<td></td>
<td><button class="btn btn-primary" id="sumbit" name="submit">Login</button></td>
</tr>
</table>
</form>
</div>
</body>
<script type="text/javascript">

$('#loginForm').submit(function(){
	

	var email = $('#email').val();
	var phone = $('#phone').val();
	
	
	$.ajax({
		
		type:"GET",
		url: "login_user/"+email+"/"+phone,
	    success:function(data){
	    	sessionStorage.setItem("loggedInAdmin",JSON.stringify(data));
	    	window.location.href= "adminhome";

	    },
        error: function (textStatus, errorThrown) {
        	console.log(textStatus);
        }
		
	});
	
	return false;
});

</script>
</html>