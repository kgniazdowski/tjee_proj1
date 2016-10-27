<%@ page import="com.RowerLand.model.Rower" %><%--
  Created by IntelliJ IDEA.
  User: Kamil
  Date: 21.10.2016
  Time: 20:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>
<jsp:useBean id="rowerController" class="com.RowerLand.controller.RowerController" scope="application" />
<h2>Który rower chcesz usunąć?</h2>
<form action="deleteRower.jsp">
    <%
        for (Rower rower : rowerController.GetList())
        {
            out.println("<input type='checkbox' name='rowerToDelete' value='" + rower.getNazwa() + "'>" + rower.getNazwa());
            out.println("<br />");
        }
    %>
    <input type="submit" value=" Usuń ">
</form>
</body>
</html>
