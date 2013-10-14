<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<title>Delete User Account</title>
<!-- Bootstrap core CSS -->
<link rel="stylesheet" href="bootstrap.css">
</head>
<body>
<div class="container">
	<h1><a href="#">Debit</a></h1>
	<div class="navbar">
  		<div class="navbar-inner">
      	<ul class="nav nav-tabs">
      	<li><a href="credit.jsp">Credit</a></li>
      	<li class="active"><a href="#">Debit</a></li>
      	<li><a href="#">Transfer</a></li>
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
          <form action="">
	<table>
		<tr>
			<td>Account Number</td>
			<td><input type = "text" name = "accountNo"></td>
			<td></td>
		</tr>
		<tr>
			<td>Amount</td>
			<td><input type="text" name = "amount"></td>
			<td></td>
		</tr>
		
		<tr>
			<td></td>
			<td><button class="btn btn-success" type="button" type="submit" name="debit">Debit</button></td>
			<td></td>
		</tr>
	</table>
	</form>
	</div>
	</div>
	</div>
	</div>