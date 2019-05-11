<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
	<head>
		<title>Authentication</title>
	</head>		

	<body>
	
		<h1><strong>Authenticate Login</strong></h1>
						
		<c:url value="/login" var="login"/>
		
		<form:form action="" method="post">
			<label>Username:</label> <input type="text" name="username" />
			<label>Password:</label> <input type="text" name="password" />
			<input type="submit"/>
		</form:form>
	</body>
</html>