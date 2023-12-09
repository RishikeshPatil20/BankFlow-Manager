<%@page import="com.jsp.dto.Customer"%>
<%@page import="java.util.List"%>
<%@page import="com.jsp.service.CustomerService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Approve Customers</title>
</head>
<body>
<h1>List of Customers</h1>

<% CustomerService customerService = new CustomerService();
List<Customer> customers = customerService.getAll();%>

<table border="2px" cellspacing="0" cellpadding="1">
<tr>
<th>Customer ID:</th>
                <th>Customer Name:</th>
                <th>Username:</th>
                <th>Email:</th>
                <th>Address:</th>
                <th>Gender:</th>
                <th>Birthdate:</th>
                <th>Mobile Number:</th>
                <th>Status:</th>
                <th>Account Balance:</th>
</tr>
<%for(Customer c : customers) { %>
<tr>
<td><%=c.getC_id()%></td>
                <td><%=c.getC_name()%></td>
                <td><%=c.getC_username()%></td>
                <td><%=c.getC_email()%></td>
                <td><%=c.getC_address()%></td>
                <td><%=c.getC_gender()%></td>
                <td><%=c.getC_birthdate()%></td>
                <td><%=c.getC_mobno()%></td>
                <td><%=c.getC_status()%></td>
                <td><%=c.getAccount_balance()%></td>
<%-- <td><a href="delete.jsp?id=<%=c.getC_id()%>">Delete</a></td>
<td><a href="update.jsp?id=<%=c.getC_id() %>">Update</a></td> --%>
<td><a href="approveCustomerButton.jsp"?id=<%=c.getC_id()%>">Approve</a></td>
<td><a href="unapproveCustomerButton.jsp"?id=<%=c.getC_id()%>">UnApprove</a></td>
</tr>

<%} %>
</table>
</body>
</html>