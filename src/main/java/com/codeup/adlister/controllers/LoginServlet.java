package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.User;
import com.codeup.adlister.util.Password;
import org.mindrot.jbcrypt.BCrypt;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "controllers.LoginServlet", urlPatterns = "/login")
public class LoginServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (request.getSession().getAttribute("user") != null) {
            response.sendRedirect("/profile");
            return;
        }
        request.getRequestDispatcher("/WEB-INF/login.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
         request.setAttribute("myUsername", request.getParameter("username"));
        String username = (String) request.getAttribute("myUsername");
        String password = request.getParameter("password");
        username = username.trim();
        User user = DaoFactory.getUsersDao().findByUsername(username);
        if (user == null) {
            //show error message username not exist
            request.setAttribute("incorrectUsername", true);
            request.setAttribute("oldUsername", username);
            request.getAttribute(password);
            request.getRequestDispatcher("/WEB-INF/login.jsp").forward(request, response);
            return;
        }

        boolean validAttempt = Password.check(password, user.getPassword());
        if (validAttempt) {
            request.getSession().setAttribute("user", user);
            response.sendRedirect("/profile");
        } else {
            //show error message for incorrect passwords
            request.setAttribute("incorrectPassword", true);
            request.setAttribute("oldUsername", username);
            request.getRequestDispatcher("/WEB-INF/login.jsp").forward(request, response);
        }
    }
}
