<%@page import="java.io.FileInputStream"%>
<%@page import="java.util.Enumeration"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="java.io.File"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.ArrayList"%>
<html>
<head>
</head>
<body>
<%

ArrayList list = new ArrayList();
		ServletContext context = getServletContext();

		String dirName =context.getRealPath("\\Gallery");
		String paramname=null;
		String file=null;
		String a=null,img=null;
		String l2 = (String) session.getAttribute("l1");
		//int count=0,buycount=0,rating=0,review=0;
		Connection con=null;		
		//name=(String)session.getAttribute("name");
		//email=(String)session.getAttribute("email");
		/*java.util.Date now = new java.util.Date();
	String date=now.toString();
	 String DATE_FORMAT = "dd-MM-yyyy";
	 SimpleDateFormat sdf = new SimpleDateFormat(DATE_FORMAT);
     String strDateNew = sdf.format(now) ;*/
	
        
		
		  
	 
	 	
 
		File file1 = null;
			
		
		try {
			
			MultipartRequest multi = new MultipartRequest(request, dirName,	10 * 1024 * 1024); // 10MB

			Enumeration params = multi.getParameterNames();
			while (params.hasMoreElements()) 
			{
				paramname = (String) params.nextElement();
				if(paramname.equalsIgnoreCase("un"))
				{
					a=multi.getParameter(paramname);
					System.out.println(a);
					
				}
				
				}
					
			int p = 0;
	Enumeration files = multi.getFileNames();	
	while (files.hasMoreElements()) 
	{
		paramname = (String) files.nextElement();
		if(paramname.equals("d1"))
		{
			paramname = null;
		}
		
		if(paramname != null)
		{
			p = 1;
			img = multi.getFilesystemName(paramname);
			String fPath = context.getRealPath("\\Gallery\\"+img);
			file1 = new File(fPath);
			FileInputStream fs = new FileInputStream(file1);
			list.add(fs);
		}		
	}
	        FileInputStream fs1 = null;
            //name=dirName+"\\Gallery\\"+image;
						
			
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/message_filter","root","password");  

			PreparedStatement ps=con.prepareStatement("update user_reg set image=? where user_reg_id='"+l2+"'");
				
              								
				
       if(p == 0)
			ps.setObject(1,null);
		else if(p == 1)
		{
			fs1 = (FileInputStream)list.get(0);
			ps.setBinaryStream(1,fs1,fs1.available());
		}	
			int x=ps.executeUpdate();
		
			if(x!=0)
			{
				response.sendRedirect("user_home.jsp?message=success");

			}
			else
			{
				response.sendRedirect("index.html?message=fail");
			}
				
		} 
		catch (Exception ex) 
		{
			out.println(ex.getMessage());
		}
	
 %>
</body>
</html>