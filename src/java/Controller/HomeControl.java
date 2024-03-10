/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import Models.*;
import DAO.*;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;

public class HomeControl extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        ProductDAO dao = new ProductDAO();
        
        List<Subcategory> subcateList = dao.getallSubCategory();
        request.setAttribute("subcateList", subcateList);

        List<Category> cateList = dao.getallCategory();
        request.setAttribute("cateList", cateList);

        List<Games> gameList = dao.getallGames();
        request.setAttribute("gameList", gameList);

        List<Language> langList = dao.getallLanguage();
        request.setAttribute("langList", langList);

        List<Product> productList = dao.getallProduct();
        request.setAttribute("productList", productList);

        request.getRequestDispatcher("/indexes/index-logined.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        processRequest(req, resp);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        processRequest(req, resp);
    }
}
