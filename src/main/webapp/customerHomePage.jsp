<%@page import="com.jsp.service.CustomerService"%>
<%@page import="com.jsp.dto.Customer"%>
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

#name {
	color: #fff;
	font-size: 24px;
	font-family: 'Franklin Gothic Medium', sans-serif;
}

/* Button styles */
#buttons {
	margin-top: 20px;
	display: flex;
	flex-direction: column;
	align-items: flex-start;
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
/* Additional styles for the right navigation bar */
        .menu-container {
            display: flex;
            justify-content: flex-end;
            align-items: center;
            margin-right: 20px;
        }

        .menu-links {
            list-style: none;
            padding: 0;
            margin: 0;
            display: flex;
        }

        .menu-links li {
            margin-left: 20px;
        }

        .menu-links a {
            text-decoration: none;
            color: #2d2d2d;
        }

        .menu-links a:hover {
            color: #ffcc00;
        }
</style>
</head>
<body>
	<%HttpSession httpSession=request.getSession();
String cid=(String) httpSession.getAttribute("sessionid");
String cusername=(String) httpSession.getAttribute("sessionname");
String spassword=(String) httpSession.getAttribute("sessionpassword");
int cust_Id = Integer.parseInt(cid);
CustomerService customerService = new CustomerService();
Customer customer=customerService.getCustomerById(cust_Id);
String cust_name=customer.getC_name();
  %>
	<form action="Home" method="post">
		<div id="navbar">
			<div id="logo">
				<img
					src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ8IHjxHYPJb4x0OkTF3MBF30JQN0wjbxu6P13ANV-dMpmeSsyRUHVATE2HgcAzojgDRnw&usqp=CAU"
					alt="logo">
			</div>
			<div id="name"><%= cust_name %></div>
		</div>
		<div id="buttons">
			<a href="CustomerAccountDetails.jsp" class="button">Account
				Details</a> <a href="customerdeposit.jsp" class="button">Deposit</a> <a
				href="customerWithdraw.jsp" class="button">Withdrawal</a> <a
				href="customerTransferFunds.jsp" class="button">Transfer Funds</a> <a
				href="customerLogOut.jsp" class="button">Log Out</a>
		</div>
		
	</form>
</body>
</html>
