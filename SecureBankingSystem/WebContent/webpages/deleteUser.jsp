<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<title>Delete User Account</title>
<!-- Bootstrap core CSS -->
<!--Online link to include bootstrap need not include any libraries in eclipse -->
<link href="//netdna.bootstrapcdn.com/bootstrap/2.3.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">
	<h1><a href="#">Delete User</a></h1>
	<div class="navbar">
  		<div class="navbar-inner">
      	<ul class="nav nav-tabs">
      	<li><a href="addUser.jsp">Add User</a></li>
      	<li class="active"><a href="#">Delete User</a></li>
      	<li><a href="transferUser.html">Transfer User</a></li>
    	</ul>
  		</div>
	</div>
	<div class="row">
         <div class="span4">
             <ul class="nav nav-list">
             	<li class="nav-header">Other Links</li>
             	<li>Add Links Here</li>
             </ul>
         </div>
         <div class="span8">
          <div class="container">
			<form>
               <table>
    			<tr>
      				<td align="right">First Name:</td>
      				<td align="left"><input type="text" name="first"  /></td>
    			</tr>
    			<tr>
      				<td align="right">Last Name:</td>
      				<td align="left"><input type="text" name="last" /></td>
    			</tr>
    			<tr>
    				<td align="right">User ID:</td>
    				<td align="left"><input type="text" name="id" /></td>
    			</tr>
    			<tr>
    				<td align="justify"><button class="btn btn-danger" type="button" name="delete" value="submit">Delete</button></td>
    				<td align="justify"><button class="btn" type="button" name="cancel">Cancel</button></td>
    			</tr>
    		</table>	
    		</form> 
		</div>
     </div>
     </div>
	
	
	
	</div>
</body>
</html>