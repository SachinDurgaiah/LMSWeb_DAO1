<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
    <%@ page import="java.util.List" %>
    <%@ page import="java.util.ArrayList" %>
    <%@ page import="com.lms.entity.LibraryBranch" %>
    <%@ page import="com.lms.entity.Book" %>
    <%@ page import="com.lms.service.AdministratorService" %>
    <% 
    int cardN=0;
    if(request.getAttribute("cardNo")!=null){
    	cardN = (Integer)request.getAttribute("cardNo");
    	}
    	AdministratorService service = new AdministratorService();
    	List<LibraryBranch> branch = service.getAllBranches();
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
		<th>Branch Name</th>
		<th>Branch Address</th>
		<th>Select</th>
		
	</tr>
	
		<%for (LibraryBranch a: branch){ %>
		<tr>
		<td><% out.println(a.getBranchName()); %></td>
		<td><% out.println(a.getBranchAddress()); %>></td>
				<td><button type="button" onclick="javascript:location.href='branchSelected?branchId=<%=a.getBranchId() %>&cardNo=<%=cardN %>'">EDIT</button>
		
		
	
		</tr>
		<%} %>
		
	

</table>


</body>
</html>