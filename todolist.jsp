<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="p1.DB"%>
    <%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="./styles.css"/>
<title>TODOLIST</title>
</head>
<style>
h3{
	font-weight: 480;
}
</style>
<body>

<div>
<h1>&nbsp; &nbsp; &nbsp;To Do List</h1>

<form id="f" action="add.jsp" method="post">
<input id="entry" type="text" name="new"  />
<input class="btn" type="submit" value="Add" />

</form>


<%
DB.connect();

String query1="select * from list where id="+DB.currentid;

ResultSet es=DB.st.executeQuery(query1);

while(es.next()) {
    	String item= es.getString("item");
    	out.println("<form action='done.jsp' method='post'>");
    	out.println("<h3>"+item+"</h3>");
    	out.println("<div class='box'>");
    	out.println("<input class='btn2' type='submit' value='Done'/>");
    	out.println("<input type='hidden' name='item' value='"+item+"'/>");
    	out.println("</div>");
    	out.println("</form>");
}
%>
</div>
</body>
</html>