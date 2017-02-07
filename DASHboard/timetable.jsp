<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
<link href="css-js/css.css" rel="stylesheet" type="text/css" />
</head>

<body>
<table  id="timetable" width="100%" border="0" style="border-collapse:collapse" cellspacing="0" >
<tr>
    <td><div align="center">Time</div></td>
    <td><div align="center">Today</div></td>
  </tr>
  <% rs=stat.executeQuery("select *from timetableQ7 ");
while(rs.next())
{%>
  
  <tr>
    <td><div align="center"> <%=rs.getString(1)%> :00</div></td>
    <td><div align="center"><%=rs.getString(2)%></div></td>
    <td><div align="center"><%=rs.getString(3)%></div></td>
    <td><div align="center"><%=rs.getString(4)%></div></td>
    <td><div align="center"><%=rs.getString(5)%></div></td>
    <td><div align="center"><%=rs.getString(6)%></div></td>
  </tr>
  <% 
  }  
  %>
<script language="javascript">checkActive();</script>
</table>
</body>
</html>
