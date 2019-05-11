<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All Appointments</title>
<style>

	.appointmentstable{
		
		margin-top:50px;
		text-align:center;
	
	}
</style>
<c:import url="header.jsp"></c:import>
</head>
<body>
<div style="text-align:center;">
<h2>All Appointments</h2>
</div>
<div class="container">

	<div class="appointmentstable">
		<table class="table" border="1">
		<thead class="thead-dark">
      		<tr>
        		<th>S.No.</th>
				<th>Appointment Date</th>
				<th>Department</th>
				<th>Booked On</th>
      		</tr>
    </thead>
			<c:forEach items="${appointmentList}" var="appointmentList" varStatus="loop">
			<tr>
				<td>${loop.count}</td>
				<td>${appointmentList.appointmentDate }</td>
				<td>${appointmentList.department }</td>
				<td>${appointmentList.dateOfBooking }</td>
				
			</tr>
			</c:forEach>
		</table>
	
	</div>

</div>


</body>
</html>