<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
    <%@ page import="java.util.List" %>
    <%@ page import="java.util.ArrayList" %>
    <%@ page import="com.lms.entity.Author" %>
    <%@ page import="com.lms.entity.Publisher" %>
    <%@ page import="com.lms.service.AdministratorService" %>
    <% 
    	AdministratorService service = new AdministratorService();
    	List<Publisher> publisher = service.getAllPubliser();
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js" ></script>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>LMS</title>
<h2>Welcome to GCIT Library Management System - Admin</h2>
${result}
<body>
<table border="2" id="publisherTable">
	<tr>
		<th>Publisher Name</th>
		<th>Publisher Address</th>
		<th>Edit</th>
		<th>Delete</th>
		
	</tr>
	
		<%for (Publisher a: publisher){ %>
		<tr>
		<td><% out.println(a.getPublisherName()); %></td>
		<td><% out.println(a.getPublisherAddress()); %></td>
	
		<td><button type="button" onclick="javascript:location.href='editpublisher?publisherId=<%=a.getPublisherId() %>'">EDIT</button>
		<td><button type="button" onclick="javascript:location.href='deletePublisher?publisherId=<%=a.getPublisherId() %>'">DELETE</button>
		
		</tr>
		<%} %>
		
	

</table>

</br>
<a href="index.html">Click -->HERE<-- to return home</a><br/>
</body>
</html>