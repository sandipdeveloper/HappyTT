<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Change Security Question</title>
<!-- Bootstrap core CSS -->
<!--Online link to include bootstrap need not include any libraries in eclipse -->
<link href="//netdna.bootstrapcdn.com/bootstrap/2.3.2/css/bootstrap.min.css" rel="stylesheet">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
</head>

<body>
<div class="container">
<h1><a href="#">Change Security Question</a></h1>
<div class="row">
         <div class="span3">
             <ul class="nav nav-list">
             	<li class="nav-header">Other Links</li>
             	<li>Add Links Here</li>
             </ul>
         </div>
         <div class="span8">
			<div id ="mainFrame">
			<div id="content">
			<form id="form1" name="form1" method="post" action="">
			<div style =" width : 350px;">
    		<table>
    		<tbody>
    		<tr>
    			<td width="150px">
    			<label> OTP </label>
    			</td>
    			<td width="200px">
    			<input width = "200px" type="text" name="dateofbirth" id="dateofbirth" />
    			</td>
    		</tr>
    		<tr>
    		<td><label id="seq1" name="seq1"> Secure Question 1?</label></td> 
    		<td width="200px">
    		<input width = "200px" type="text" name="sq1" id="sq1" />
    		</td>
    		</tr>
    		<tr>
    		<td><label id="answer1" name="answer1"> Answer to Question 1?</label></td>
    		    <td width="200px">
    			<input width = "200px" type="text" name="ans1" id="ans1" />
    			</td>
    		</tr>
    		<tr>
        		<td><label id="seq2" name="seq2"> Secure Question 2?</label></td> 
    			<td width="200px">
    			<input width = "200px" type="text" name="sq2" id="sq2" />
    			</td>
    		</tr>
    		<tr>
      			<td><label id="answer2" name="answer2"> Answer to Question 2?</label></td>
       		    <td width="200px">
    			<input width = "200px" type="text" name="ans2" id="ans2" />
    			</td>
    		</tr>
            <tr>
            	<td><label id="seq3" name="seq3"> Secure Question 3?</label></td> 
    			<td width="200px">
    			<input width = "200px" type="text" name="sq3" id="sq3" />
    			</td>
    		</tr>
    		<tr>	
    			 <td><label id="answer3" name="answer3"> Answer to Question 3?</label></td>  
    			   <td width="200px">
    			<input width = "200px" type="text" name="ans3" id="ans3" />
    				</td>
    		</tr>
    		<tr>
    			<td><input class="btn btn-success" name = "cangeSeS" type="button" id = "cangeSeS" value="Submit" style=" float:right;" /></td>
    		</tr>
    </tbody>
    </table> 
     </div>
     
</form>
</div>
</div>
</div>
</div>
</div>

</body>
</html>