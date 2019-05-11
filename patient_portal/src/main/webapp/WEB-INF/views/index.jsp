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
<title>Patient Portal</title>
</head>
<body>
<!--request.getSession().getId()-->
<c:import url="header.jsp"></c:import>
<div style="text-align:center;">
<h2>Login</h2>
</div>
<!--<div class="container-fluid">
<div class="row" style="height:86px;background-color:#F7F7F7;border-bottom:1px solid #DDDDDD;margin-bottom:20px;">
	<div style="margin-left:100px;">
		<img src="https://ors.gov.in/copp/images/emblem.png" style="height:60px;width:280px;" />
	</div>
	<div style="margin-left:50px;">
		<img src="https://ors.gov.in/copp/images/logo.png" style="height:53.55px;width:80px;" />
	</div>
	<div style="margin-left:50px;">
		<img src="https://ors.gov.in/copp/images/mhw-logo-print.png" style="height:62px;width:245px;" />
	</div>
	<div>
		<i class="fa fa-home" style="font-size:24px;color:#9A9A9A;margin-top:25px;margin-left:20px;"></i>
	</div>
	<div>
		<div style="font-size:14px;color:#9A9A9A;margin-top:27px;margin-left:20px;">APPOINTMENT</div>
	</div>
	<div>
		<div style="font-size:14px;color:#9A9A9A;margin-top:27px;margin-left:20px;">DASHBOARD</div>
	</div>
	<div style="margin-left:30px;">
		<img src="https://ors.gov.in/copp/images/digitalindia.png" style="height:75px;width:130px;" />
	</div>
</div>
<div class="row">
<div class="col-sm-12 col-md-6 col-lg-6">
	<div class="column">
		<div style="text-align:center;background-color:#F2F2F2;margin:40px 0px 0px 70px;border-radius:4px;border:2px solid #e5e5e5;">
			<h2 style="font-size: 2em;font-family: 'ralewaymedium';margin-top:15px;display:inline-block;">Need an appointment?</h2>
			<h4 style="font-family:'source_sans_proregular';font-size: 1.4em;margin-bottom:20px;display:inline-block;">Follow the simple steps below and get your appointment fixed <br>online!</h4>
		</div>
		<div class="column" style="padding-left:150px;">
		<div style="margin:40px 0px 0px 70px;">
		<p style="display: block;padding: 0;margin: 0;font-size: 18px;text-align: left;color: #f00;">1.&nbsp;&nbsp;<i class="fa fa-mobile-phone" style="font-size:24px;"></i>&nbsp;&nbsp;&nbsp;&nbsp;Verify yourself using Mobile No.</p>
		</div>
		<div style="margin:40px 0px 0px 70px;">
		<p style="display: block;padding: 0;margin: 0;font-size: 18px;text-align: left;">2.&nbsp;&nbsp;<i class="fa fa-hospital-o" style="font-size:24px;"></i>&nbsp;&nbsp;Choose Hospital / Department</p>
		</div>
		<div style="margin:40px 0px 0px 70px;">
		<p style="display: block;padding: 0;margin: 0;font-size: 18px;text-align: left;">3.&nbsp;&nbsp;<i class="fa fa-calendar" style="font-size:24px;"></i>&nbsp;&nbsp;Select date of appointment</p>
		</div>
		<div style="margin:40px 0px 0px 70px;">
		<p style="display: block;padding: 0;margin: 0;font-size: 18px;text-align: left;">4.&nbsp;&nbsp;<i class="fa fa-mobile-phone" style="font-size:24px;"></i>&nbsp;&nbsp;&nbsp;&nbsp;Verify yourself using Aadhaar Number</p>
		</div>
		<div style="margin:40px 0px 0px 70px;">
		<p style="display: block;padding: 0;margin: 0;font-size: 18px;text-align: left;">5.&nbsp;&nbsp;<i class="fa fa-comments-o" style="font-size:24px;"></i>&nbsp;&nbsp;Get confirmation email</p>
		</div>
		</div>
		<div style="text-align:center;background-color:#F2F2F2;margin:40px 0px 0px 70px;border-radius:4px;border:2px solid #e5e5e5;">
			<h3 style="font-size: 1.4em;text-align: center;font-family: 'source_sans_proregular';color: #333;line-height: 140%;;margin-top:15px;display:inline-block;">Have queries?</h3><br>
			<h4 style="font-family:'source_sans_proregular';font-size: 1.4em;margin-bottom:20px;display:inline-block;">e-mail us helpdesk-ors@gov.in</h4>
		</div>
		
	
	</div>
