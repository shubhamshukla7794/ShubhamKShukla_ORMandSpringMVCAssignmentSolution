<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Customer Relationship Management</title>
</head>
<body>
	<h2>Customer Relationship Management</h2>
	<hr>
	
	<p>Save Customer</p>
	
	<form action="/CustomerRelationshipManagement/customers/save" method="post">
		<input type="hidden" name="id" value="${Customer.id}" />
		
		<p>First Name</p>
		<input type="text" name="first_name" value="${Customer.first_name}" placeholder="First Name">
	
		<p>Last Name</p>
		<input type="text" name="last_name" value="${Customer.last_name}" placeholder="First Name">
	
		<p>Email</p>
		<input type="text" name="email" value="${Customer.email}" placeholder="First Name">
		
		<button type="submit">Save</button>
	</form>

	<a href="/CustomerRelationshipManagement/customers/list"> Back to Customer List</a>

</body>
</html>