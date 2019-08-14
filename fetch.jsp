<%@page import="java.sql.*,java.io.*;" %>
<%
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost/test","root","root");
String msql = "select * from users";
Statement smt = con.createStatement();
ResultSet rs = smt.executeQuery(msql);
int id;
String name = "";
while(rs.next())
{
	id = rs.getInt("id");
	name = rs.getString("name");
    %><div><%= id %> <%= name %></div><%
}
%>
