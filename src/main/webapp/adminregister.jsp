<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Admin Registration Page</title>
<style>
body {
	color: #fff;
	align-items: center;
	padding: 10px 20px;
	background:
		url('https://i.pinimg.com/originals/de/80/ca/de80ca4922b016784c86f80ee5c8966f.gif')
		no-repeat center center fixed;
	background-size: cover;
	font-family: Arial, sans-serif;
}

form {
	border-style: double;
	background-color: #008ae6;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.5);
	padding: 20px;
	border-radius: 10px;
	max-width: 400px;
	text-align: center;
	opacity: 0.9;
	display: flex;
	align-items: center;
	margin-top: 150px;
	margin-left: 30%;
}

a {
	text-decoration: none;
	margin-left: 70%;
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
	background-color: #0059b3;
}

.bank-name {
	font-size: 24px;
	font-weight: bold;
}
</style>
</head>
<body>
	<div class="navbar">
		<span class="bank-name"> BANK OF BHARAT </span> <a href="Home.jsp"
			class="button">BOB Home Page</a>
	</div>
	<form action="adminRegister" method="post">
		<table>
			<tr>
				<td colspan="2">
					<h1>Admin Registration</h1>
				</td>
			</tr>
			<tr>
				<td>Username</td>
				<td><input type="text" name="a_username" required></td>
			</tr>
			<tr>
				<td>Password</td>
				<td><input type="password" name="a_password" required></td>
			</tr>
			<tr>
				<td colspan="2"><input class="button" type="submit"
					value="Register"></td>
			</tr>
		</table>
	</form>
</body>
</html>