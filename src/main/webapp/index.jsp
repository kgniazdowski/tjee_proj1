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
                for (Producent producent : producentController.GetList())
                {
                    System.out.println("<tr>: ");
                    System.out.println("<td>" + producent.getNazwa() + "</td>");
                    System.out.println("<td>" + producent.getMiasto() + "</td>");
                    System.out.println("<td>" + producent.getUlica() + "</td>");
                    System.out.println("<td>" + producent.getKodPocztowy() + "</td>");
                    System.out.println("<td>" + producent.getNrLokal() + "</td>");
                    System.out.println("</tr>: ");
                }
            %>
        </table>

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
                    System.out.println("<tr>: ");
                    System.out.println("<td>" + rower.getNazwa() + "</td>");
                    System.out.println("<td>" + rower.getCena() + "</td>");
                    System.out.println("<td>" + rower.getWielkoscKola() + "</td>");
                    System.out.println("<td>" + rower.getProducent().getNazwa() + "</td>");
                    System.out.println("</tr>: ");
                }
            %>
        </table>
    </body>
</html>