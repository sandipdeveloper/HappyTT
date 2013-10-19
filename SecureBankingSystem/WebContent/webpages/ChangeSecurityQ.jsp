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
    <table>
    <tbody>
    <tr>
    <td width="150px">
    <label> OTP </label>
    </td>
    <td width="200px" style=" border-style:solid;">
    <input width = "200px" type="text" name="dateofbirth" id="dateofbirth" />
    </td>
    </tr>
    </tbody>
    </table>
    <label id="seq1" name="seq1"> Secure Question 1?</label> 
    <table>
    <tbody>
    <tr>
    <td width="200px" style=" border-style:solid;">
    <input width = "200px" type="text" name="sq1" id="sq1" />
    </td>
    </tr>
    </tbody>
    </table>  
      <label id="answer1" name="answer1"> Answer to Question 1?</label> 
    <table>
    <tbody>
    <tr>
    <td width="200px" style=" border-style:solid;">
    <input width = "200px" type="text" name="ans1" id="ans1" />
    </td>
    </tr>
    </tbody>
    </table> 
        <label id="seq2" name="seq2"> Secure Question 2?</label> 
    <table>
    <tbody>
    <tr>
    <td width="200px" style=" border-style:solid;">
    <input width = "200px" type="text" name="sq2" id="sq2" />
    </td>
    </tr>
    </tbody>
    </table>  
      <label id="answer2" name="answer2"> Answer to Question 2?</label> 
    <table>
    <tbody>
    <tr>
    <td width="200px" style=" border-style:solid;">
    <input width = "200px" type="text" name="ans2" id="ans2" />
    </td>
    </tr>
    </tbody>
    </table> 
            <label id="seq3" name="seq3"> Secure Question 3?</label> 
    <table>
    <tbody>
    <tr>
    <td width="200px" style=" border-style:solid;">
    <input width = "200px" type="text" name="sq3" id="sq3" />
    </td>
    </tr>
    </tbody>
    </table>  
      <label id="answer3" name="answer3"> Answer to Question 3?</label> 
    <table>
    <tbody>
    <tr>
    <td width="200px" style=" border-style:solid;">
    <input width = "200px" type="text" name="ans3" id="ans3" />
    </td>
    </tr>
    </tbody>
    </table> 
   
    <input name = "cangeSeS" type="button" id = "cangeSeS" value="Submit" style=" float:right;" />
    </div>
</form>
</div>
</div>
</body>
</html>