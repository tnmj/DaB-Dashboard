<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>DASHboard - Change Password</title>
</head>

<body>
<div > 
 
    <form id="change_pass" name="change_pass" method="post" action="change_password.jsp">
	<p>
      <input  type="password" name="textfield" placeholder="Old Password" id="textfield" />
    </p>
    <p>
      <input  type="password" name="textfield2" placeholder="New Password" id="textfield2" />
    </p>
	<p>
      <input  type="password" name="textfield3" placeholder="Confirm New Password" id="textfield3" />
    </p>
	<p>
	<button onclick="this.submit()"><strong>Change Password</strong></button>
	</p>
	 </form>
   </div>
</body>
</html>
