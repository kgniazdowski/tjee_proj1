<%@ page import="com.RowerLand.model.Producent" %><%--
  Created by IntelliJ IDEA.
  User: Kamil
  Date: 21.10.2016
  Time: 19:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>
<jsp:useBean id="producentController" class="com.RowerLand.controller.ProducentController" scope="application" />
<h2>Których producentów chcesz usunąć?</h2>
<form action="deleteProducent.jsp">
    <%
        for (Producent producent : producentController.GetList())
        {
            out.println("<input type='checkbox' name='producentToDelete' value='" + producent.getNazwa() + "'>" + producent.getNazwa());
            out.println("<br />");
        }
    %>
    <input type="submit" value=" Usuń ">
</form>

</body>
</html>
