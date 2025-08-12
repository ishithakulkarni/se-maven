package com.example;
import java.io.*;
import jakarta.servlet.*;
import jakarta.servlet.http.*;

public class CalculatorServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        int a = Integer.parseInt(request.getParameter("a"));
        int b = Integer.parseInt(request.getParameter("b"));
        int sum = a + b;
        out.println("<h1>Sum: " + sum + "</h1>");
    }
}
