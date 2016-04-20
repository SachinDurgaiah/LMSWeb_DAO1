<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
    <%@ page import="java.util.List" %>
    <%@ page import="java.util.ArrayList" %>
    <%@ page import="com.lms.entity.Author" %>
    <%@ page import="com.lms.entity.Book" %>
    <%@ page import="com.lms.service.AdministratorService" %>
    <% 
    	AdministratorService service = new AdministratorService();
    	List<Book> book = service.getAllBooks();
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js" ></script>
<script type="text/javascript">
function deleteAuthor(authorId){
	$.ajax({
		  url: "deleteAuthor",
		  data:{
			  authorId: authorId
		  }
		}).done(function(data) {
		  $('#authorsTable').html(data);
		});
}

</script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>LMS</title>
<h2>Welcome to GCIT Library Management System - Admin</h2>
${result}
<body>
<table border="2" id="bookTable">
	<tr>
		
		<th>Book Title</th>
		<th>Author Name</th>
		<th>Edit</th>
		<th>Delete</th>
	</tr>
	
		<%for (Book b: book){ %>
		<tr>
		<td><% out.println(b.getTitle()); %></td>
		<td><%if(b.getAuthor()!=null && b.getAuthor().size() >0){
			for(Author a: b.getAuthor()){
				out.println(a.getAuthorName());
				out.println(", ");
			}
		}	
		%></td>
		<td><button type="button" onclick="javascript:location.href='editbook?bookId=<%=b.getBookId() %>'">EDIT</button>
		<td><button type="button" onclick="javascript:location.href='deletebook?bookId=<%=b.getBookId() %>'">DELETE</button>
		</tr>
		 <%} %>
	

	

</table>

</br>
<a href="index.html">Click -->HERE<-- to return home</a><br/>
</body>
</html>