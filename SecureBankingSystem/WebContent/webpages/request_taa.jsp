<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Request Role</title>
<!-- Bootstrap core CSS -->
<!--Online link to include bootstrap need not include any libraries in eclipse -->
<link href="//netdna.bootstrapcdn.com/bootstrap/2.3.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">
	<h1><a href="#">Request technical account access page</a></h1>
	<div class="row">
		<div class="span4">
             <ul class="nav nav-list">
             	<li class="nav-header">Other Links</li>
             	<li>Add Links Here</li>
             </ul>
         </div>
        <div class="span8">
        <div class="container">
        <form action="TAARequest" method="post">
		<table style="height: 121px; width: 605px;">
		<tr>

			<td align="right">Username :</td>
			<td align="left"><input type="text" name="uname" /></td>
			<td></td>
		</tr>
		<tr>
			<td align="right">Email id :</td>
			<td align="left"><input type="text" name="email" /></td>
			<td></td>
		</tr>
		<tr>

			<td align="right">Date of birth :</td>
			<td align="left"><input type="text" name="dob" /> (MM/DD/YYYY)</td>
			<td></td>
		</tr>
		<tr>
			<td align="right">Description of problem :</td>
			<td align="left"><textarea name="description"></textarea></td>
			<td></td>
		</tr>
		<tr>
			<td></td>
			<td>
					<button class="btn btn-success">Submit request</button>
			</td>
			<td></td>
		</tr>
	</table>
	</form>
</div>
</div>
</div>
</div>

</body>
</html>