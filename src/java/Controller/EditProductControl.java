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
        request.setAttribute("game", game);
        request.setAttribute("pd", pd);

        List<Subcategory> subcateList = dao.getallSubCategory();
        List<Category> cateList = dao.getallCategory();
        List<Language> langList = dao.getallLanguage();
        request.setAttribute("langList", langList);
        request.setAttribute("cateList", cateList);
        request.setAttribute("subcateList", subcateList);
        request.getRequestDispatcher("/indexes/product-manage.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String name = request.getParameter("name");
        String desc = request.getParameter("description");
        int categoryId = Integer.parseInt(request.getParameter("category"));
        int subcategoryId = Integer.parseInt(request.getParameter("subcategory"));
        int languageId = Integer.parseInt(request.getParameter("language"));
        Date releaseDate = Date.valueOf(request.getParameter("releaseDate"));
        int inStock = Integer.parseInt(request.getParameter("instock"));

        request.getRequestDispatcher("/indexes/product-manage.jsp").forward(request, response);
        doGet(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
