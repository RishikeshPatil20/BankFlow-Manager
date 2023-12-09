<%@page import="com.jsp.dto.Admin"%>
<%@page import="com.jsp.service.AdminService"%>
<%@page import="com.jsp.dto.BankManager"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
/* Apply styles to the entire body */
body {
	font-family: Arial, sans-serif;
	background-color: #f2f2f2;
	margin: 0;
	padding: 0;
}

/* Style the container */
.container {
	width: 80%;
	margin: 0 auto;
	padding: 20px;
	background-color: #ffffff;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
	border-radius: 5px;
	text-align: center;
}

/* Style the table */
table {
	width: 100%;
	border-collapse: collapse;
}

table, th, td {
	border: 1px solid #ccc;
}

th, td {
	padding: 10px;
	text-align: left;
}

th {
	background-color: #333;
	color: #fff;
}

/* Style alternating rows for better readability */
tr:nth-child(even) {
	background-color: #f2f2f2;
}

/* Style the table header and data cells */
th, td {
	padding: 10px;
}

/* Add some hover effect to the table rows */
tr:hover {
	background-color: #ddd;
}
/* CSS for the navigation bar */
#navbar {
	background-color: #333;
	color: #fff;
	display: flex;
	justify-content: space-between;
	align-items: center;
	padding: 10px 20px;
}

.bank-name {
	font-size: 24px;
	font-weight: bold;
}

.button {
	text-decoration: none;
	background-color: #007bff;
	color: #fff;
	padding: 10px 20px;
	border-radius: 5px;
	transition: background-color 0.3s ease;
}

.customer-home-button {
	text-decoration: none;
	background-color: #007bff;
	color: #fff;
	padding: 10px 20px;
	border-radius: 5px;
	transition: background-color 0.3s ease;
}

.customer-home-button:hover {
	background-color: #0056b3;
}
</style>
</head>
<body>
<div id="navbar">
		<span class="bank-name">BOB Bank</span> <a href="adminHomePage.jsp"
			class="button">Admin Home Page</a>
	</div>
<h1>List Of Approved Managers</h1>

<% AdminService adminService = new AdminService();
   List<BankManager> managers = adminService.viewAllApprovedBankManager();
%>

<% if(managers != null) { %>

<table border = "2px" cellspacing = "0" cellpadding = "1">
<tr>
<th>ID</th>
<th>User-Name</th>
<th>Email</th>
<th>Password</th>
</tr>

<% for(BankManager b : managers) { %>
	<tr>
		<td><%= b.getM_id()  %></td>
		<td><%= b.getM_username() %></td>
		<td><%= b.getM_email() %></td>
		<td><%= b.getM_password() %></td>
		
	</tr>
<% } %>
</table>
<% } else { %>
	<p>No Data</p>
<% } %>

</body>
</html>