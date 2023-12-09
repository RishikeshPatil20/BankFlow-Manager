<%@page import="com.jsp.service.BankManagerService"%>
<%@page import="com.jsp.dto.Customer"%>
<%@page import="com.jsp.service.CustomerService"%>
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
	<%
	HttpSession bank_manager_httpSession = request.getSession();
	String b_id = (String) bank_manager_httpSession.getAttribute("managersessionid");
	String b_username = (String) bank_manager_httpSession.getAttribute("managerusername");
	String b_password = (String) bank_manager_httpSession.getAttribute("managerpassword");
	int managerId = Integer.parseInt(b_id);

	BankManagerService bankManagerService = new BankManagerService();
	List<Customer> customers = bankManagerService.viewAllApprovedCustomer();
	%>
	<div id="navbar">
		<span class="bank-name">BOB Bank</span> <a
			href="bank_manager_home.jsp" class="button">BankManager Home Page</a>
	</div>

	</div>
	<h1>Approved Customers List</h1>


	<table border="2px" cellspacing="0" cellpadding="1">
		<tr>
			<th>ID</th>
			<th>Name</th>
			<th>User-Name</th>
			<th>Email</th>
			<th>Address</th>
			<th>Password</th>
			<th>Gender</th>
			<th>Birth Date</th>
			<th>Mobile No</th>
			<th>Account Balance</th>
			<th>Delete</th>
		</tr>

		<%
		for (Customer c1 : customers) {
		%>
		<tr>
			<td><%=c1.getC_id()%></td>
			<td><%=c1.getC_name()%></td>
			<td><%=c1.getC_username()%></td>
			<td><%=c1.getC_email()%></td>
			<td><%=c1.getC_address()%></td>
			<td><%=c1.getC_password()%></td>
			<td><%=c1.getC_gender()%></td>
			<td><%=c1.getC_birthdate()%></td>
			<td><%=c1.getC_mobno()%></td>
			<td><%=c1.getAccount_balance()%></td>
			<td><a href="deleteCustomer.jsp?id=<%=c1.getC_id()%>">Delete</a></td>

		</tr>
		<%
		}
		%>


	</table>
</body>
</html>