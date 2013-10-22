<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin notification page</title>
<!-- Bootstrap core CSS -->
<!--Online link to include bootstrap need not include any libraries in eclipse -->
<link href="//netdna.bootstrapcdn.com/bootstrap/2.3.2/css/bootstrap.min.css" rel="stylesheet">

</head>
<body>
<div class="container">
<div class="hero-unit">
  		<div class="container">
    		<h1>Admin Notifications</h1>
    		<p>Some relevant text here</p>
    		<p><a class="btn btn-primary btn-lg">Learn more</a></p>
  		</div>
</div>
<div class="row">
	<div class="span3">
		<ul class="nav nav-list">
			<li class="nav-header">Links</li>
			<li>Add Links Here</li>
			
		</ul>
	</div>
	<div class="span9">
	<div class="container">
	<form>
		<table>
				<tr>
					<td>Requester</td>
					<td>Request type</td>
					<td>Request details</td>
					<td>Action</td>
				</tr>
			
			<tr>

				<td align="justify">Employee1 | Email id1</td>
				<td align="justify">Role assignment</td>
				<td align="justify">Assign Role X to Employee X | Email id X</td>
				<td align="justify"><button class="btn btn-primary" type="submit">Validate</button></td>
			</tr>
			<tr>

				<td align="justify">Employee2 | Email id2</td>
				<td align="justify">Technicanl account access</td>
				<td align="justify">Assign Technical Account access for Customer Y  | Email id Y</td>
				<td align="justify"><button class="btn btn-primary" type="submit">Validate</button></td>
			</tr>
		</table>
	</form>
	</div>
	</div>
</div>
</div>
</body>
</html>