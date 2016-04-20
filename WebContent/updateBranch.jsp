<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
    <%@ page import="java.util.List" %>
    <%@ page import="java.util.ArrayList" %>
    <%@ page import="com.lms.entity.Author" %>
    <%@ page import="com.lms.entity.LibraryBranch" %>
    <%@ page import="com.lms.service.AdministratorService" %>
    <% LibraryBranch branch = null;
    
    if(request.getAttribute("branch")!=null){
    	branch = (LibraryBranch)request.getAttribute("branch");
    	}%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>LMS</title>
<h2>Welcome to GCIT Library Management System - Librarian</h2>
<h3>Edit Branch Details Below:</h3>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js" ></script>

${result}
</head>
<body>
	<form action="editBranchDetails" method="post">
		Branch Name: <input type="text" name="branchName" value="<%=branch.getBranchName() %>"> <br />
		Branch Address: <input type="text" name="branchAddress" value="<%=branch.getBranchAddress()%>"> <br />
		<input type="hidden" name="branchId" value=<%=branch.getBranchId() %>>
		<button type="submit">Update </button>
	</form>
</body>
</html>