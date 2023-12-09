<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Manager Registration</title>
</head>
<body>
	<style>
.navbar {
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

body {
/*  	display: flex;
 */ 	justify-content: center;
	align-items: center;
	height: 100vh;
	margin: 0;
	background: url('money-saving.jpg') no-repeat center center fixed;
	background-size: cover;
	font-family: Arial, sans-serif;
}

form {
	border-style: double;
	background-color: #5D3FD3;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.5);
	padding: 20px;
	border-radius: 10px;
	max-width: 400px;
	text-align: center;
	opacity: 1;
	color: white;
	opacity: 0.9;
	margin : 100px 50px 50px 550px;
}

table {
	width: 100%;
}

td {
	padding: 10px;
}

.button {
	padding: 10px 20px;
	font-size: 18px;
	background-color: #00cc00;
	color: #fff;
	border: none;
	border-radius: 5px;
	cursor: pointer;
	transition: background-color 0.3s;
}

.button:hover {
	background-color: #40ff00;
}
</style>
</head>
<body>
	<div class="navbar">
		<span class="bank-name">BANK OF BHARAT </span> <a href="Home.jsp"
			class="button">BOB Home Page</a>
	</div>
	<form action="SignUp" method="post">
		<table border="1px" cellPadding="10px">
			<tr>
				<td colspan="2" align="center">
					<h1>Manager Registration</h1>
				</td>
			</tr>
			<tr>
				<td>Manager name</td>
				<td><input type="text" name="m_name" required></td>

			</tr>
			<tr>
				<td>Username</td>
				<td><input type="text" name="m_username" required></td>

			</tr>
			<tr>
				<td>Email Id</td>
				<td><input type="email" name="m_email" required></td>

			</tr>
			<tr>
				<td>Password</td>
				<td><input type="password" name="m_password" required></td>

			</tr>
			<tr>
				<td colspan="2" align="center"><input type="submit"
					value="Register"
					style="width: 150px; height: 40px; font-size: 15px; background-color: blue; color: white; cursor: pointer;">
				</td>
			</tr>

		</table>
	</form>

</body>
</html>