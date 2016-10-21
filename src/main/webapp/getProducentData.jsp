<%--
  Created by IntelliJ IDEA.
  User: Kamil
  Date: 17.10.2016
  Time: 19:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <jsp:useBean id="producent" class="com.RowerLand.model.Producent" scope="session" />
    <jsp:useBean id="producentController" class="com.RowerLand.controller.ProducentController" scope="application"/>
    <h2>Dodaj Producenta:</h2>
    <form action="addProducent.jsp">
        Nazwa: <input type="text" name="nazwa" /><br />
        Miasto: <input type="text"  name="miasto" /><br />
        Ulica: <input type="text"  name="ulica" /><br />
        Kod pocztowy: <input type="text"  name="kodPocztowy" /><br />
        Nr lokalu: <input type="text"  name="nrLokalu" /><br />
        <input type="submit" value=" Dodaj ">
    </form>
</body>
</html>
