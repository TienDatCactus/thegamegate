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
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 *
 * @author Tiến_Đạt
 */
public class EditProfileControl extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("/indexes/edit-personal-info.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession sess = request.getSession();
        UsersAccount ua = (UsersAccount) sess.getAttribute("user");
        if (ua == null) {
            response.sendRedirect(request.getContextPath() + "/LoginControl");
            return;
        }
        int id = ua.getUserId();
        UserDAO dao = new UserDAO();

        Users users = dao.getUserById(id);
        UserPayments payment = dao.getUserPaymentsById(id);

        request.setAttribute("ui", users);
        request.setAttribute("up", payment);
//        
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String telephone = request.getParameter("telephone");
        String address = request.getParameter("address");
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        Users user = new Users(id, firstName, lastName, telephone, address);
        UsersAccount usa = new UsersAccount(id, email, password);

        Object update = request.getParameter("update");
        boolean ok = (update != null);

        if (ok) {
            dao.userUpdate(user);
            dao.userAccountUpdate(usa);
            response.sendRedirect(request.getContextPath() + "/ProfileControl");
            return;
        }
        response.sendRedirect(request.getContextPath() + "/EditProfileControl");

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
