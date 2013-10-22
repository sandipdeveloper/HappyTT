<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Validation Page</title>
<!-- Bootstrap core CSS -->
<!--Online link to include bootstrap need not include any libraries in eclipse -->
<link href="//netdna.bootstrapcdn.com/bootstrap/2.3.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">
	<h1><a href="#">Validation</a></h1>
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
			<table style="height: 121px; width: 605px;">
				<tr>
					<td></td>
					<td>Validation status :</td>
					<td>Valid request</td>
				</tr>
				<tr>
					<td></td>
					<td><button class="btn btn-success" type="submit"  name="Accept request">Accept request</button></td>
					<td></td>
				</tr>
				<tr>
					<td></td>
					<td><button class="btn btn-danger" type="submit"  name="Reject request">Reject request</button></td>
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