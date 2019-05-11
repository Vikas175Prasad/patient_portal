<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Departments</title>

<style>

.allpatients{

	text-align:center;
}

table{
	text-align:center;

}

</style>

<c:import url="adminheader.jsp"></c:import>
</head>
<body>
<div class="container">
<div style="text-align:center;padding:20px;">
<p><h2>Departments</h2></p>
</div>
<div style="text-align:right;">
<button class="btn btn-warning" id="addbutton">ADD DEPARTMENT</button>
</div>
<br>
<div style="text-align:right;" id="adddepartment">
<form">
	<label>Department Name:</label>
	<input type="text" id="departmentname" />
	<button class="btn btn-danger" id="add" style="font-size:11px;margin-top: -5px;">ADD</button>
</form>
<br>

</div>
<div class="allpatients">
	<table class="table" border="1">
		<thead class="table-dark">
			<tr>
				<th>S.No.</th>
				<th>Name</th>
				<th>Actions</th>
			</tr>
		</thead>
		<tbody id="notSearched">
			<c:forEach items="${departmentList}" var="departmentList" varStatus="loop">
				<tr>
					<td>${loop.count}</td>
					<td nowrap>${departmentList.departmentName}</td>
					<td nowrap><span><a href="#" onclick="deletetDept(${departmentList.id})">Close</a></span></td>
				</tr>
		
			</c:forEach>
		</tbody>
	
	</table>

</div>




</div>
<script type="text/javascript">
	
	$('#addbutton').click(function(){
		
		$('#adddepartment').toggle();
	});
	
	$(document).ready(function(){
		
		$('#adddepartment').hide();
	});
	
	
	$('#add').click(function(){
		
		var name = $('#departmentname').val();
		
			console.log(name);
			var json = {"department_name":name}
			$.ajax({
				
				headers:{
					
					"Content-Type":'application/json; charset utf-8'
				},
				url:"add_department",
				type:"POST",
				data:JSON.stringify(json),
				success:function(data){
					
					window.location.reload();
				},
				error:function(errorThrown){
					
					console.log(errorThrown);
				}
				
				
			});
			
		

	})
	
		function deletetDept(id){
				
		var json = {"id":id};
		$.ajax({
			
			headers:{
				
				"Content-Type":'application/json; charset utf-8'
			},
			url:"delete_department",
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