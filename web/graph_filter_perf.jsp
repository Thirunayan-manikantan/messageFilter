<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page import="org.jfree.chart.ChartFactory" %>
<%@ page import="org.jfree.chart.ChartUtilities" %>
<%@ page import="org.jfree.chart.JFreeChart" %>
<%@ page import="org.jfree.chart.plot.PlotOrientation"%>
<%@ page import="org.jfree.data.*" %>
<%@ page import="org.jfree.data.jdbc.JDBCCategoryDataset"%>

<%
   	String a2 = request.getQueryString();
	//session.setAttribute("gp",a2);

String query=("SELECT  vio,vul,off,hate,sex from filter_avg where sno='"+a2+"'");
JDBCCategoryDataset dataset=new JDBCCategoryDataset("jdbc:mysql://localhost:3306/message_filter","com.mysql.jdbc.Driver","root","password");

dataset.executeQuery(query);
JFreeChart chart = ChartFactory .createBarChart3D("Filter Performance","Filter Details","Numbers",dataset,PlotOrientation.VERTICAL,true, true, false);
try
{

ChartUtilities.saveChartAsJPEG(new File("C:/Users/lenovo/Documents/NetBeansProjects/MessageFiltering/web/Graph/filter.jpg"), chart, 600, 400);
response.sendRedirect("graph_view.jsp");

}




catch (IOException e)
{
System.out.println("Problem in creating chart.");
}
%>