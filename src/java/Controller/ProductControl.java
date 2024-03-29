/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import DAO.ProductDAO;
import java.io.IOException;
import java.io.PrintWriter;
import Models.*;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;

/**
 *
 * @author Tiến_Đạt
 */
public class ProductControl extends HttpServlet {

    /**
     * Processes requests for both HTTP codeGET/code and codePOST/code methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        ProductDAO dao = new ProductDAO();

        Product pd = dao.getProductbyId(id);
        Games game = dao.getGamebyId(id);
        Category cate = dao.getCategoryById(id);
        Subcategory subcate = dao.getSubCategoryById(id);
        Language lang = dao.getLanguageById(id);

        request.setAttribute("game", game);
        request.setAttribute("lang", lang);
        request.setAttribute("cate", cate);
        request.setAttribute("subcate", subcate);
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
        request.getRequestDispatcher("/indexes/product-detail.jsp").forward(request, response);
    }

    // editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code."
    /**
     * Handles the HTTP codeGET/code method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP codePOST/code method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// /editor-fold

}
