<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<%@include file = "header.jsp"  %>
<html>
<style>


.button {
   
    border: none;
    color: white;
    padding: 10px 24px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    -webkit-transition-duration: 0.4s; 
    transition-duration: 0.4s;
    cursor: pointer;
}

.button1 {
    background-color: white;
    color: black;
    border: 2px solid #555555;
}

.button1:hover {
    background-color:#555555;
    color: white;
}

a:link {
    color: green;
    background-color: transparent;
    text-decoration: none;
}
a:visited {
    color: Blue;
    background-color: transparent;
    text-decoration: none;
}
a:hover {
    color: red;
    background-color: transparent;
    text-decoration: underline;
}
a:active {
    color:cyan;
    background-color: transparent;
    text-decoration: underline;
}
.container
{

background-position: 0% 25%;
background-color:white;
background-size: cover;
background-repeat: no-repeat;
}
</style>
<script>
function validateform(){

	var productImage=document.getElementById("username").value;  
	document.getElementById("error_productImage").innerHTML = ""

	
	if (productImage==null || productImage==""){  
		  document.getElementById("error_username").innerHTML = "Username Cannot be empty.";
		  return false;  
		  }
}

</script>

<body class = "header" bgcolor = "#000000">
<div class = "container">
<div class = "row">
<div class = "col-sm-6">
<strong>Get access to your Orders, Wishlist and Recommendations</strong>
<br><br>
<img class="img-responsive" src="images\c.jpg" width="304" height="236">
</div>

<div class = "col-sm-6"> 
<br><br><br><br><br><br>
 <form:form method="POST" action='/Ecommerce/j_spring_security_check'>
 <fieldset>
 <table style="border-collapse: separate; border-spacing: 20px; text-align:center;">
<tr><th></th></tr>
<tr>
<td><span class="glyphicon glyphicon-user"></span>Username:</td>
<td><input type='text' name='username' id = 'username'></td>
</tr>
<tr>
<td><span class="glyphicon glyphicon-envelope"></span>Password:</td>
<td><input type='password' name='password' /></td>
</tr>
</table> 
<br>
<button class="button button1">Login</button>
<a href="/Ecommerce/all_signup" target="_blank">New User? SignUp</a> 
</fieldset>
</form:form>
 </div>
</div>
</div>
<br>
<br><br><br><br><br><br><br><br><br><br>
<br><br><br>
</body>
</html>
<%@include file = "footer.jsp"  %>