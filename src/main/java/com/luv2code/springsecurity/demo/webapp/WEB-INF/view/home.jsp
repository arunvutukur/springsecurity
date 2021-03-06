<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<html>

<head>
	<title>luv2code Company Home Page</title>
</head>

<body>
	<h2>luv2code Company Home Page</h2>
	<hr>
	
	<p>
	Welcome to the luv2code company home page!
	<br><br>
	User: <security:authentication property ="principal.username" />
	<br><br>
	Role(s): <security:authentication property ="principal.authorities" />
	</p>
	
	<hr>
	<!-- Add a link to point to /leaders...this is for managers -->
	
	<p>
	
	<security:authorize access="hasRole('MANAGER')">
	
	<a href="${pageContext.request.contextPath}/leaders">Leadership Meeting</a>
	(only for Manager Peeps)
	
	</security:authorize>
	
	<hr>
	
	<!-- Adding an admin page here -->
	
    <security:authorize access="hasRole('ADMIN')">
	
	<a href="${pageContext.request.contextPath}/admin">IT Administrators</a>
	(only for Admin Peeps)
	
	</security:authorize>
	
	<hr>
	
	
	
	
	<!-- Add a logout button -->
	<form:form action="${pageContext.request.contextPath}/logout" 
			   method="POST">
	
		<input type="submit" value="Logout" />
	
	</form:form>
	
</body>

</html>









