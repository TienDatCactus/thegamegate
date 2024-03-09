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

        SubCategoryDAO subcateDao = new SubCategoryDAO();
        List<Subcategory> subcateList = subcateDao.getallSubCategory();
        request.setAttribute("subcateList", subcateList);

        CategoryDAO cateDao = new CategoryDAO();
        List<Category> cateList = cateDao.getallCategory();
        request.setAttribute("cateList", cateList);

        GameDAO gameDao = new GameDAO();
        List<Games> gameList = gameDao.getallGames();
        request.setAttribute("gameList", gameList);

        LanguageDAO langDao = new LanguageDAO();
        List<Language> langList = langDao.getallLanguage();
        request.setAttribute("langList", langList);

        ProductDAO productDao = new ProductDAO();
        List<Product> productList = productDao.getallProduct();
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