</div>
<div class="col-sm-12 col-md-6 col-lg-6">
	<div style="background: #f2f2f2;padding: 20px;border: 1px solid #e5e5e5;margin:40px 0px 0px 20px;border-radius:4px;">
			<h3 style="font-size: 1.4em;text-align: center;font-family: 'source_sans_proregular';color: #333;line-height: 140%;;margin-top:15px;display:inline-block;">New Appointment</h3>
	</div>
	<div style="margin:0px 0px 0px 20px;">
			<h5 style="font-size: 18px;
    color: #668591;

    padding: 15px 5%;
    border-left:1px solid #e5e5e5;
    border-right:1px solid #e5e5e5;
    font-family: 'ralewaysemibold';">Verify yourself using email</h5>
	</div>
	<div style="padding: 20px 20px 20px 30px;border: 1px solid #e5e5e5;margin:-10px 0px 0px 20px;" class="column">
	<div>
	<label style="color: #555;
    font-size: 13px;
    text-transform: uppercase;
    font-family: 'source_sans_probold';">PLEASE ENTER YOUR EMAIL</label>
    </div>
    <div style="padding: 20px 20px 20px 15px;margin:-10px 0px 0px 0px;">
		<form id="email_form">
		<div class="row">
			<div>
				<input type="email" placeholder="Enter email here..." name="email" id="entered_email" style="width:350px;"/>
			</div>
			<div style="margin-left:25px;">
				<input type="submit" style="background: #0DB7C4;font-size: 15px;font-family: 'source_sans_probold';border:none;border-radius:4px;color:white;height:30px;width:100px;" value="SUBMIT"/>
			</div>
		</div>
		<div class="row" style="margin-top:10px;height:30px;">
			<div style="background-color:#CCCCCC;">
				<p style="padding-bottom:8px;padding-left:10px;padding-right:10px;margin-top:2px;" id="captcha"></p>
			</div>
			<div style="margin-left:55px;">
				<input type="text" placeholder="Type the Characters" name="passcode" id="entered_captcha" style="width:250px;"/>
			</div>
		</div>
		
		
		</form>
	
	</div>
	</div>
	
	<div style="background: #f2f2f2;padding: 20px;border: 1px solid #e5e5e5;margin:15px 0px 0px 20px;border-radius:4px;">
			<h3 style="font-size: 1.4em;text-align: center;font-family: 'source_sans_proregular';color: #333;line-height: 140%;;margin-top:15px;display:inline-block;">Followup Appointment/ Health Record</h3>
	</div>
	
	
	
	
	
	
	<div style="margin:0px 0px 0px 20px;">
			<h5 style="font-size: 18px;
    color: #668591;

    padding: 15px 5%;
    border-left:1px solid #e5e5e5;
    border-right:1px solid #e5e5e5;
    font-family: 'ralewaysemibold';">Select Hospital</h5>
	</div>
	<div style="padding: 20px 20px 20px 30px;border: 1px solid #e5e5e5;margin:-10px 0px 0px 20px;" class="column">
	<div class="row" style="margin-left: 0px;">
		<div>
			<label style="color: #555;
    		font-size: 13px;
    		text-transform: uppercase;
    		font-family: 'source_sans_probold';">SELECT STATE</label>
		</div>
		<div style="margin-left: 200px;">
			<label style="color: #555;
    		font-size: 13px;
    		text-transform: uppercase;
    		font-family: 'source_sans_probold';">SELECT HOSPITAL</label>
		
		</div>
	
    </div>
    <div style="padding: 20px 20px 20px 15px;margin:-10px 0px 0px 0px;">
		<form>
		<div class="row">
			<div>
				<select name="state" style="font-size: 15px;width:200px !important;">
					<option>ALL</option>
					<option>Delhi</option>
					<option>Jharkhand</option>
					<option>Madhya Pradesh</option>
					<option>Odisha</option>
					<option>Puducherry</option>
					<option>Uttarakhand</option>
				
				</select>
			</div>
			<div style="margin-left:90px;">
				<select name="hospital" style="font-size: 15px;width:200px !important;">
					<option>AIIMS Bhopal</option>
					<option>AIIMS, Bhubaneswar</option>
					<option>AIIMS, New Delhi</option>
					<option>All India Institute of Medical Sciences,Rishikesh</option>
					<option>Central Institute of Psychiatry  CIP </option>
					<option>DELHI STATE CANCER INSTITUTES (EAST), DILSHAD GARDEN</option>
					<option>DELHI STATE CANCER INSTITUTES  (WEST),  JANAK PURI </option>
					<option>Dr. RML Hospital, New Delhi</option>
					<option>ORS Demo Hospital</option>
					<option>UP NIC Test Hospital</option>
				</select>
			</div>
			
		</div>
		<br>
		<div style="text-align:right;margin-right:78px;">
				<input type="submit" style="background: #0DB7C4;font-size: 15px;font-family: 'source_sans_probold';border:none;border-radius:4px;color:white;height:30px;width:100px;" value="PROCEED"/>
		</div>
		</form>
	
	</div>
	
	</div>
	
	<div style="background: #f2f2f2;padding: 20px;border: 1px solid #e5e5e5;margin:0px 0px 0px 20px;border-radius:4px;">
			<h3 style="font-size: 1.4em;text-align: center;font-family: 'source_sans_proregular';color: #333;line-height: 140%;;margin-top:15px;display:inline-block;">View/Print/Pay/Cancel Appointment <a href="#">Click here</a></h3>
	</div>
	
	
</div>


</div>
</div>-->
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
<script>

	$('#loginForm').submit(function(){
		

		var email = $('#email').val();
		var phone = $('#phone').val();
		
		
		$.ajax({
			
			type:"GET",
			url: "login_user/"+email+"/"+phone,
		    success:function(data){
		    	sessionStorage.setItem("loggedInUser",JSON.stringify(data));
		    	window.location.href= "http://localhost:8093/home";

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