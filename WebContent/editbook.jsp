<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
    <%@ page import="java.util.List" %>
    <%@ page import="java.util.ArrayList" %>
    <%@ page import="com.lms.entity.Author" %>
    <%@ page import="com.lms.entity.Book" %>
    <%@ page import="com.lms.service.AdministratorService" %>
    <%Book book = null;
    if(request.getAttribute("book")!=null){
    	book = (Book)request.getAttribute("book");
    	}%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>LMS</title>
<h2>Welcome to GCIT Library Management System - Admin</h2>
<h3>Edit Book Details Below:</h3>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js" ></script>

${result}
</head>
<body>
	<form action="editbook" method="post">
		Book title: <input type="text" name="bookName" value="<%=book.getTitle() %>"> <br />
		<input type="hidden" name="bookId" value=<%=book.getBookId() %>>
		<button type="submit">Edit Book</button>
	</form>
</body>
</html>