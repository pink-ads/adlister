package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.User;
import com.codeup.adlister.util.Password;
import org.mindrot.jbcrypt.BCrypt;
//import sun.jvm.hotspot.debugger.AddressException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.ArrayList;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

@WebServlet(name = "controllers.RegisterServlet", urlPatterns = "/register")
public class RegisterServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/register.jsp").forward(request, response);
        request.getSession().getAttribute("username");
        request.getSession().getAttribute("email");
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String passwordConfirmation = request.getParameter("confirm_password");
        String hashedPass = Password.hash(password);
        System.out.println(email);

        // validate input
        boolean inputHasErrors = username.isEmpty()
//                || email.isEmpty()
                || password.isEmpty();
        boolean mismatchedPasswords = !password.equals(passwordConfirmation);
        //calling the method that validates the email
        boolean validateEmail = !(ValidationEmail.isValidEmail(email));
        boolean passwordLength = !(password.length() >= 8);
        System.out.println(passwordLength);

        //this displays an error message when validating if the inputs are the right format or empty
        if (inputHasErrors) {
            //this connects to the register.jsp by being true and it displays the bootstrap error message
            request.setAttribute("missingInformation", true);
            request.getRequestDispatcher("/WEB-INF/register.jsp").forward(request, response);
            return;

        }else if(passwordLength) {
            request.setAttribute("passwordLength", true);
            request.getRequestDispatcher("WEB-INF/register.jsp").forward(request, response);
        } else if (mismatchedPasswords) {
            request.setAttribute("mismatchedPasswords", true);
            try {
                request.getRequestDispatcher("/WEB-INF/register.jsp").forward(request, response);
            } catch (ServletException e) {
                e.printStackTrace();
            }
            return;

        } else if (validateEmail) {
            request.setAttribute("validateEmail", true);
            request.getRequestDispatcher("/WEB-INF/register.jsp").forward(request, response);

        }else {
            // create and save a new user
            User user = new User(username, email, hashedPass);
            DaoFactory.getUsersDao().insert(user);
            response.sendRedirect("/login");
        }
    }
}
