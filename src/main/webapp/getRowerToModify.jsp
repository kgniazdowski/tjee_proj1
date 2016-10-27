<%@ page import="com.RowerLand.model.Producent" %>
<%@ page import="com.RowerLand.model.Rower" %>
<%--
  Created by IntelliJ IDEA.
  User: Kamil
  Date: 27.10.2016
  Time: 15:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>
<jsp:useBean id="rowerController" class="com.RowerLand.controller.RowerController" scope="application" />
<h2>Ktory rower chcesz modyfikowac?</h2>
<form action="modifyingRower.jsp">
    <%
        int i = 1;
        for(Rower rower : rowerController.GetList())
        {
            out.println("<input type='radio' name='rowerToModify' id='item"+i+"' value='" + rower.getNazwa() + "'>");
            out.println("<label for='item"+i+"'>" + rower.getNazwa() + "</label>");
            out.println("<br />");
        }
    %>
    <input type="submit" value="Modyfikuj" />
</form>
</body>
</html>
