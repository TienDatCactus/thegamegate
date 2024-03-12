/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import java.io.IOException;
import DAO.*;
import Models.*;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.PrintWriter;
import java.util.List;

@WebServlet(name = "SignUpControl", urlPatterns = {"/SignUpControl"})
public class SignUpControl extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("/indexes/sign-up.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        SignUpDAO signUp = new SignUpDAO();
        UserDAO dao = new UserDAO();
        List<Users> user = dao.getUserList();
        int id = user.size() + 1;

        String firstName = request.getParameter("firstname");
        String lastName = request.getParameter("lastname");
        String telephone = (request.getParameter("telephone"));
        String address = request.getParameter("address");

        String email = request.getParameter("email");
        String password = request.getParameter("password");
        boolean success = signUp.addUser(id, firstName, lastName, telephone, address);

        PrintWriter out = response.getWriter();
        out.print(success);
        if (success) {
            signUp.checkSignUpAccount(id, email, password);
            response.sendRedirect(request.getContextPath() + "/LoginControl");
        } else {
            response.sendRedirect(request.getContextPath() + "/SignUpControl");
        }

    }

}
