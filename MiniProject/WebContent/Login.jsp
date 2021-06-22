<%@ page import ="java.sql.*" %>
<%
String name = request.getParameter("name");    
String password = request.getParameter("password");
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test500",
"root", "root");
Statement st = con.createStatement();
ResultSet rs;
rs = st.executeQuery("select * from register where name='" + name + "' and password='" + password + "'");
if (rs.next()) {
session.setAttribute("name", name);
//out.println("welcome " + userid);
//out.println("<a href='Logout.jsp'>Log out</a>");
response.sendRedirect("success.jsp");
} else {
out.println("Invalid User Name or Password <a href='index.jsp'>try again</a>");
}
%>
<body background="img1.jpg"></body>