<%--
  Created by IntelliJ IDEA.
  User: Predator-Lois
  Date: 18/09/2018
  Time: 16:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String class1 = "";
    String class2 = "";
    String class3 = "";
    String class4 = "";
    //out.println(request);
    int menuNumber = (Integer) request.getAttribute("MenuNumber");
    if(menuNumber==0)
        class1="active-link";
    if(menuNumber==1)
        class2="active-link";
    if(menuNumber==2)
        class3="active-link";
    if(menuNumber==3)
        class4="active-link";
%>
<div class="navbar-container">
    <ul>
        <li class="nav-link <%=class1%>">
            <a href="/TP/">Home
            </a>
            <div class="underline"></div>
        </li>
        <li class="nav-link <%=class2%>">
            <a href="/TP/FirstPage.html">Session</a>
            <div class="underline"></div>
        </li>
        <li class="nav-link <%=class3%>">
            <a href="/TP/TestP5.html">P5</a>
            <div class="underline"></div>
        </li>
        <li class="nav-link <%=class4%>">
            <a href="#">Contact</a>
            <div class="underline"></div>
        </li>
    </ul>
</div>
<script>$('.topnav').on('click', function() {
    $('.active').removeClass('active');
    $(this).addClass('active');
});</script>
