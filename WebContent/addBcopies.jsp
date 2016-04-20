<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
    <%@ page import="java.util.List" %>
    <%@ page import="java.util.ArrayList" %>
    <%@ page import="com.lms.entity.Author" %>
    <%@ page import="com.lms.entity.Book" %>
      <%@ page import="com.lms.entity.LibraryBranch" %>
    <%@ page import="com.lms.service.AdministratorService" %>
    <% 
    	AdministratorService service = new AdministratorService();
    	List<Book> book = service.getAllBooks();
    	List<LibraryBranch> branch = service.getAllBranches();
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Displaying all the books in the systems.</title>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js" ></script>

${result}
</head>
<body>

<form action="addBcopies" method="post">
	<br></br>
		List of Books:<br/>
		<select name="bookId">
			<%for(Book b: book){ %>
			<option value="<%=b.getBookId()%>"><%=b.getTitle() %></option>
			<%} %>
		</select><br/>
		<br></br>
		Select your branch:<br/>
		<select name="branchId">
			<%for(LibraryBranch lb: branch){ %>
			<option value="<%=lb.getBranchId()%>"><%=lb.getBranchName()%></option>
			<%} %>
		</select><br/>
		<br></br>
		Enter the number of copies <input type="text" name="noOfCopies"> <br />
		
		<button type="submit">Add Book</button>
	</form>





</body>
</html>