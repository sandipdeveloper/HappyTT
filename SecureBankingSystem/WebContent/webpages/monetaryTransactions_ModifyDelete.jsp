<%@ page language="java" contentType="text/html; charset=US-ASCII"
    pageEncoding="US-ASCII"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<title>Modify/Delete Transactions</title>
<!-- Bootstrap core CSS -->
<!--Online link to include bootstrap need not include any libraries in eclipse -->
<link
	href="//netdna.bootstrapcdn.com/bootstrap/2.3.2/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
		<h1>
			<a href="#">Monetary Transactions</a>
		</h1>
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
				<table width="50%">
					<tr>
					<td>Transaction ID</td>
					<td>Transaction Description</td>
					<td>Modify</td>
					<td>Delete</td>
					</tr>
					<tr>
					<td>23456</td>
					<td>Description 1</td>
					<td><input type="button" class="btn btn-primary" name="modify" value="Modify" /></td>
					<td><input type="button" class="btn btn-danger" name="delete" value="Delete" /></td>
					</tr>
					<td>65432</td>
					<td>Description 2</td>
					<td><input type="button" class="btn btn-primary" name="modify" value="Modify" /></td>
					<td><input type="button" class="btn btn-danger" name="delete" value="Delete" /></td>
					</tr>
				
				
				
				</table>
				
				</form>
</body>
</html>