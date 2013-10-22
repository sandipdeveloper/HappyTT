<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<title>Transfer User Account</title>
<!-- Bootstrap core CSS -->
<!--Online link to include bootstrap need not include any libraries in eclipse -->
<link href="//netdna.bootstrapcdn.com/bootstrap/2.3.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">
	<h1><a href="#">Transfer User</a></h1>
	<div class="navbar">
  		<div class="navbar-inner">
      	<ul class="nav nav-tabs">
      	<li><a href="addUser.jsp">Add User</a></li>
      	<li><a href="deleteUser.jsp">Delete User</a></li>
      	<li class="active"><a href="transferUser.jsp">Transfer User</a></li>
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
    				<td align="right">Destination Department:</td>
    				<td align="left"><input type="text" name="department" /></td>
    			</tr>
    			<tr>
    			
    				<td align="justify"><button class="btn btn-primary" type="button" name="transfer" value="submit">Transfer</button></td>
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