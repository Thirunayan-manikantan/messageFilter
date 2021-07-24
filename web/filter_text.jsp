<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="style.css" />
<title>A-System-to-Filter-Unwanted-Messages-from-OSN-User-Walls</title>
<script type="text/javascript">
function val5()
{
if(document.f1.wctry.selectedIndex==0)
{
alert("Select The Type");
return false;
}
var a = document.f1.wrd.value;
if(a=="")
{
alert("Enter Filter Word");
document.f1.wrd.focus();
return false;
}
}
</script>


</head>

<body>
<%
	
		
		String anm = (String) session.getAttribute("ab1");
		
		
		%>
<div id="container">
		<div id="mainpic">
        	<h1>A-System-to-Filter-Unwanted-Messages-from-OSN-User-Walls</h1>
            
        </div>   
        
        <div id="menu">
        	<ul>
            	<li class="menuitem"><a href="admin_home.jsp">Back</a></li>
               <!-- <li class="menuitem"><a href="#">About</a></li>
                <li class="menuitem"><a href="#">Products</a></li>
                <li class="menuitem"><a href="#">Services</a></li>
                <li class="menuitem"><a href="#">Design</a></li>
              <li class="menuitem"><a href="#">Contact</a></li>-->
            </ul>
        </div>
        
		<div id="content">
        	<h2>&nbsp; </h2>
       	 <h3>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; Welcome : <%=anm%> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;   &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<a href="admin_log.jsp">Logout</a></h3>
		  
		  <table width="800">
			<tr>
			<td>
			<fieldset>
			<table width="500" height="300">
			<tr>
			<td>
			
			<form action="filter_text1.jsp" name="f1" method="post" onsubmit="return val5();">
  <table align="center" width="500" height="200" border="0">
          
   <tr>
  <td class="new1"><strong><font size="4">Word Category : </font></strong></td>
  <td><select name="wctry">
  <option selected value>--Category--</option>
  <option>Violence</option>
  <option>Vulgar</option>
  <option>Offensive</option>
  <option>Hate</option>
  <option>Sex</option>
  </select></td>
  </tr>
  <tr> 
  <td class="new1"><strong><font size="4">Word:</font></strong></td>
  <td class="field"><input type="text" name="wrd"></td>
  </tr>
   <tr>
  <td></td>
	  <td><input type="submit" name="sub" value="ADD" class="button">&nbsp;&nbsp;&nbsp;&nbsp;<input type="reset" name="reset" value="Clear" class="button"></td></tr>
  </table>
  </form>
			
			</td>
			</tr>
			</table>
			</fieldset>
			<td>&nbsp;</td>
			</td>
			<td>
			<fieldset> 
			<table width="200" height="300" border="0">
			<tr>
			<td background="images/welcom.jpg">
		      <p align="center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="view_user.jsp">View User</a></p><br />
			
	<p align="center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="filter_text.jsp">Add Filter Word</a></p><br />
			
		<p align="center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="filter_perf.jsp">Filter Performance</a></p><br />
			
		<p align="center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="admin_reg.jsp">Admin Signup</a></p>
			</td>
			</tr>
			
			</table>
			</fieldset>
			</td>
			</tr>
			</table>
			
        	
			
            
            <div id="footer">
			 <p align="center"> <a target="_blank" href="http://WWW.JNTU.COM">WWW.JNTU.COM </a></p>
			 </div>
      </div>
   </div>
</body>
</html>
