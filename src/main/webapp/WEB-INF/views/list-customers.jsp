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

	<a href="/CustomerRelationshipManagement/customers/showFormForAdd">Add Customer</a>
	
	<table>
		<thead>
			<tr>
				<th>First Name</th>
				<th>Last Name</th>
				<th>Email</th>
				<th>Action</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${Customers}" var="tempCust">
				<tr>
					<td><c:out value="${tempCust.first_name}" /></td>
					<td><c:out value="${tempCust.last_name}" /></td>
					<td><c:out value="${tempCust.email}" /></td>
					<td>
						<a href="/CustomerRelationshipManagement/customers/showFormForUpdate?customerId=${tempCust.id}">Update</a> 
						<a href="/CustomerRelationshipManagement/customers/delete?customerId=${tempCust.id}" 
							onclick="if (!(confirm('Are you sure you want to delete this customer details?'))) return false">Delete</a>
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>

</body>
</html>