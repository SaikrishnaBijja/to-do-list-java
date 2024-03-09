<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ page import="p1.DB"%>
    <%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

</head>
<body>
<%

DB.connect();

String item=request.getParameter("item");


String ut="delete from list where item='"+item+"' and id="+DB.currentid;

if (DB.st.executeUpdate(ut)>0)
	response.sendRedirect("todolist.jsp");




%>
</body>
</html>