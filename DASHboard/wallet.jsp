<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
</head>

<body>
<fieldset style="border:solid 1px #00CC00; margin-bottom:20px;">
<legend style="font-size:10px;"> Receiving</legend>
<table width="100%" border="0">
  <%
  String [] users={"Rahul Dinkar", "Tanmay Joshi", "Saurav Shaw", "Pradeep Gautam", "Nitish Kumar", "Rishabh Gehlot", "Pankaj Dogra","Lucky Daga", "NIkhil Arya", "Nikhil Yadav"} ;
   rs = stat.executeQuery("select *from wallet where email='"+email+"'");
  while (rs.next()){
  	for(int i=2; i<11; i++){
	if(!rs.getString(i).equals("0")){
		%>
  <tr>
    <td><div align="left"><%=users[i-2]%></div></td>
    <td><div align="center"><%=rs.getString(i)%></div></td>
  </tr>
  <% }
  }
  }
 
  %>
  </table>
  </fieldset>
<fieldset style="border:solid 1px #CC3300" >
<legend style="font-size:10px;">To be paid</legend>
  <table width="100%" border="0">
  <%String str = email.substring(0,email.length()-11);
  String query1="SELECT user.name , wallet."+str+" FROM user RIGHT JOIN wallet ON user.email=wallet.email";
 rs = stat.executeQuery(query1);
while(rs.next()){
 if(!rs.getString(2).equals("0")){
  %>
  <tr>
    <td><div align="left"><%=rs.getString(1)%></div></td>
    <td><div align="center"><%=rs.getString(2)%></div></td>
  </tr>
  <% 
 }
 }
  %>
  </fieldset>
</table>
</body>
</html>
