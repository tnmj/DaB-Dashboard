<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
</head>

<body><%
String email="rahul@iitr.ac.in";
String task= (String)request.getParameter("id");
task = task.substring(0,task.length()-1);
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost/dashboard","root","root");
Statement stat=con.createStatement();
stat.execute("DELETE FROM todolist WHERE email='"+email+"' AND todo='"+task+"'");
response.sendRedirect("home.jsp");
%>
</body>
</html>
