<%@ page import="com.RowerLand.ValidatorSingleton" %><%--
  Created by IntelliJ IDEA.
  User: Kamil
  Date: 17.10.2016
  Time: 19:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Dodaj producenta</title>
</head>
<body>
    <jsp:useBean id="producent" class="com.RowerLand.model.Producent" scope="session" />
    <jsp:setProperty name="producent" property="*" />
    <jsp:useBean id="producentController" class="com.RowerLand.controller.ProducentController" scope="application" />
    <%
        producentController.AddProducent(producent);
    %>
    <h2>Pomyslnie dodano producenta </h2>
    <a href="index.jsp">Wyswietl zawartosc bazy</a>
</body>
</html>
