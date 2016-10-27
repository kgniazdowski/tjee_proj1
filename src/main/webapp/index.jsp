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
    <a href="getRowerToDelete.jsp">Usun</a>
    <a href="getRowerData.jsp">Dodaj</a>
    <a href="getRowerToModify.jsp">Modyfikuj</a>

    </body>
</html>