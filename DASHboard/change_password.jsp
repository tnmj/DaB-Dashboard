<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
</head>

<body>
<%
String email=(String) session.getAttribute("email");
String old_pass= (String)request.getParameter("textfield");
String new_pass= (String)request.getParameter("textfield2");
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost/dashboard","root","root");
Statement stat = con.createStatement();
ResultSet rs = stat.executeQuery("select *from user where email='"+email+"' && password='"+old_pass+"'");
if(rs.next())
{stat.execute("update user set password='"+new_pass+"' where email='"+email+"' && password='"+old_pass+"'");
out.println("Password Change Successful");%> 
Go to <a href="home.jsp">Home</a>
<%
} else {
out.println("Old password did not match");
}
%>
</body>
</html>
