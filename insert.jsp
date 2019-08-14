<%@page import="java.sql.*,java.io.*;" %>
<%
String name = request.getParameter("name");
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost/test","root","root");
String msql1 = "insert into users(name) values(?)";
	PreparedStatement smt1 = con.prepareStatement(msql1);
	smt1.setString(1,name);
	smt1.executeUpdate();
	con.close();
%>
<div></div>