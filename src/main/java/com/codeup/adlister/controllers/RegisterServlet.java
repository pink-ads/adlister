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
        request.setAttribute("myUsername", request.getParameter("username"));
        request.setAttribute("myEmail", request.getParameter("email"));
        String password = request.getParameter("password");
        String passwordConfirmation = request.getParameter("confirm_password");
        String hashedPass = Password.hash(password);
        String myUsername = (String) request.getAttribute("myUsername");
        String myEmail = (String) request.getAttribute("myEmail");

        myUsername = myUsername.trim();
        myEmail = myEmail.trim();

        // validate input
        boolean mismatchedPasswords = !password.equals(passwordConfirmation);
        //calling the method that validates the email
        boolean validateEmail = (ValidationEmail.isValidEmail(myEmail));
        boolean passwordLength = !(password.length() >= 8);

        //this displays an error message when validating if the inputs are the right format or empty
        if (myUsername == null || myEmail == null || myUsername == "" || myEmail == "" || password.isEmpty() || passwordConfirmation.isEmpty()) {
            request.setAttribute("missingInformation", true);
            request.setAttribute("oldUsername", myUsername);
            request.setAttribute("oldEmail", myEmail);
            request.getRequestDispatcher("/WEB-INF/register.jsp").forward(request, response);
            return;
        }
        if(DaoFactory.getUsersDao().findByUsername(myUsername) != null) {
            request.setAttribute("existingUser", true);
            request.getRequestDispatcher("WEB-INF/login.jsp").forward(request, response);
        }
        else if(passwordLength) {
            request.setAttribute("passwordLength", true);
            request.setAttribute("oldUsername", myUsername);
            request.setAttribute("oldEmail", myEmail);
            request.getRequestDispatcher("WEB-INF/register.jsp").forward(request, response);
        } else if (mismatchedPasswords) {
            request.setAttribute("mismatchedPasswords", true);
            try {
                request.setAttribute("oldUsername", myUsername);
                request.setAttribute("oldEmail", myEmail);
                request.getRequestDispatcher("/WEB-INF/register.jsp").forward(request, response);
            } catch (ServletException e) {
                e.printStackTrace();
            }

        } else if (validateEmail) {
            request.setAttribute("validateEmail", true);
            request.setAttribute("oldUsername", myUsername);
            request.setAttribute("oldEmail", myEmail);
            request.getRequestDispatcher("/WEB-INF/register.jsp").forward(request, response);

        }else {
            // create and save a new user
            User user = new User(myUsername, myEmail, hashedPass);
            DaoFactory.getUsersDao().insert(user);
            response.sendRedirect("/login");
        }
    }
}
