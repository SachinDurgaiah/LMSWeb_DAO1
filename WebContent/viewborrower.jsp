<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
    <%@ page import="java.util.List" %>
    <%@ page import="java.util.ArrayList" %>
    <%@ page import="com.lms.entity.Author" %>
    <%@ page import="com.lms.entity.Borrower" %>
    <%@ page import="com.lms.service.AdministratorService" %>
    <% 
    	AdministratorService service = new AdministratorService();
    	List<Borrower> bow = service.getAllBorrower();
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js" ></script>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>LMS</title>
<h2>Welcome to GCIT Library Management System - Admin</h2>
${result}
<body>
<table border="2" id="borrowTable">
	<tr>
		<th>Borrower Name</th>
		<th>Address</th>
		<th>Phone</th>
		<th>Edit</th>
		<th>Delete</th>
	</tr>
	
		<%for (Borrower br: bow){ %>
		<tr>
		<td><% out.println(br.getName()); %></td>
		<td><% out.println(br.getAddress()); %></td>
		<td><% out.println(br.getPhone()); %></td>
		
		<td><button type="button" onclick="javascript:location.href='editBorrower?cardNo=<%=br.getCardNo() %>'">EDIT</button>
		<td><button type="button" onclick="javascript:location.href='deleteBorrower?cardNo=<%=br.getCardNo() %>'">DELETE</button>
		
		</tr>
		<%} %>
		
	

</table>

</br>
<a href="index.html">Click --HERE-- to return home</a><br/>

</body>
</html>