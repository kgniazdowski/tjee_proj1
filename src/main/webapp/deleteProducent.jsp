<%@ page import="com.RowerLand.model.Producent" %>
<%--
  Created by IntelliJ IDEA.
  User: Kamil
  Date: 21.10.2016
  Time: 19:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<jsp:useBean id="producentController" class="com.RowerLand.controller.ProducentController" scope="application" />
<%
    String[] producentsToDelete = request.getParameterValues("producentToDelete");
    for(String producentName : producentsToDelete)
        producentController.DeleteProducent(producentName);
%>
<h2>Usunieto producentow:</h2>
<%
    for(String producentName : producentsToDelete)
        out.println(producentName + "<br />");
%>
<a href="index.jsp">Wyswietl zawartosc bazy</a>
</body>
</html>
