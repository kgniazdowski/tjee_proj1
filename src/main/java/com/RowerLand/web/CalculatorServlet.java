package com.RowerLand.web;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Created by Kamil on 27.10.2016.
 */
@WebServlet(urlPatterns = "/calculator")
public class CalculatorServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html");

        StringBuilder sb = new StringBuilder();
        sb.append("<html><body><h2>Kalkulator cal -> centymetr</h2>");
        sb.append("<form action='calculator'>");
        sb.append("<input type='text' name='inch' /> <p>cali to ");
        String inches = request.getParameter("inch");

        if(inches!=null && !inches.isEmpty())
            sb.append(Double.parseDouble(inches)*2.54);
        else
            sb.append("0");

        sb.append(" cm.</p>");
        sb.append("<input type='submit' value='Przelicz' />");
        sb.append("</form>");
        sb.append("</body></html>");

        PrintWriter out = response.getWriter();
        out.println(sb.toString());
        out.close();
    }
}
