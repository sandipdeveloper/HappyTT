<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Forgot Password</title>
<!-- Bootstrap core CSS -->
<!--Online link to include bootstrap need not include any libraries in eclipse -->
<link href="//netdna.bootstrapcdn.com/bootstrap/2.3.2/css/bootstrap.min.css" rel="stylesheet">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
</head>

<body>
<div class="container">
<h1><a href="#">Forgot Password</a></h1>
<div id ="mainFrame">
<div id="content">
<div class="row">
         <div class="span3">
             <ul class="nav nav-list">
             	<li class="nav-header">Other Links</li>
             	<li>Add Links Here</li>
             </ul>
         </div>
      	<div class="span9">
		<form id="form1" name="form1" method="post" action="">
		
    	<table>
    	<tbody>
    	<tr>
    		<td><label> Username </label></td>
    		<td><label id = "username" name = "username"> Tom </label></td>
    	</tr>
    	<tr>
    		<td width="150px">
    		<label> Date Of Birth </label>
    		</td>
    		<td width="200px">
    		<input width = "200px" type="text" name="dateofbirth" id="dateofbirth" />
    		</td>
    	</tr>
    	<tr>
    		<td><label id="seq1" name="seq1"> Secure Question 1?</label></td> 
    		<td width="200px">
    		<input width = "200px" type="text" name="answerQ1" id="answerQ1" />
    		</td>
    	</tr>
    	<tr>
    		<td><label id="seq2" name="seq2"> Secure Question 2?</label></td> 
    	    <td width="200px">
    		<input width = "200px" type="text" name="answerQ2" id="answerQ2" />
    		</td>
    	</tr>
    	<tr>
    		<td><label id="seq3" name="seq3"> Secure Question 3?</label></td> 
    		<td width="200px">
    		<input width = "200px" type="text" name="answerQ3" id="answerQ3" />
    		</td>
    	</tr>
    	<tr>
    	<td>
    		<input class="btn btn-primary" name = "Enter" type="button" id = "Enter" value="Enter" style=" float:right;" />
    	</td>
    	</tr>
    	
</tbody>
</table>
</form>
</div>
</div>
</div>

</div>
</div>
</body>
</html>
