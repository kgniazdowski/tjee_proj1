<%--
  Created by IntelliJ IDEA.
  User: Kamil
  Date: 19.10.2016
  Time: 20:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% javax.servlet.http.HttpServletRequest request1 = request; %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<jsp:useBean id="rower" class="com.RowerLand.model.Rower" scope="session" />
<jsp:setProperty name="rower" property="nazwa" />
<jsp:setProperty name="rower" property="cena" />
<jsp:setProperty name="rower" property="wielkoscKola" />
<jsp:useBean id="rowerController" class="com.RowerLand.controller.RowerController" scope="application" />
<jsp:useBean id="producentController" class="com.RowerLand.controller.ProducentController" scope="application" />
<%
    String producentName = request.getParameter("producent");
    rower.setProducent(producentController.FindProducentByName(producentName));
    rowerController.AddRower(rower);
%>
<h2>Dodano rower</h2>
<a href="index.jsp">Wyswietl zawartosc bazy</a>
</body>
</html>
