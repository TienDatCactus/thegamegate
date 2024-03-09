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
        try {
            String firstName = request.getParameter("firstname");
            String lastName = request.getParameter("lastname");
            int telephone = Integer.parseInt(request.getParameter("telephone"));
            String address = request.getParameter("address");

            String email = request.getParameter("email");
            String password = request.getParameter("password");
            String verifyPassword = request.getParameter("verifyPassword");

            if (!password.equals(verifyPassword)) {
                response.sendRedirect(request.getContextPath() + "/SignUpControl");
                return;
            }
            SignUpDAO signUp = new SignUpDAO();
            boolean success = signUp.checkSignUp(firstName, lastName, telephone, address, email, password);

            if (success) {
                response.sendRedirect(request.getContextPath() + "/LoginControl");
            } else {
                response.sendRedirect(request.getContextPath() + "/SignUpControl");
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

}
