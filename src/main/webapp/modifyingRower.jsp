<%@ page import="com.RowerLand.model.Rower" %>
<%@ page import="com.RowerLand.model.Producent" %><%--
  Created by IntelliJ IDEA.
  User: Kamil
  Date: 27.10.2016
  Time: 15:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>
<jsp:useBean id="rowerController" class="com.RowerLand.controller.RowerController" scope="application" />
<jsp:useBean id="producentController" class="com.RowerLand.controller.ProducentController" scope="application" />
<%
    String rowerName = request.getParameter("rowerToModify");
    Rower rower = rowerController.FindRowerByName(rowerName);
%>
<h2>Modyfikowany rekord:</h2>
<table border="2">
    <tr>
        <td><%= rower.getNazwa() %></td>
        <td><%= rower.getCena() %></td>
        <td><%= rower.getWielkoscKola() %></td>
        <td><%= rower.getProducent().getNazwa() %></td>
    </tr>
</table>
<br />
<h2>Nowe dane:</h2>
<form action="modifyRower.jsp">
    Nazwa: <input type="text" name="nazwa" value="<%= rower.getNazwa() %>"/><br />
    Cena: <input type="text"  name="cena" value="<%= rower.getCena() %>"/><br />
    Wielkosc kola: <input type="text"  name="wielkoscKola" value="<%= rower.getWielkoscKola() %>"/><br />
    Producent:
    <select name="producent">
        <%
            for (Producent producent : producentController.GetList())
            {
                if (producent.getNazwa().equals(rower.getProducent().getNazwa()))
                    out.println("<option selected>" + producent.getNazwa() + "</option>");
                else
                    out.println("<option>" + producent.getNazwa() + "</option>");
            }
        %>
    </select>
    <input type="hidden" name="modifiedRower" value="<%= rowerName %>" />
    <br />
    <input type="submit" value=" Modyfikuj ">
</form>
</body>
</html>
