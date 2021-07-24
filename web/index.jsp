

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="style.css" />
<title>A-System-to-Filter-Unwanted-Messages-from-OSN-User-Walls</title>
<script type="text/javascript">
function val()
{
var a=document.f1.uname.value;
if(a=="")
{
alert("Enter Your Username Here");
document.f1.uname.focus();
return false;
}

var b=document.f1.passw.value;
if(b=="")
{
alert("Enter Your Password Here");
document.f1.passw.focus();
return false;
}
}
</script>
</head>

<body>
<div id="container">

	<div id="mainpic">
     
	   	<h1>A-System-to-Filter-Unwanted-Messages-from-OSN-User-Walls</h1>
		
        </div>   
        
        <div id="menu">
        	<!--<ul>
            	<li class="menuitem"><a href="#">Home</a></li>
                <li class="menuitem"><a href="#">About</a></li>
                <li class="menuitem"><a href="#">Products</a></li>
                <li class="menuitem"><a href="#">Services</a></li>
                <li class="menuitem"><a href="#">Design</a></li>
              <li class="menuitem"><a href="#">Contact</a></li>
            </ul>-->
        </div>
        
		<div id="content">
        	<h2>&nbsp; </h2>
       	  <h3>&nbsp;</h3>
		  
		  <table width="800">
			<tr>
			<td>
			<fieldset>
			<table width="500" height="300">
			<tr>
			<td><img src="images/cover_image.jpg" alt="cover_main" width="400" height="300" /></td>
			</tr>
			</table>
			</fieldset>
			<td>&nbsp;</td>
			</td>
			<td>
			<fieldset> 
			<table width="200" height="300">
			<tr>
			<td align="justify">
			
			<form name="f1" action="user_login.jsp" method="post" onsubmit="return val();">
	<p align="center"> <font face="Courier New, Courier, monospace" color="#990033" size="4"><b>&nbsp;&nbsp;&nbsp;&nbsp;UserLogin</b></font></p>
	<p align="center"> <img src="images/login.png" alt="uname" />&nbsp; <input type="text" name="uname"/></b></font></p>
	<p align="center"> <img src="images/pass.jpg" alt="pass" />&nbsp;<input type="password" name="passw"/></b></font></p>
	<br />
	
	<p align="center">
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" name="sub" value="Submit" /> &nbsp;&nbsp;<input type="reset" name="clr" value="Reset" /></p>
	</form>
	<br /><br />
			<p align="center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Newuser <a href="registration_user.jsp">Signup</a>&nbsp;Here</p>
			<br /><br />
			<p align="center">&nbsp;&nbsp;&nbsp;&nbsp;<font color="#0000FF" size="3" face="Verdana, Arial, Helvetica, sans-serif"><b>Admin <a href="admin_log.jsp">Login</a>&nbsp;Here</b></font></p>
			</td>
			</tr>
			</table>
			</fieldset>
			</td>
			</tr>
			</table>
			
        	
			
            <br />
			<br />
            <div id="footer">
			 </div>
      </div>
   </div>
</body>
</html>
