<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html>
<html>
<head>
<style>
/* Remove margins and padding from the list */
ul {
list-style-type:square;
  margin: 0;
  padding: 0;
}

/* Style the list items */
ul li {
  cursor: pointer;
  position: relative;
  font-size: 10px;
  
  /* make the list items unselectable */
  -webkit-user-select: none;
  -moz-user-select: none;
  -ms-user-select: none;
  user-select: none;
}

/* heading todo list*/
#heading_todo{
font-size:12px;
color:white;
margin:20px;
margin-left:0;
}

/* Style the close button */
.close {
  position: absolute;
  right: 0;
  top: 0;
  margin-right:5px;
  padding-left:2px;
  padding-right:2px;
  vertical-align:middle;}

.close:hover {
  background-color: #f44336;
  color: white;
}

/* Style the input */
input {
  border: none;
  width: 100px;;
  padding: 0;
  float: left;
  font-size: 10px;
  background:#374143;
  margin-top:20px;
}

/* Darker background-color on hover 
ul li:hover {
  background: #ddd;
}*/


/* When clicked on, add a background color and strike out text 
ul li.checked {
  background: #888;
  color: #fff;
  text-decoration: line-through;
}*/

/* Add a "checked" mark when clicked on 
ul li.checked::before {
  content: '';
  position: absolute;
  border-color: #fff;
  border-style: solid;
  border-width: 0 2px 2px 0;
  top: 10px;
  left: 16px;
  transform: rotate(45deg);
  height: 15px;
  width: 7px;
}*/



/* Style the header 
.header {
  background-color: #f44336;
  padding: 30px 40px;
  color: white;
  text-align: center;
}*/

/* Clear floats after the header 
.header:after {
  content: "";
  display: table;
  clear: both;
}*/


/* Style the "Add" button 
.addBtn {
  padding: 10px;
  width: 25%;
  background: #d9d9d9;
  color: #555;
  float: left;
  text-align: center;
  font-size: 16px;
  cursor: pointer;
  transition: 0.3s;
}

.addBtn:hover {
  background-color: #bbb;
}*/
</style>
<script>
function addclose(){
// Create a "close" button and append it to each list item
var myNodelist = document.getElementsByTagName("LI");
var i;
for (i = 0; i < myNodelist.length; i++) {
  var span = document.createElement("SPAN");
  var txt = document.createTextNode("\u00D7");
  span.className = "close";
  span.appendChild(txt);
  myNodelist[i].appendChild(span);
}


// Click on a close button to hide the current list item
var close = document.getElementsByClassName("close");
var i;
for (i = 0; i < close.length; i++) {
  close[i].onclick = function() {
    var div = this.parentElement;
	var str = div.textContent ;
	window.location.replace("removeTask.jsp?id="+str) ;
  }
}

// Add a "checked" symbol when clicking on a list item
/*var list = document.querySelector('ul');
list.addEventListener('click', function(ev) {
  if (ev.target.tagName === 'LI') {
    ev.target.classList.toggle('checked');
  }
}, false);*/
}
// Create a new list item when clicking on the "Add" button
function newElement() {
  var li = document.createElement("li");
  var inputValue = document.getElementById("myInput").value;
  var t = document.createTextNode(inputValue);
  li.appendChild(t);
  if (inputValue === '') {
    alert("You must write something!");
  } else {
    document.getElementById("myUL").appendChild(li);
  
  document.newTask.submit();
  
    }
  document.getElementById("myInput").value = "";

  var span = document.createElement("SPAN");
  var txt = document.createTextNode("\u00D7");
  span.className = "close";
  span.appendChild(txt);
  li.appendChild(span);

  for (i = 0; i < close.length; i++) {
    close[i].onclick = function() {
      var div = this.parentElement;
      div.style.display = "none";
    }
  }
}
</script>
</head>
<body>
<div id="heading_todo">To-Do List</div>
<ul id="myUL">
 <% rs = stat.executeQuery("select *from todolist where email='"+email+"'");
while(rs.next()){
out.println("<li>"+rs.getString(2)+"</li>");
}
%>
</ul>
<form name="newTask"  action="addTask.jsp" >
  <input name="myInput" type="text" id="myInput" placeholder="New ...">
</form>

<script>addclose();</script>



</body>
</html>
