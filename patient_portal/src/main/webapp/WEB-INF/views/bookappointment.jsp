<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Book Appointment</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <style>
  	.bookingcalender{
  	
  		padding:70px;
  		text-align:center
  	
  	}
  	
  	.bookingcalender > table > thead{
  	
  	
  		background-color:#FB4D15;
  		color:white;
  		font-weight:800;
  	
  	}
  	
  	.date:hover{
  	
  		cursor:pointer;
  	}
  	
  	.departmentselect{
  	
  		padding:50px 0px 0px 70px;
  		text-align:left;
  	
  	}
  
  
  </style>
</head>
<body>
<c:import url="header.jsp"></c:import>
<div class="container">
	<div class="departmentselect">
		Department:
		<select name="department" onchange="depaartmentChange()">
			<option>--Select Department</option>
			<option value="Skin" name="department">Skin</option>
			<option value="ENT" name="department">ENT</option>
			<option value="Medicine" name="department">Medicine</option>
			<option value="Dental" name="department">Dental</option>
			<option value="Gastro" name="department">Gastro</option>
		</select>
	</div>
	<div class="bookingcalender">
		<table border="1" cellpadding="8">
			<thead>
				<tr>
					<td colspan="7">Month: January</td>
				</tr>		
			</thead>
			<tbody>
				<tr>
					<td id="1" class="date" onclick="dateSelected(1)"><span>1</span><br><span>Seats Available:6</span></td>
					<td id="2" class="date" onclick="dateSelected(2)"><span>2</span><br><span>Seats Available:6</span></td>
					<td id="3" class="date" onclick="dateSelected(3)"><span>3</span><br><span>Seats Available:6</span></td>
					<td id="4" class="date" onclick="dateSelected(4)"><span>4</span><br><span>Seats Available:6</span></td>
					<td id="5" class="date" onclick="dateSelected(5)"><span>5</span><br><span>Seats Available:6</span></td>
					<td id="6" class="date" onclick="dateSelected(6)"><span>6</span><br><span>Seats Available:6</span></td>
					<td id="7" class="date" onclick="dateSelected(7)"><span>7</span><br><span>Seats Available:6</span></td>
				</tr>
				<tr>
					<td id="8" class="date" onclick="dateSelected(8)"><span>8</span><br><span>Seats Available:6</span></td>
					<td id="9" class="date" onclick="dateSelected(9)"><span>9</span><br><span>Seats Available:6</span></td>
					<td id="10" class="date" onclick="dateSelected(10)"><span>10</span><br><span>Seats Available:6</span></td>
					<td id="11" class="date" onclick="dateSelected(11)"><span>11</span><br><span>Seats Available:6</span></td>
					<td id="12" class="date" onclick="dateSelected(12)"><span>12</span><br><span>Seats Available:6</span></td>
					<td id="13" class="date" onclick="dateSelected(13)"><span>13</span><br><span>Seats Available:6</span></td>
					<td id="14" class="date" onclick="dateSelected(14)"><span>14</span><br><span>Seats Available:6</span></td>
				</tr>
				<tr>
					<td id="15" class="date" onclick="dateSelected(15)"><span>15</span><br><span>Seats Available:6</span></td>
					<td id="16" class="date" onclick="dateSelected(16)"><span>16</span><br><span>Seats Available:6</span></td>
					<td id="17" class="date" onclick="dateSelected(17)"><span>17</span><br><span>Seats Available:6</span></td>
					<td id="18" class="date" onclick="dateSelected(18)"><span>18</span><br><span>Seats Available:6</span></td>
					<td id="19" class="date" onclick="dateSelected(19)"><span>19</span><br><span>Seats Available:6</span></td>
					<td id="20" class="date" onclick="dateSelected(20)"><span>20</span><br><span>Seats Available:6</span></td>
					<td id="21" class="date" onclick="dateSelected(21)"><span>21</span><br><span>Seats Available:6</span></td>
				</tr>
				<tr>
					<td id="22" class="date" onclick="dateSelected(22)"><span>22</span><br><span>Seats Available:6</span></td>
					<td id="23" class="date" onclick="dateSelected(23)"><span>23</span><br><span>Seats Available:6</span></td>
					<td id="24" class="date" onclick="dateSelected(24)"><span>24</span><br><span>Seats Available:6</span></td>
					<td id="25" class="date" onclick="dateSelected(25)"><span>25</span><br><span>Seats Available:6</span></td>
					<td id="26" class="date" onclick="dateSelected(26)"><span>26</span><br><span>Seats Available:6</span></td>
					<td id="27" class="date" onclick="dateSelected(27)"><span>27</span><br><span>Seats Available:6</span></td>
					<td id="28" class="date" onclick="dateSelected(28)"><span>28</span><br><span>Seats Available:6</span></td>
				</tr>
				<tr>
					<td id="29" class="date" onclick="dateSelected(29)"><span>29</span><br><span>Seats Available:6</span></td>
					<td id="30" class="date" onclick="dateSelected(30)"><span>30</span><br><span>Seats Available:6</span></td>
					<td id="31" class="date" onclick="dateSelected(31)"><span>31</span><br><span>Seats Available:6</span></td>
				</tr>			
			</tbody>
		</table>
	
	
	</div>
	<div style="text-align:right;margin-bottom:30px;">
		<p>Selected department: <span id="selecteddepartment"></span></p>
		<p>Selected date of appointment: <span id="fullselecteddate"></span></p>
		<button class="btn btn-primary" id="proceed">BOOK APPOINTMENT</button>
	
	
	</div>
</div>
<script>
var userDetail;
	$(document).ready(function(){
		
		$('#fullselecteddate').text('D/M/YYYY');
		$('#proceed').attr("disabled", true);
		
		userDetail = JSON.parse(sessionStorage.getItem("loggedInUser"));
		console.log(userDetail);
		
	});
	
	
	function depaartmentChange(){
		
		var selectedDepartment = $('select[name=department]').val();
		$('#selecteddepartment').text(selectedDepartment);
		var date = $('#fullselecteddate').text();
		
		if(date !== 'D/M/YYYY'){
			$('#proceed').attr("disabled", false);
			
		}
		
	}
	
	
	
	
	
	function dateSelected(selectedDate){
		
		$('#fullselecteddate').text(selectedDate+'/1/2019');
		
		var selectedDepartment = $('select[name=department]').val();
		
		if(selectedDepartment == '--Select Department'){
			
			$('#proceed').attr("disabled", true);
			
		}else{

			$('#proceed').attr("disabled", false);
		}
	}
	
	$('#proceed').click(function(){
		
		var selectedDepartment = $('select[name=department]').val();
		var selectedDate = $('#fullselecteddate').text();
		var patientId = userDetail['id'];
		var d = new Date();
		
		var formattedDate = d.getDate()+'/'+(d.getMonth()+1)+'/'+d.getFullYear()+' '+d.getHours()+':'+d.getMinutes()+':'+d.getSeconds();

		var json = {'patient_id': patientId,'department':selectedDepartment,'appointment_date':selectedDate,'date_of_booking':formattedDate};
		
		$.ajax({
			
			headers:{"Content-Type":"application/json; charset:utf-8"},
			type:'POST',
			url:'book_appointment',
			data:JSON.stringify(json),
			contentType: "application/json; charset=utf-8",
			success:function(data){
				
				if(data['message'] === 'Success'){
					
					
					window.location.href = "http://localhost:8093/home";
				}
				
			},
			error:function(errorThrown){
				
				
				
			}
			
			
		});
		
	
	});
	


</script>
</body>
</html>