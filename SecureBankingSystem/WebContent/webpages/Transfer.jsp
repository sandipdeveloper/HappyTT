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
	<h1><a href="#">Transfer</a></h1>
	<div class="navbar">
  		<div class="navbar-inner">
      	<ul class="nav nav-tabs">
      	<li><a href="webpages/credit.jsp">Credit</a></li>
      	<li><a href="webpages/Debit.jsp">Debit</a></li>
      	<li class="active"><a href="webpages/Transfer.jsp">Transfer</a></li>
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
          <div style="color:red">${exception}</div>
          <form action="TransferServlet" method="POST">
    	  <input type="hidden" name="pageInd" value="Transfer"/>
	<table>
		
		<tr>
			<td>From Account Number</td>
			<td><input type = "text" name = "fromAccount"></td>
			<td></td>
		</tr>
		<tr>
			<td>To Account Number</td>
			<td><input type="text" name = "toAccount" ></td>
			<td></td>
		</tr>
		<tr>
			<td>Amount</td>
			<td><input type="text" name = "amount" ></td>
			<td></td>
		</tr>
		<tr>
			<td></td>
			<td><button class="btn btn-success" type="submit" name="transfer">OK</button></td>
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