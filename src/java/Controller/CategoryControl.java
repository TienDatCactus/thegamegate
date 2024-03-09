package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import DAO.*;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.Vector;
import Models.*;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

public class CategoryControl extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("/indexes/index-logined.jsp").forward(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        ProductDAO dao = new ProductDAO();
        float minPrice = Float.parseFloat(request.getParameter("minPrice"));
        float maxPrice = Float.parseFloat(request.getParameter("maxPrice"));
        int category = Integer.parseInt(request.getParameter("category"));
        int language = Integer.parseInt(request.getParameter("language"));

        List<Product> filtered = dao.myFilter(minPrice, maxPrice, language, category);
        request.setAttribute("filtered", filtered);
        request.getRequestDispatcher("indexes/index-logined.jsp").forward(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}