<%@ page import="com.RowerLand.model.Producent" %><%--
  Created by IntelliJ IDEA.
  User: Kamil
  Date: 26.10.2016
  Time: 21:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>
<jsp:useBean id="producentController" class="com.RowerLand.controller.ProducentController" scope="application" />
<h2>Ktorego producenta chcesz modyfikowac?</h2>
<form action="modifyingProducent.jsp">
    <%
        int i = 1;
        for(Producent producent : producentController.GetList())
        {
            out.println("<input type='radio' name='producentToModify' id='item"+i+"' value='" + producent.getNazwa() + "'>");
            out.println("<label for='item"+i+"'>" + producent.getNazwa() + "</label>");
            out.println("<br />");
        }
    %>
    <input type="submit" value="Modyfikuj" />
</form>
</body>
</html>
