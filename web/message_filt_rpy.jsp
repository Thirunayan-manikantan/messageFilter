
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
String m1 = "Violence";
String m2 = "Vulgar";
String m3 = "Offensive";
String m4 = "Hate";
String m5 = "Sex";

String [] cat={m1,m2,m3,m4,m5};

String wrd=null;
String b = (String) session.getAttribute("b1");
String str = request.getParameter("status");
session.setAttribute("str7",str);
String[] str1 = str.split(" ");
 
 int vio=0;
 int vul=0;
 int off=0;
 int hat=0;
 int sex=0;
 
StringBuffer vio1=new StringBuffer();
StringBuffer vul1=new StringBuffer();
StringBuffer off1=new StringBuffer();
StringBuffer hat1=new StringBuffer();
StringBuffer sex1=new StringBuffer();



try
{
Class.forName("com.mysql.jdbc.Driver");
Connection con1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/message_filter","root","password");
Statement st1 = con1.createStatement();

for (int t=0; t<cat.length; t++)
{

ResultSet rs1=st1.executeQuery("select * from filter_message where detail1='"+cat[t]+"'");
while(rs1.next())
{
wrd=rs1.getString(3);

for (int i=0; i<str1.length; i++)
{

    if((str1[i].equalsIgnoreCase(wrd)) && (cat[t].equals("Violence")))
	{
	vio++;
	vio1.append(wrd);
	vio1.append(",");
	}
	else if((str1[i].equalsIgnoreCase(wrd)) && (cat[t].equals("Vulgar")))
	{
	vul++;
	vul1.append(wrd);
	vul1.append(",");
	
	}
	else if((str1[i].equalsIgnoreCase(wrd)) && (cat[t].equals("Offensive")))
	{
	off++;
	off1.append(wrd);
	off1.append(",");
	
	}
	else if((str1[i].equalsIgnoreCase(wrd)) && (cat[t].equals("Hate")))
	{
	hat++;
	hat1.append(wrd);
	hat1.append(",");
	
	}
	else if((str1[i].equalsIgnoreCase(wrd)) && (cat[t].equals("Sex")))
	{
	sex++;
	sex1.append(wrd);
	sex1.append(",");
	
	}
}

}

}
String vio2=new String(vio1);
String vul2=new String(vul1);
String off2=new String(off1);
String hat2=new String(hat1);
String sex2=new String(sex1);

String ans [] ={vio2,vul2,off2,hat2,sex2};

session.setAttribute("vio2",vio2);
session.setAttribute("vul2",vul2);
session.setAttribute("off2",off2);
session.setAttribute("hat2",hat2);
session.setAttribute("sex2",sex2);

session.setAttribute("vio",vio);
session.setAttribute("vul",vul);
session.setAttribute("off",off);
session.setAttribute("hat",hat);
session.setAttribute("sex",sex);


/*System.out.println(vio2);
System.out.println(vul2);
System.out.println(off2);
System.out.println(hat2);
System.out.println(sex2);


System.out.println(vio);
System.out.println(vul);
System.out.println(off);
System.out.println(hat);
System.out.println(sex);

*/
if((vio>0) || (vul>0) || (off>0) || (hat>0) ||(sex>0))
{

for (int z=0; z<str1.length; z++)
{
for(int t=0;t<ans.length;t++)
{
String ss=ans[t];
String [] ss1=ss.split(",");
for(int i=0;i<ss1.length;i++)
{
if(str1[z].equalsIgnoreCase(ss1[i]))
{
str1[z] = "<span style='background:#FFFF33'>"+str1[z]+"</span>";
}
else
{
str1[z] = str1[z];
}


}

}

}

StringBuffer sb=new StringBuffer();
for(int q=0;q<str1.length;q++)
{
sb.append(str1[q]);
sb.append(" ");

}

String word=new String(sb);

//out.println(word);

		
  %>          

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
			<fieldset style="background-color:#0099FF">
			<form name="f6" action="insert_filter_word.jsp" method="post" onsubmit="return val6();">
			<table width="500" height="100"  bgcolor="#FFFFFF">
			<tr>
			<td>
			<p><font color="#FF0000" size="4"><blink> Your Message Can't Be Posted Because It Was Filtered</blink></font>
		<br /><br /> <font color="#000000" size="3">Your Message Is</font> :&nbsp;<font color="#000000" size="3"><%=word%></font></p>
			</td>		
			</tr>
			</table>
			<table width="500" height="200" bgcolor="#FFFFFF" style="border:#FF0000 solid 2px"  >
			<tr>
			<td>
			<p><br /><br /> <font color="#0000FF" size="2px"><b>It Contained the following Text Catogery Values:</b></font> <br />			
			<br /> <font color="#FF00FF" size="2"> Violence</font> <font color="#000000" size="2"> : <%=vio%> </font>
			<br /> <font color="#0099FF" size="2"> Vulgur</font> <font color="#000000" size="2"> : <%=vul%></font>
			<br /> <font color="#6600FF" size="2"> Offensive</font> <font color="#000000" size="2"> : <%=off%></font>
			<br /> <font color="#CC6666" size="2"> Hate</font> <font color="#000000" size="2">: <%=hat%></font>
			<br /> <font color="#990099" size="2"> Sex </font> <font color="#000000" size="2">: <%=sex%> </font></p>
			<br /><p align="center">&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" name="sub" value="OK" />&nbsp;&nbsp;&nbsp;&nbsp; Hit Ok (OR) Post Your Need About The Comment,On Right</p>
			
			</td>		
			</tr>
			</table>
			
			</form>
			</fieldset>
			<td>&nbsp;</td>
			</td>
			<td>
			<fieldset> 
			<table width="200" height="300" bgcolor="#999999">
			<tr>
			<td align="justify">
			
			<form name="f1" action="insert_comment_need.jsp" method="post" onsubmit="return val();">
	<p align="center"> <font face="Courier New, Courier, monospace" color="#990033" size="4"><b>&nbsp;&nbsp;Comment Need</b></font></p>
	<p align="center"> &nbsp; <textarea name="cmtned"></textarea></b></p>
	
	<br />
	
	<p align="center">
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" name="sub" value="Submit" /> &nbsp;&nbsp;<input type="reset" name="clr" value="Reset" /></p>
	</form>
	
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
			 <p align="center"> <a target="_blank" href="http://WWW.JNTU.COM">WWW.JNTU.COM </a></p>
			 </div>
      </div>
   </div>
   
   

</body>
</html>
<%
}
else
{
response.sendRedirect("comment2_wall.jsp");
}


}
catch(Exception  e1)
{
out.println(e1.getMessage());
}
%>