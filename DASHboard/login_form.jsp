<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>DASHboard - Login</title>
</head>

<body>
<%String email=(String) session.getAttribute("email");
if(email != null){
response.sendRedirect("home.jsp");
} else { %>
<div > 
 
    <form id="log_in" name="log_in_form" method="post" action="login.jsp">
	<p>
      <input  type="email" name="textfield" placeholder="E-mail" id="textfield" />  
      </p>
    <p>
      <input  type="password" name="textfield2" placeholder="Password" id="textfield2" />
    </p>
	<p>
	<button onclick="this.submit()"><strong>Log In</strong></button>
	</p>
	 </form>
   </div>
   <%
   }
   %>
</body>
</html>
