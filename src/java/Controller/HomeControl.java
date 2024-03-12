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

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ProductDAO dao = new ProductDAO();
        int minPrice = Integer.parseInt(request.getParameter("minPrice"));
        int maxPrice = Integer.parseInt(request.getParameter("maxPrice"));
        int category = Integer.parseInt(request.getParameter("category"));
        int language = Integer.parseInt(request.getParameter("language"));

        List<Product> filtered = dao.myFilter(minPrice, maxPrice, language, category);
        request.setAttribute("filtered", filtered);
        doGet(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ProductDAO dao = new ProductDAO();
        List<Subcategory> subcateList = dao.getallSubCategory();
        request.setAttribute("subcateList", subcateList);
        List<Category> cateList = dao.getallCategory();
        request.setAttribute("cateList", cateList);
        List<Games> gameList = dao.getallGames();
        request.setAttribute("gameList", gameList);
        List<Language> langList = dao.getallLanguage();
        request.setAttribute("langList", langList);
        int index = 0;
        try {
            index = Integer.parseInt(request.getParameter("index"));
        } catch (Exception e) {
            index = 0;
        }
        int nrpp = 3;
        List<Product> pd = dao.getallProduct();
        Paging p = new Paging(pd.size(), nrpp, index);
        p.calc();
        request.setAttribute("page", p);
        List<Product> productList = dao.getallProduct();
        request.setAttribute("productList", productList);
        request.getRequestDispatcher("/indexes/index-logined.jsp").forward(request, response);
    }
}
