<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Manager Login Page</title>
</head>
<body>
	<style>
body {
 /* 	display: flex; */
 	justify-content: center;
	align-items: center;
	height: 100vh;
	margin: 0;
	background-image: url('WManager.jpg');
	background-repeat: no-repeat;
	background-size: cover;
	background-position: center;
	font-family: Arial, sans-serif;
}

.navbar {
	color:  #4d4d4d;
	display: flex;
	justify-content: space-between;
	align-items: center;
	padding: 10px 20px;
}

.bank-name {
	color:white;
	font-size: 24px;
	font-weight: bold;
}
a{
	text-decoration: none;
}
.container {
	background-color: #f0f8ff;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.5);
	padding: 1px;
	border-radius: 10px;
	max-width: 400px;
	text-align: center;
	opacity: 0.9;
	margin-left: 20px;
	margin-top: 150px;
}

h1 {
	margin: 0;
	padding-bottom: 20px;
}

table {
	width: 100%;
}

td {
	padding: 5px;
}

label {
	display: block;
	text-align: right;
	padding-right: 10px;
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

.button:active {
	background-color: #3e8e41;
	box-shadow: 0 5px #666;
	transform: translateY(4px);
}

.create-account {
	width: 110px;
	height: 20px;
	font-size: 15px;
}
</style>
</head>
<body>
	<div class="navbar">
		<span class="bank-name">BANK OF BHARAT </span> <a href="Home.jsp"
			class="button">BOB Home Page</a>
	</div>
	<div class="container">
		<form action="ManagerSignUp" method="post">
			<table>
				<h1>Manager Login</h1>
				<br>
				<tr>
					<td>Manager Id</td>
					<td><input type="number" name="manager_id" required></td>

				</tr>
				<tr>
					<td>Username</td>
					<td><input type="text" name="manager_username" required></td>

				</tr>
				<tr>
					<td>Password</td>
					<td><input type="password" name="manager_password" required></td>

				</tr>
				<tr>
					<td colspan="2" align="center"><input class="button"
						type="submit" value="Login"></td>
				</tr>
				<tr>
					<td colspan="2" align="center"><a href="managerReg.jsp"
						style="text-decoration: none;">
							<div class="button create-account">Create Account</div>
					</a></td>
				</tr>

			</table>
		</form>
	</div>

</body>
</html>