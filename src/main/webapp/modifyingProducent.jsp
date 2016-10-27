<%@ page import="com.RowerLand.model.Producent" %><%--
  Created by IntelliJ IDEA.
  User: Kamil
  Date: 26.10.2016
  Time: 21:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>
<jsp:useBean id="producentController" class="com.RowerLand.controller.ProducentController" scope="application" />
<%
    String producentName = request.getParameter("producentToModify");
    Producent producent = producentController.FindProducentByName(producentName);
%>
<b>Modyfikowany rekord:</b>
<table border="2">
    <tr>
        <td><%= producent.getNazwa() %></td>
        <td><%= producent.getMiasto() %></td>
        <td><%= producent.getUlica() %></td>
        <td><%= producent.getKodPocztowy() %></td>
        <td><%= producent.getNrLokalu() %></td>
    </tr>
</table>
<br />
<b>Nowe dane:</b><br />
<form action="modifyProducent.jsp">
    Nazwa: <input type="text" name="nazwa" value="<%= producent.getNazwa() %>"/><br />
    Miasto: <input type="text"  name="miasto" value="<%= producent.getMiasto() %>"/><br />
    Ulica: <input type="text"  name="ulica" value="<%= producent.getUlica() %>"/><br />
    Kod pocztowy: <input type="text"  name="kodPocztowy" value="<%= producent.getKodPocztowy() %>"/><br />
    Nr lokalu: <input type="text"  name="nrLokalu" value="<%= producent.getNrLokalu() %>"/><br />
    <input type="hidden" name="modifiedProducent" value="<%= producentName %>" />
    <input type="submit" value=" Zatwierdz ">
</form>
</body>
</html>
