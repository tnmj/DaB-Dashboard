<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>DASHboard - Home</title>
<link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
<link href="css-js/css.css" rel="stylesheet" type="text/css" />
</head>
<style>
html, body{font-family: 'Roboto', sans-serif;}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="css-js/home_js.js" language="javascript"></script>
<body>
<%
String email="rahul@iitr.ac.in";
String name="Rahul Dinkar";
String f_name= name.substring(0, name.indexOf(" ")); 
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost/dashboard","root","root");
Statement stat=con.createStatement();
ResultSet rs;
%>
<div class="box1" >
	<div class="welcome_text">Olá <%=f_name%>!
	</div>
	<div>
		<div class="widget" style="margin-left:0">
			<span>15 °C</span>
	   		<span id="widget_subtext">ROORKEE</span>		</div>
		<div class="widget" >
			<span id="time"></span>
       		<script type="text/javascript">window.onload = show_time('time');</script><br />
	  		<span id="widget_subtext" >HRS</span>		</div>
		<div class="widget">
			<span id="date"></span>
      		<script type="text/javascript">window.onload = show_date('date');</script><br />
	   	</div>
	</div>
	<div class="todolist">
	<%@include file="toDoList.jsp"%>
	</div>
</div>	
<div class="box2">
	<div id="heading_wallet">Wallet</div>
	<%@include file="wallet.jsp"%>
</div>   
<div class="box3">
	<div id="heading_timetable">Time Table</div>
	<%@include file="timetable.jsp"%>
</div>
<div class="box4">
	<div class="heading"> Attendance</div>
</div>


	
</body>
</html>
