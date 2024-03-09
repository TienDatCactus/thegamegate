/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import DAO.UserDAO;
import Models.*;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.List;

public class ProfileControl extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession sess = request.getSession();
        UsersAccount ua = (UsersAccount) sess.getAttribute("user");
        if (ua == null) {
            response.sendRedirect(request.getContextPath() + "/LoginControl");
            return;
        }
        int id = ua.getUserId();
        UserDAO dao = new UserDAO();

        Users user = dao.getUserById(id);
        UserPayments payment = dao.getUserPaymentsById(id);

        request.setAttribute("ui", user);
        request.setAttribute("up", payment);
        request.getRequestDispatcher("indexes/profile.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

}
