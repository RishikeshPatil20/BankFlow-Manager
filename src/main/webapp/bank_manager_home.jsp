<%@page import="com.jsp.dto.BankManager"%>
<%@page import="com.jsp.service.BankManagerService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bank</title>
<style>
/* Navbar styles */
#navbar {
	background-color: #2d2d2d;
	height: 70px;
	display: flex;
	align-items: center;
	justify-content: space-between;
	padding: 0 20px;
}

#logo img {
	max-height: 100%;
	max-width: 150px; /* Set a specific width that fits the navbar */
}

#bank-name {
	color: #fff;
	font-size: 24px;
	font-family: 'Franklin Gothic Medium', sans-serif;
}

#manager-name {
	color: #fff;
	font-size: 24px;
	font-family: 'Franklin Gothic Medium', sans-serif;
}

/* Button styles */
#buttons {
	margin-top: 20px;
	display: flex;
	flex-direction: column;
	align-items: center; /* Center-align the buttons */
	padding-left: 20px;
}

.button {
	background-color: #ffcc00;
	color: #2d2d2d;
	border: none;
	padding: 10px 20px;
	border-radius: 4px;
	cursor: pointer;
	margin: 10px 0;
	text-decoration: none;
	transition: background-color 0.3s ease-in-out, color 0.3s ease-in-out;
}

.button:hover {
	background-color: #2d2d2d;
	color: #ffcc00;
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
	BankManager bankManager = bankManagerService.getBankManagerById(managerId);
	String bname = bankManager.getM_name();
	%>
	<form action="Home" method="post">
		<div id="navbar">
			<div id="logo">
				<img
					src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ8IHjxHYPJb4x0OkTF3MBF30JQN0wjbxu6P13ANV-dMpmeSsyRUHVATE2HgcAzojgDRnw&usqp=CAU"
					alt="logo">
			</div>
			<div id="bank-name">BOB Bank</div>
			<!-- Add the bank name here -->
			<div id="manager-name"><%= bname %></div>
			<!-- Add the manager name here -->
		</div>
		<div id="buttons">
			<a href="allCustomers.jsp" class="button">All Customers</a> <a
				href="viewApprovedCustomers.jsp" class="button">Approved Customers</a>
				 <a href="viewUnApprovedCustomers.jsp" class="button">UnApproved Customers</a> 
				<a href="ManagerLogOut.jsp" class="button">Log Out</a>
		</div>
	</form>
</body>
</html>
