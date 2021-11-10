<%@page import="freemarker.core.BuiltInForNodeEx"%>
<%@ page import="java.io.*, java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String sn = request.getParameter("var");
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://locoalhost:3307/struts2webapp","root","");
	PreparedStatement pst = con.prepareStatement("SELECT * FROM login_table WHERE email='"+sn+"'");
	ResultSet rs = pst.executeQuery();
	if(rs.next()){
		out.println("<font color=red>");
		out.println("Email Alredy Taken");
		out.println("</font>");
	}else{
		out.println("<font color=green>");
		out.println("Email Available");
		out.println("</font>");
	}
	rs.close();;
	pst.close();;
	con.close();
%>
</body>
</html>