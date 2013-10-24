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
	<h1><a href="#">Credit</a></h1>
	<div class="navbar">
  		<div class="navbar-inner">
      	<ul class="nav nav-tabs">
      	<li class="active"><a href="webpages/credit.jsp">Credit</a></li>
      	<li><a href="SecureBankingSystem/webpages/Debit.jsp">Debit</a></li>
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
          <div style="color:red">${exception}</div>
    <form action="DebitAndCreditServlet" method="POST">
    <input type="hidden" name="pageInd" value="Credit"/>
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
				<td><button class="btn btn-success" type="submit" name="credit">OK</button></td>
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
