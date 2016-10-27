<%--
  Created by IntelliJ IDEA.
  User: Kamil
  Date: 26.10.2016
  Time: 22:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>
<jsp:useBean id="producentController" class="com.RowerLand.controller.ProducentController" scope="application" />
<jsp:useBean id="producent" class="com.RowerLand.model.Producent" scope="session" />
<jsp:setProperty name="producent" property="*" />
<h2>Zmodyfikowano producenta:</h2>
<%
    out.println(producent.getNazwa());
    out.println(producent.getMiasto());
    producentController.UpdateProducent(request.getParameter("modifiedProducent"), producent);
%>

<a href="index.jsp">Wyswietl zawartosc bazy</a>
</body>
</html>
