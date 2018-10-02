<%--
  Created by IntelliJ IDEA.
  User: Predator-Lois
  Date: 25/09/2018
  Time: 14:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>TestP5</title>
    <jsp:include page="/View/include.jsp"></jsp:include>
</head>
<body>
<jsp:include page="../Header/NavBar.jsp" >
    <jsp:param name="MenuNumber" value="${MenuNumber}" />
</jsp:include>
<jsp:include page="../JS/EasyCam/examples/AnimatedPointLights/index.html"></jsp:include>


</html>
