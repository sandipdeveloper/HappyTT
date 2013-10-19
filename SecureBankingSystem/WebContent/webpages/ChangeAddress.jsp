<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>

<body>
<div id ="mainFrame" style="width:100%;">
<div id="content" style = "width:350px; height:500px; margin:100px auto auto auto;">
<form id="form1" name="form1" method="post" action="">
	<div style =" width : 350px;">
    <label id="c" name="c"> Contact</label> 
    <table>
    <tbody>
    <tr>
    <td width="200px" style=" border-style:solid;">
    <input width = "200px" type="text" name="contact" id="contact" />
    </td>
    </tr> 
    </tbody>
    </table>  
      <label id="ad" name="ad"> Address</label> 
    <table>
    <tbody>
    <tr>
    <td width="335px" style=" border-style:solid;">
    <input width = "335px" type="text" name="address" id="address" />
    </td>
    </tr>
    </tbody>
    </table>    
    <input name = "changeAD" type="button" id = "changeAD" value="Submit" style=" float:right;" />
    </div>
</form>
</div>
</div>
</body>
</html>