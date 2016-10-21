<%@ page import="com.RowerLand.model.Producent" %>
<%@ page import="com.RowerLand.model.Rower" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>RowerLand Database</title>
    </head>
    <body>
        <jsp:useBean id="rowerController" class="com.RowerLand.controller.RowerController" scope="application" />
        <jsp:useBean id="producentController" class="com.RowerLand.controller.ProducentController" scope="application" />
        <h1>Baza danych RowerLand'u</h1>

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
                for (Producent producent : producentController.GetList()) {
                    out.println("<tr>");
                    out.println("<td>" + producent.getNazwa() + "</td>");
                    out.println("<td>" + producent.getMiasto() + "</td>");
                    out.println("<td>" + producent.getUlica() + "</td>");
                    out.println("<td>" + producent.getKodPocztowy() + "</td>");
                    out.println("<td>" + producent.getNrLokalu() + "</td>");
                    out.println("</tr>");
                }
            %>
        </table>
        <a href="getProducentData.jsp">Dodaj producenta</a>

        <!-- Wyswietlenie Rowerow -->
        <h2>Rowery:</h2>
        <table border="2">
            <tr>
                <td>Nazwa</td>
                <td>Cena</td>
                <td>Wielkosc kola</td>
                <td>Producent</td>
            </tr>
            <%
                for (Rower rower : rowerController.GetList())
                {
                    out.println("<tr>");
                    out.println("<td>" + rower.getNazwa() + "</td>");
                    out.println("<td>" + rower.getCena() + "</td>");
                    out.println("<td>" + rower.getWielkoscKola() + "</td>");
                    out.println("<td>" + rower.getProducent().getNazwa() + "</td>");
                    out.println("</tr>");
                }
            %>
        </table>
        <a href="getRowerData.jsp">Dodaj rower</a>
    </body>
</html>