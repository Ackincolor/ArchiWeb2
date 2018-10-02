<%@ page import="TP.bean.Decalage" %><%--
  Created by IntelliJ IDEA.
  User: Predator-Lois
  Date: 02/10/2018
  Time: 14:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <jsp:useBean id="bean" class="TP.bean.Decalage" scope="request" />
    <%
        String param = request.getParameter("number");
        Decalage dec2 = null;
        if(param!=null)
            dec2 = new Decalage(Integer.parseInt(param));

    %>
    <title>TestP5</title>
    <jsp:include page="/View/include.jsp"></jsp:include>
</head>
<body>
<jsp:include page="../Header/NavBar.jsp" >
    <jsp:param name="MenuNumber" value="${MenuNumber}" />
</jsp:include>
    <form method="get">
        <div class="form-group">
        <input type="number" id="number" name="number" class="form-control">
        <button type="submit" class="btn btn-primary">SEND</button>
        </div>
    </form>
    <%
        if(dec2==null)
            return;
    %>
    <table class="table">
        <tr class="thead-dark">
            <th scope="col">Operation</th>
            <th scope="col">Decimal</th>
            <th scope="col">Hex</th>
            <th scope="col">Bin</th>
        </tr>
        <tr>
            <td scope="row">Original</td>
            <td><%=dec2.number%></td>
            <td><%=dec2.toHex()%></td>
            <td><%=dec2.to32Bin()%></td>
        </tr>
        <tr>
            <td scope="row">Shift<<1<%dec2.shiftL();%></td>
            <td><%=dec2.number%></td>
            <td><%=dec2.toHex()%></td>
            <td><%=dec2.to32Bin()%></td>
        </tr>
        <tr>
            <td scope="row">Shift>>1<%dec2.shiftR();dec2.shiftR();%></td>
            <td><%=dec2.number%></td>
            <td><%=dec2.toHex()%></td>
            <td><%=dec2.to32Bin()%></td>
        </tr>
    </table>
</body>
</html>
