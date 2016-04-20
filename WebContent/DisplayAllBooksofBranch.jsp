<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
    <%@ page import="java.util.List" %>
    <%@ page import="java.util.ArrayList" %>
    <%@ page import="com.lms.entity.LibraryBranch" %>
    <%@ page import="com.lms.entity.Book" %>
    <%@ page import="com.lms.service.BorrowerServices" %>
    <% 
    int cardN=0;
    if(request.getAttribute("cardNo")!=null){
    	cardN = (Integer)request.getAttribute("cardNo");
    	}
    int branchId=0;
    {
    	if(request.getAttribute("branchId")!=null){
        	branchId = (Integer)request.getAttribute("branchId");
        	}
    }
    BorrowerServices service = new BorrowerServices();
    	List<Book> book = service.getAllBooksWithBranch(branchId);
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js" ></script>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>LMS</title>
<h2>Welcome to GCIT Library Management System - Borrower</h2>
${result}
<body>
<table border="2" id="authorsTable">
	<tr>
		<th>title</th>
		
		<th>Select</th>
		
	</tr>
	
		<%for (Book a: book){ %>
		<tr>
		<td><% out.println(a.getTitle()); %></td>
		<td><button type="button" onclick="javascript:location.href='checkoutbook?bookId=<%=a.getBookId() %>&cardNo=<%=cardN %>&branchId=<%=branchId%>'">Borrow</button>
				
		
		
	
		</tr>
		<%} %>
		
	

</table>


</body>
</html>