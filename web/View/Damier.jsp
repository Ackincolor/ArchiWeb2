<%--
  Created by IntelliJ IDEA.
  User: Predator-Lois
  Date: 02/10/2018
  Time: 15:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Damier</title>
    <jsp:include page="/View/include.jsp"></jsp:include>
</head>
<body>
<jsp:include page="../Header/NavBar.jsp" >
    <jsp:param name="MenuNumber" value="${MenuNumber}" />
</jsp:include>
<table style="width:250px;height:250px">
<%
    int col = 0;
    for(int i =1;i<=10;i++)
    {
        out.println("<tr>");
        for(int j =1;j<=10;j++)
        {
            if(col%2==0)
                out.println("<td style=\"background-color:black\"></td>");
            else
                out.println("<td ></td>");
            col++;
        }
        col++;
        out.println("</tr>");
    }
%>
</table>
</body>
</html>
