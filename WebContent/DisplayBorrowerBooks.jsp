<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
    <%@ page import="java.util.List" %>
    <%@ page import="java.util.ArrayList" %>
    <%@ page import="com.lms.entity.Author" %>
    <%@ page import="com.lms.entity.Book" %>
    <%@ page import="com.lms.service.AdministratorService" %>
    <% int cardN=0;
    if(request.getAttribute("cardNo")!=null){
    	cardN = (Integer)request.getAttribute("cardNo");
    	}
    	AdministratorService service = new AdministratorService();
    	List<Book> book = service.getAllBooksOfBorrower(cardN);
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>LMS</title>
<h2>Welcome to GCIT Library Management System - Admin</h2>
${result}
<body>
<h2>Extend the Due dates of the user.</h2>
<table border="2" id="bookTable">
	<tr>
		
		<th>Book Title</th>
	
		<th>Extend the due date</th>
		
	</tr>
	
		<%for (Book b: book){ %>
		<tr>
		<td><% out.println(b.getTitle()); %></td>
		
		<td><button type="button" onclick="javascript:location.href='renewBook?bookId=<%=b.getBookId() %>&cardNo=<%=cardN %>'">Extend the due date</button>
		
		</tr>
		 <%} %>
	

	

</table>
</body>
</html>