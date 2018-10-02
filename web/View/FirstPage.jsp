<%--
  Created by IntelliJ IDEA.
  User: Predator-Lois
  Date: 18/09/2018
  Time: 15:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<jsp:include page="/View/include.jsp"></jsp:include>
<head>
    <title>FirstPageJSP</title>
</head>
<body>
<jsp:include page="../Header/NavBar.jsp" >
    <jsp:param name="MenuNumber" value="${MenuNumber}" />
</jsp:include>
    <h2>Nombre de visite :${nbVisite}</h2>
</body>
</html>
