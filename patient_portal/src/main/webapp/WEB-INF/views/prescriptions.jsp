<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Prescriptions</title>
<c:import url="header.jsp"></c:import>
<style>

.allpatients{

	text-align:center;
}

table{
	text-align:center;

}

</style>
</head>
<body>
<div class="container">
<div style="text-align:center;padding:20px;">
<p><h2>Prescriptions</h2></p>
</div>

<div class="allpatients">
	<table class="table" border="1">
		<thead class="table-dark">
			<tr>
				<th>S.No.</th>
				<th>Appointment Date</th>
				<th>Action</th>
			</tr>
		</thead>
		<tbody id="notSearched">
			<c:forEach items="${prescriptionsList}" var="prescriptionsList" varStatus="loop">
				<tr>
					<td>${loop.count}</td>
					<td nowrap>${prescriptionsList.appointmentDate}</td>
					<td nowrap><span style="display: none;" id="filename">${prescriptionsList.fileName}</span><a href="#" id="downloadButton" onclick="downloadFile()">View/Download</a></td>
				</tr>
		
			</c:forEach>
		</tbody>
	
	</table>

</div>
</div>
<script>
	function downloadFile(){
		
		var fileName = $('#filename').text();
		console.log(fileName);
		$('#downloadButton').attr({target: '_blank', href: "/download/"+fileName});
		
		
	}
	

</script>
</body>
</html>