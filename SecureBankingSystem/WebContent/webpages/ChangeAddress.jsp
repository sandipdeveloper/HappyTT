<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Change Address</title>
<!-- Bootstrap core CSS -->
<!--Online link to include bootstrap need not include any libraries in eclipse -->
<link href="//netdna.bootstrapcdn.com/bootstrap/2.3.2/css/bootstrap.min.css" rel="stylesheet">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
</head>

<body>
<div class="container">
<h1><a href="#">Change Address</a></h1>
<div class="row">
         <div class="span4">
             <ul class="nav nav-list">
             	<li class="nav-header">Other Links</li>
             	<li>Add Links Here</li>
             </ul>
         </div>
         <div class="span8">
			<div id ="mainFrame" style="width:100%;">
			<div id="content" style = "width:350px; height:500px; margin:100px auto auto auto;">
			<form id="form1" name="form1" method="post" action="">
				<div style =" width : 350px;">	
    			 
    			<table>
    			<tbody>
    			<tr>
    				<td><label id="c" name="c"> Contact</label></td>
    				<td>
    				<input width = "200px" type="text" name="contact" id="contact" />
    			</td>
    			</tr> 
    			<tr>	
    				<td><label id="ad" name="ad"> Address</label></td>  
    				<td >
    				<input width = "335px" type="text" name="address" id="address" />
    				</td>
    			</tr>
    			</tbody>
    			</table>    
    <input name = "changeAD" type="button" id = "changeAD" value="Submit" class="btn btn-primary" align="middle"/>
    </div>
</form>
</div>
</div>
</div>
</div>
</div>

</body>
</html>