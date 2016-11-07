<%@ page import="com.RowerLand.model.Producent" %>
<%@ page import="com.RowerLand.model.Rower" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>RowerLand Database</title>
    </head>
    <body>
        <jsp:useBean id="rowerController" class="com.RowerLand.controller.RowerController" scope="application" />
        <jsp:useBean id="producentController" class="com.RowerLand.controller.ProducentController" scope="application" />
        <h1>Baza danych RowerLand'u</h1>

        <a href="calculator">Kalkulator cali</a>

        <!-- Wyswietlenie Producentow -->
        <h2>Producenci:</h2>
        <table border="2">
            <tr>
                <td>Nazwa</td>
                <td>Miasto</td>
                <td>Ulica</td>
                <td>Kod pocztowy</td>
                <td>Numer lokalu</td>
            </tr>
            <%
                //Temporary data
                /*Producent pr = new Producent();
                pr.setNazwa("EloBike");
                pr.setUlica("3 Maja");
                pr.setNrLokalu("12");
                pr.setKodPocztowy("83-330");
                pr.setMiasto("Zukowo");
                Rower r = new Rower();
                r.setNazwa("Elo");
                r.setCena(4999);
                r.setWielkoscKola(13.9);
                r.setProducent(pr);
                rowerController.AddRower(r);
                producentController.AddProducent(pr);
                pr = new Producent();
                pr.setNazwa("ByeBike");
                pr.setUlica("Wallerianska");
                pr.setNrLokalu("81");
                pr.setKodPocztowy("80-800");
                pr.setMiasto("Gdansk");
                producentController.AddProducent(pr);
                r = new Rower();
                r.setNazwa("Bye");
                r.setCena(1998);
                r.setWielkoscKola(14.8);
                r.setProducent(pr);
                rowerController.AddRower(r);*/
            %>
            <c:forEach var="item" items="${producentController.GetList()}">
                <tr>
                    <td><c:out value="${item.nazwa}" /></td>
                    <td><c:out value="${item.miasto}" /></td>
                    <td><c:out value="${item.ulica}" /></td>
                    <td><c:out value="${item.kodPocztowy}" /></td>
                    <td><c:out value="${item.nrLokalu}" /></td>
                </tr>
            </c:forEach>
        </table>
        <a href="getProducentData.jsp">Dodaj</a>
        <a href="getProducentToDelete.jsp">Usuń</a>
        <a href="getProducentToModify.jsp">Modyfikuj</a>

        <!-- Wyswietlenie Rowerow -->
        <h2>Rowery:</h2>
        <table border="2">
            <tr>
                <td>Nazwa</td>
                <td>Cena</td>
                <td>Wielkosc kola</td>
                <td>Producent</td>
            </tr>
            <c:forEach var="item" items="${rowerController.GetList()}">
                <tr>
                    <td><c:out value="${item.nazwa}" /></td>
                    <td><c:out value="${item.cena}" /></td>
                    <td><c:out value="${item.wielkoscKola}" /></td>
                    <td><c:out value="${item.producent.nazwa}" /></td>
                </tr>
            </c:forEach>
    </table>
    <a href="getRowerData.jsp">Dodaj</a>
    <a href="getRowerToDelete.jsp">Usun</a>
    <a href="getRowerToModify.jsp">Modyfikuj</a>

    </body>
</html>