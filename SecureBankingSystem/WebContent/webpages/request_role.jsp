<%@page import="com.asu.ss.secure_banking_system.service.RequestRoleService"%>
<%@page import="com.asu.ss.secure_banking_system.model.UserEntity"%>
<%@page import="com.asu.ss.secure_banking_system.model.RoleEntity"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Create role page</title>
<!-- Bootstrap core CSS -->
<!--Online link to include bootstrap need not include any libraries in eclipse -->
<link href="//netdna.bootstrapcdn.com/bootstrap/2.3.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">
	<h1><a href="#">Request Role</a></h1>
	<div class="row">
		<div class="span4">
			 <ul class="nav nav-list">
             	<li class="nav-header">Other Links</li>
             	<li>Add Links Here</li>
             </ul>
		</div>
		<div class="span8">
		<form action="RequestRole" method="post">
		<table style="height: 121px; width: 605px;">
		<tr>
			<td>Select user :</td>
			<td>
			<select style="width: 238px;" onchange="" name="userSelect" id="userSelect">
			<option>Please select one...</option>
			<% 
				RequestRoleService rrsvc = new RequestRoleService();
				List<UserEntity> users = rrsvc.getAllInternalUsers();
				for(int i=0;i<users.size(); i++)
				{
			%>
  			<option value=<%= users.get(i).getUserID()%>><%= users.get(i).getUserID()%></option>
  			<%  
  				}
  			%>
  			</select>
			
			</td>
			<td></td>
		</tr>
		<tr>
			
			<td>Select role :</td>
			<td><select style="width: 234px;" name="roleSelect" id = "roleSelect">
			<option>Please select one...</option>
			<%
				
				List<RoleEntity> roles = rrsvc.getAllRoles();
				for(int i=0;i<roles.size(); i++)
				{
			%>  			
				<option value= <%= roles.get(i).getRoleID()%>><%= roles.get(i).getRoleName()%></option></select>
			<%
				}
			%>		
			</td>
			<td></td>
		</tr>
		<tr>
			
			<td></td>
			<td><button class="btn btn-primary" type="submit" style="width: 118px; "name="Request role">Request role</button>
			</td>
			<td></td>
		</tr>
	</table>
	</form>
</div>
</div>
</div>
</body>
</html>