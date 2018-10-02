<%-- Created by IntelliJ IDEA. --%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>TP Archi Web</title>
    <jsp:include page="/View/include.jsp"></jsp:include>
  </head>
  <body>
  <jsp:include page="Header/NavBar.jsp" >
    <jsp:param name="MenuNumber" value="${MenuNumber}" />
  </jsp:include>
Bonjour, Vous êtes sur la page d'accueil des TP de JAVA
  </body>
</html>