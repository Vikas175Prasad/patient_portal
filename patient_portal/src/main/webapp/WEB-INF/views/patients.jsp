<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Patients</title>
<c:import url="adminheader.jsp"></c:import>
<style>

.allpatients{

	text-align:center;
}

</style>
</head>
<body>
<div class="container">
<div style="text-align:center;padding:20px;">
<p><input type="text" name="search" id="search" placeholder="Enter Patient Id" />&nbsp;&nbsp;<button id="searchpatient" class="btn btn-primary" style="font-size:11px;margin-top: -5px;">SEARCH</button></p>
</div>
<div style="text-align:center;color:red" id="notfound">
<p>No Patient Found!!!</p>
</div>
<div class="allpatients">
	<table class="table" border="1">
		<thead class="table-dark">
			<tr>
				<th>S.No.</th>
				<th>Id</th>
				<th>Name</th>
				<th> DOB</th>
				<th>Phone</th>
				<th>Email</th>
				<th>Actions</th>
			</tr>
		</thead>
		<tbody id="notSearched">
			<c:forEach items="${allpatients}" var="allpatients" varStatus="loop">
				<tr>
					<td>${loop.count}</td>
					<td>${allpatients.id}</td>
					<td nowrap>${allpatients.firstName} ${allpatients.lastName}</td>
					<td nowrap>${allpatients.dob}</td>
					<td>${allpatients.phone}</td>
					<td>${allpatients.email}</td>
					<td nowrap><span data-toggle="modal" data-target="#myModal" onclick="uploadId(${allpatients.id})"><a href="#">Upload Prescription</a></span ><span data-toggle="modal" data-target="#myModal" onclick="uploadId(${allpatients.id})"><a href="#">&nbsp;&nbsp;Upload Lab Reports</a></span><span style="display:none;"><a href="#">&nbsp;&nbsp;Discharged</a></span></td>
				</tr>
		
			</c:forEach>
		</tbody>
		<tbody id="searched">
				<tr>
					<td>1</td>
					<td id="patientid"></td>
					<td id="patientname" nowrap></td>
					<td id="patientdob" nowrap></td>
					<td id="patientphone"></td>
					<td id="patientemail"></td>
					<td nowrap><span><a href="#">Upload Prescription</a></span><span><a href="#">&nbsp;&nbsp;Upload Lab Reports</a></span></td>
				</tr>
		
		</tbody>
	
	</table>

</div>

</div>




<!-- The Modal -->
<div class="modal" id="myModal">
  <div class="modal-dialog">
    <div class="modal-content">

      <!-- Modal Header -->
      <div class="modal-header">
        <h4 class="modal-title">Upload PDFs</h4>
        <button type="button" class="close" data-dismiss="modal">&times;</button>
      </div>

      <!-- Modal body -->
      <div class="modal-body">
        <table>
        	<tr>
        		<td>Appointment Date</td>
        		<td><input type="date" id="appointment_date"/></td>
        	
        	</tr>
        	<tr>
        		<td>Document Type
        		</td>
        		<td><select id="documenttype" name="documenttype">
						<option>Prescription</option>
						<option>Lab Report</option>
					</select></td>
        	
        	</tr>
        	<tr>
        		<td>Choose File</td>
        		<td><input type="file" id="uploadedFile"/></td>
        	
        	</tr>
        	<tr>
        		<td></td>
        	
        	</tr>
        </table>
      </div>

      <!-- Modal footer -->
      <div class="modal-footer">
      <button type="button" class="btn btn-primary" data-dismiss="modal" id="upload">Upload</button>
        <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
      </div>

    </div>
  </div>
</div>




<script type="text/javascript">


	$(document).ready(function(){
		
		
		$('#searched').hide();
		$('#notfound').hide();
		
		
	});
	
	$('#searchpatient').click(function(){
		
		var id = $('#search').val();
		$.ajax({
			
			url:"searchPatient/"+id,
			type:"GET",
			success:function(data){
				
				var patObj = data["data"]
				$("#patientid").text(patObj.id) ;
				$("#patientname").text( patObj['firstname']+' '+patObj["lastname"]);
				$("#patientdob").text(patObj["dob"]);
				$("#patientphone").text(patObj["phone"]);
				$("#patientemail").text(patObj["email"]);
				$('#searched').show();
				$('#notSearched').hide();
				$('#notfound').hide();
				
			},
			error:function(errorThrown){
				
				$('#notfound').show();

				$('#searched').hide();
				$('#notSearched').hide();
			}
			
		});
	});
	
	function uploadId(id){
		
		localStorage.setItem("patientId",id);
	}
	
	$("#upload").click(function(){
		
		var id = localStorage.getItem("patientId");
		var uploadedFile = $('#uploadedFile')[0].files[0];
		var documentType  =$('#documenttype option:selected').val();
		var appDate  =$('#appointment_date').val();
		appDate = appDate.replace("-","/");
		appDate = appDate.replace("-","/");
		console.log(appDate);
		var data = new FormData();
		data.append('file', uploadedFile);
		data.append('documentType', documentType);
		data.append('appointmentDate', appDate);
		data.append('patientId', id);
		
		$.ajax({
		    url: 'upload_report',
		    data: data,
		    cache: false,
		    contentType: false,
		    processData: false,
		    type: 'POST',
		    success: function(data){
		        console.log(data);
		    }
		});
		
	});
	


</script>
</body>
</html>