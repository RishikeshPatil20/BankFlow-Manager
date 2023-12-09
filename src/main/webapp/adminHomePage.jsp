<%@page import="com.jsp.dto.Admin"%>
<%@page import="com.jsp.service.AdminService"%>
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
</style>
</head>
<body>

	<%HttpSession httpSession=request.getSession();
	String id=(String) httpSession.getAttribute("sessionid");
	String username=(String) httpSession.getAttribute("sessionname");
	String password=(String) httpSession.getAttribute("sessionpassword");
	
	int idNo = Integer.parseInt(id);
	AdminService adminService=new AdminService();
	Admin admin= adminService.getAdminById(idNo);
	String admin_name=admin.getAdmin_name();
	
%>

<form action="Home" method="post">
    <div id="navbar"> 
        <div id="logo">
            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ8IHjxHYPJb4x0OkTF3MBF30JQN0wjbxu6P13ANV-dMpmeSsyRUHVATE2HgcAzojgDRnw&usqp=CAU" alt="logo"> 
        </div>  
        <div id="name"><%=admin_name%></div>
    </div>
    <div id="buttons">
    	<a href="allManagers.jsp" class="button">All Managers</a>
        <a href="viewApprovedManagers.jsp" class="button">Approved Managers</a>
        <a href="viewUnApprovedManagers.jsp" class="button">Un-Approved Managers</a>
        <a href="adminLogOut.jsp" class="button">Log Out</a>
    </div>
</form>
</body>
</html>