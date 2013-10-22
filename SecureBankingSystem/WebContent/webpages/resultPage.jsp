<%@page import="com.asu.ss.secure_banking_system.model.TranConfResult"%>
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
<%TranConfResult tranConfResult = (TranConfResult)request.getAttribute("tranConfResult"); %>
<div class="container">
	<h1>Transaction Confirmation</h1>
	<div class="navbar">
  		<div class="navbar-inner">
      	<ul class="nav nav-tabs">
      	<li><a href="credit.jsp">Credit</a></li>
      	<li class="active"><a href="credit">Credit</a></li>
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
			<td>From Account Number</td>
			<td><%=tranConfResult.getFromAccountId() %></td>
			<td></td>
		</tr>
		<tr>
			<td>To Account Number</td>
			<td><%=tranConfResult.getToAccountId() %></td>
			<td></td>
		</tr>
		<tr>
			<td>Amount</td>
			<td><%=tranConfResult.getAmount() %></td>
			<td></td>
		</tr>
		
		<!-- <tr>
			<td></td>
			<td><button class="btn btn-success" type="button" type="submit" name="OK">OK</button></td>
			<td></td>
		</tr> -->
	</table>
	</form>
	</div>
	</div>
	</div>
	</div>
	</body>
	</html>
