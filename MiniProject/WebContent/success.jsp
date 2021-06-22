<%
if ((session.getAttribute("name") == null) || (session.getAttribute("name") == "")) {
%>
You are not logged in<br/>
<a href="index.jsp">Please Login</a>
<%} else {
%>
<body background="img1.jpg">
<p align="center">
Welcome <%=session.getAttribute("name")%>
<a href='viewusers.jsp'>View users</a>
</p>
</body>
<%
}
%>
