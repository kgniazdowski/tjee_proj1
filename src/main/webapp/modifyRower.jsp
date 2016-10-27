<%--
  Created by IntelliJ IDEA.
  User: Kamil
  Date: 27.10.2016
  Time: 19:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>
<jsp:useBean id="rower" class="com.RowerLand.model.Rower" scope="session" />
<jsp:setProperty name="rower" property="nazwa" />
<jsp:setProperty name="rower" property="cena" />
<jsp:setProperty name="rower" property="wielkoscKola" />
<jsp:useBean id="rowerController" class="com.RowerLand.controller.RowerController" scope="application"/>
<jsp:useBean id="producentController" class="com.RowerLand.controller.ProducentController" scope="application" />
<%
    String producentName = request.getParameter("producent");
    rower.setProducent(producentController.FindProducentByName(producentName));
    rowerController.UpdateRower(request.getParameter("modifiedRower"), rower);
%>
<h2>Zmodyfikowano producenta:</h2>
<p><%= rower.getNazwa() %></p><br />
<p><%= rower.getProducent().getNazwa() %></p><br />
<p>Stara nazwa: <%= request.getParameter("modifiedRower") %></p>

<a href="index.jsp">Wyswietl zawartosc bazy</a>
</body>
</html>
