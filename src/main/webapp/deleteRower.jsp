<%--
  Created by IntelliJ IDEA.
  User: Kamil
  Date: 21.10.2016
  Time: 20:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>
<jsp:useBean id="rowerController" class="com.RowerLand.controller.RowerController" scope="application" />
<%
    String[] rowersToDelete = request.getParameterValues("rowerToDelete");
    for(String rowerName : rowersToDelete)
        rowerController.DeleteRower(rowerName);
%>
<h2>Usunieto rowery:</h2>
<%
    for(String rowerName : rowersToDelete)
        out.println(rowerName + "<br />");
%>
<a href="index.jsp">Wyswietl zawartosc bazy</a>
</body>
</html>
