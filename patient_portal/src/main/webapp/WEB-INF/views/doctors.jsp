<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Doctors</title>
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
<p><h2>Doctors</h2></p>
</div>
<div style="text-align:right;">
<button class="btn btn-warning" id="addbutton">ADD DOCTOR</button>
</div>
<br>
<div id="adddepartment">
<form style="float:right;">
	<table>
		<tr>
			<td>Doctor Name:</td>
			<td><input type="text" id="doctorname" /></td>
		</tr>
		<tr>
			<td>Phone:</td>
			<td><input type="text" id="phone" maxLength="10" /></td>
		</tr>
		<tr>
			<td>Specialization:</td>
			<td>
			<select id="specialization" name="specialization">
				<option>M.B.B.S</option>
				<option>M.D</option>
				<option>M.S</option>
				<option>M.Phil</option>
			</select>
			</td>
		</tr>
		<tr>
			<td>Department:</td>
			<td>
			<select id="departments" name="department">
				
			</select>
			</td>
		</tr>
		<tr>
			<td></td>
			<td><button class="btn btn-danger" id="add" style="font-size:11px;margin-top: 5px;">ADD</button></td>
		</tr>
	
	
	
	</table>
	<br>
	
</form>

</div>

<div class="allpatients">
	<table class="table" border="1">
		<thead class="table-dark">
			<tr>
				<th>S.No.</th>
				<th>Name</th>
				<th>Phone</th>
				<th>Specialization</th>
				<th>Department</th>
				<th>Actions</th>
			</tr>
		</thead>
		<tbody id="notSearched">
			<c:forEach items="${doctorsList}" var="doctorsList" varStatus="loop">
				<tr>
					<td>${loop.count}</td>
					<td nowrap>${doctorsList.name}</td>
					<td nowrap>${doctorsList.phone}</td>
					<td nowrap>${doctorsList.specialization}</td>
					<td>${doctorsList.department.departmentName}</td>
					<td nowrap><span><a href="#" onclick="deletetDept(${doctorsList.id})">Delete</a></span></td>
				</tr>
		
			</c:forEach>
		</tbody>
	
	</table>

</div>

</div>
<script type="text/javascript">


	$(document).ready(function(){
		
		
		$('#searched').hide();
		$('#notfound').hide();
		
		$('#adddepartment').toggle();
		
		$.ajax({
			
			headers:{
				
				"Content-Type":'application/json; charset utf-8'
			},
			url:"all_departments",
			type:"GET",
			success:function(data){
				
				var departmentList = data.departmentList;
				console.log(departmentList);
				$.each(departmentList, function( value) {   
				     $('#departments')
				         .append($("<option></option>")
				                    .attr("value",departmentList[value].id)
				                    .text(departmentList[value].department_name)); 
				});
			},
			error:function(errorThrown){
				
				console.log(errorThrown);
			}
		});
		
		
	});
	
	
	
	$('#addbutton').click(function(){
		
		$('#adddepartment').toggle();
	});
	
	$('#add').click(function(){
		
		var name = $('#doctorname').val();
		var phone = $('#phone').val();
		var specialization = $('#specialization option:selected').val();
		var departmentVal = $('#departments option:selected').val();
		var departmentText = $('#departments option:selected').val();
		var dept = {"id":departmentVal};
		
		var json = {"name":name,"phone":phone,"specialization":specialization,"department":dept};
		console.log(json);
		
		$.ajax({
			
			headers:{
				
				"Content-Type":'application/json; charset utf-8'
			},
			url:"add_doctor",
			type:"POST",
			data:JSON.stringify(json),
			success:function(data){
				
				window.location.reload();
			},
			error:function(errorThrown){
				
				console.log(errorThrown);
			}
			
			
		});
		return false;
			
	});
	
	function deletetDept(id){
				
		var json = {"id":id};
		$.ajax({
			
			headers:{
				
				"Content-Type":'application/json; charset utf-8'
			},
			url:"delete_doctor",
			type:"DELETE",
			data:JSON.stringify(json),
			success:function(data){
				
				window.location.reload();
			},
			error:function(errorThrown){
				
				console.log(errorThrown);
			}

		});
			}


</script>
</body>
</html>