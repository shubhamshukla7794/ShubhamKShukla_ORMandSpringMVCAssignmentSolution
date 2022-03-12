<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" 
	integrity="sha512-9usAa10IRO0HhonpyAIVpjrylPvoDwiPUiKdWk5t3PyolY1cOd4DSE0Ga+ri4AuTroPR5aQvXU9xC6qOPnzFeg==" 
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<link href="<c:url value="/resources/css/style.css"/>" rel="stylesheet" />
<title>Customer Relationship Management</title>
</head>
<body>

<nav>
	<div class="logo"><a href="/CustomerRelationshipManagement/customers/list">Customer Relationship Management</a></div>
	<input type="checkbox" id="click">
	<label for="click" class="menu-btn">
		<i class="fa-solid fa-bars"></i>
	</label>
	<ul>
		<li><a href="/CustomerRelationshipManagement/customers/showFormForAdd"><i class="fa-solid fa-user-plus"></i> Add Customer</a></li>
	</ul>
</nav>

<div class="container">
	<table class="table">
		<caption class="heading">List of all Customers</caption>
		<thead>
			<tr>
				<th><i class="fa-solid fa-user-tie"></i> First Name</th>
				<th><i class="fa-solid fa-user-tie"></i> Last Name</th>
				<th><i class="fa-solid fa-envelope"></i> Email</th>
				<th class="align-action"><i class="fa-solid fa-bolt"></i> Action</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${Customers}" var="tempCust">
				<tr>
					<td data-label="First Name"><c:out value="${tempCust.first_name}" /></td>
					<td data-label="Last Name"><c:out value="${tempCust.last_name}" /></td>
					<td data-label="Email"><c:out value="${tempCust.email}" /></td>
					<td class="align-action" data-label="Action">
						<a href="/CustomerRelationshipManagement/customers/showFormForUpdate?customerId=${tempCust.id}" class="edit-btn">
						<i class="fa-solid fa-user-pen"></i> Update</a> 
						<a href="/CustomerRelationshipManagement/customers/delete?customerId=${tempCust.id}" 
							onclick="if (!(confirm('Are you sure you want to delete this customer details?'))) return false" class="delete-btn">
							<i class="fa-solid fa-user-xmark"></i> Delete</a>
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</div>

</body>
</html>