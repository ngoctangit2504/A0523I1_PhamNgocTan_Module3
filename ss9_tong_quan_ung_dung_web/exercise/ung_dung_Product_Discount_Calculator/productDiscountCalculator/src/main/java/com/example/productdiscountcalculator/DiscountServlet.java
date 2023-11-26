package com.example.productdiscountcalculator;

import java.io.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(name = "discountServlet", value = "/result")
public class DiscountServlet extends HttpServlet {


    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("text/html");
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        double listPrice = Double.parseDouble(request.getParameter("lp"));
        double discountPercent = Double.parseDouble(request.getParameter("dp"));
        double discountAmount = listPrice * discountPercent * 0.01;
        double discountPrice = listPrice + discountAmount;

        PrintWriter writer = response.getWriter();
        writer.println("<html>");
        writer.println("Discount Amount: " + discountAmount);
        writer.println("Discount Price: " + discountPrice);
        writer.println("</html>");

    }

}