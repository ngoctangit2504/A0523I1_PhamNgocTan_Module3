package com.example.calculator;

import java.io.*;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(name = "calculatorServlet", value = "/calculator-servlet")
public class CalculatorServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {


        float sothunhat = Float.parseFloat(request.getParameter("sothunhat"));
        float sothuhai = Float.parseFloat(request.getParameter("sothuhai"));
        String pheptinh = request.getParameter("calculator");
        String dau = "";

        String thongbao = "oke";

        float ketqua = 0;
        if (pheptinh.equals("cong")) {
            dau = "+";
            ketqua = sothunhat + sothuhai;
        } else if (pheptinh.equals("tru")) {
            dau = "-";
            ketqua = sothunhat - sothuhai;
        } else if (pheptinh.equals("nhan")) {
            dau = "*";
            ketqua = sothunhat * sothuhai;
        } else if (pheptinh.equals("chia") && sothuhai != 0) {
            dau = "%";
            ketqua = sothunhat / sothuhai;
        } else if (pheptinh.equals("chia") && sothuhai == 0 ) {
            dau = "%";
            ketqua = 0.0f;
            thongbao = "khong hop le so thư 2 phai khac 0";
        }

        request.setAttribute("ketqua", ketqua);
        request.setAttribute("thongbao", thongbao);
        request.setAttribute("sothunhat", sothunhat);
        request.setAttribute("sothuhai", sothuhai);
        request.setAttribute("dau", dau);


        RequestDispatcher requestDispatcher = request.getRequestDispatcher("result.jsp");
        requestDispatcher.forward(request,response);
    }

}