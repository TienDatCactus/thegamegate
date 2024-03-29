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

/**
 *
 * @author Tiến_Đạt
 */
public class Add extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        ProductDAO dao = new ProductDAO();
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
        request.getRequestDispatcher("/indexes/add-new-game.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        ProductDAO dao = new ProductDAO();
        List<Games> game = dao.getallGames();
        int id = game.size() + 4;
        String desc = request.getParameter("description");
        String name = request.getParameter("name");
        int inStock = Integer.parseInt(request.getParameter("inStock"));
        double price = Double.parseDouble(request.getParameter("price"));
        String imagePath = request.getParameter("image");
        dao.addProduct(id, name, desc, inStock, price, imagePath);
        String date = request.getParameter("releaseDate");
        String publisher = request.getParameter("publisher");
        String dev = request.getParameter("developer");
        int category = Integer.parseInt(request.getParameter("category"));
        String subcategory = request.getParameter("subcategory");
        int language = Integer.parseInt(request.getParameter("language"));
        PrintWriter out = response.getWriter();
       
 dao.addGame(id, date, publisher, dev, language, category, subcategory);
        dao.addProduct(id, name, desc, inStock, price, imagePath);
        response.sendRedirect(request.getContextPath() + "/ItemListControl");


    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
