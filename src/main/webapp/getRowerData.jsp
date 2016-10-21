<%@ page import="com.RowerLand.model.Producent" %><%--
  Created by IntelliJ IDEA.
  User: Kamil
  Date: 18.10.2016
  Time: 16:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<jsp:useBean id="rower" class="com.RowerLand.model.Rower" scope="session" />
<jsp:useBean id="rowerController" class="com.RowerLand.controller.RowerController" scope="application"/>
<jsp:useBean id="producentController" class="com.RowerLand.controller.ProducentController" scope="application" />
<h2>Dodaj Producenta:</h2>
<form action="addRower.jsp">
    Nazwa: <input type="text" name="nazwa" /><br />
    Cena: <input type="text"  name="cena" /><br />
    Wielkosc kola: <input type="text"  name="wielkoscKola" /><br />
    Producent:
    <select name="producent">
        <%
            for (Producent producent : producentController.GetList())
            {
                out.println("<option>" + producent.getNazwa() + "</option>");
            }
        %>
    </select>
    <br />
    <input type="submit" value=" Dodaj ">
</form>
</body>
</html>
