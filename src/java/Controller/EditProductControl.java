/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import DAO.ProductDAO;
import Models.Category;
import Models.Games;
import Models.Language;
import Models.Product;
import Models.Subcategory;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;
import java.sql.Date;
import java.text.SimpleDateFormat;

/**
 *
 * @author Tiến_Đạt
 */
public class EditProductControl extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        ProductDAO dao = new ProductDAO();
        Product pd = dao.getProductbyId(id);
        Games game = dao.getGamebyId(id);
        request.setAttribute("gm", game);
        request.setAttribute("pd", pd);

        List<Subcategory> subcateList = dao.getallSubCategory();
        List<Category> cateList = dao.getallCategory();
        List<Language> langList = dao.getallLanguage();
        List<Product> productList = dao.getallProduct();
        List<Games> gameList = dao.getallGames();
        
        request.setAttribute("langList", langList);
        request.setAttribute("productList", productList);
        request.setAttribute("gameList", gameList);
        request.setAttribute("cateList", cateList);
        request.setAttribute("subcateList", subcateList);
        request.getRequestDispatcher("/indexes/product-manage.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        ProductDAO dao = new ProductDAO();
        int id = Integer.parseInt(request.getParameter("id"));

//      Product
        String name = request.getParameter("name");
        String desc = request.getParameter("description");
        int inStock = Integer.parseInt(request.getParameter("instock"));
        double price = Double.parseDouble(request.getParameter("price"));
        String imagePath = request.getParameter("imagePath");

//      Game
        String releaseDate = (request.getParameter("releaseDate"));
        String publisher = request.getParameter("publisher");
        String developer = request.getParameter("developer");
        int categoryId = Integer.parseInt(request.getParameter("category"));
        String subcategoryId = request.getParameter("subcategory");
        int languageId = Integer.parseInt(request.getParameter("language"));

        dao.updateGame(id, releaseDate, publisher, developer, languageId, categoryId, subcategoryId);
        dao.updateProduct(id, name, desc, inStock, price, imagePath);
        response.sendRedirect(request.getContextPath() +"/");
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
