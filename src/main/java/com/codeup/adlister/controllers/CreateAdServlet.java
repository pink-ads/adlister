package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Ad;
import com.codeup.adlister.models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "controllers.CreateAdServlet", urlPatterns = "/ads/create")
public class CreateAdServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (request.getSession().getAttribute("user") == null) {
            response.sendRedirect("/login");
        } else {
            request.getRequestDispatcher("/WEB-INF/ads/create.jsp").forward(request, response);
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        User user = (User) request.getSession().getAttribute("user");
        String title = request.getParameter("title");
        String description = request.getParameter("description");
        Ad ad = new Ad(
                user.getId(),
                title,
                description
        );
        if (title.equals("") || description.equals("")) {
            //warning message
            request.setAttribute("missingTitle", true);
            request.getRequestDispatcher("/WEB-INF/ads/create.jsp").forward(request, response);

        } else {
            DaoFactory.getAdsDao().insert(ad);
            response.sendRedirect("/ads");

            System.out.println(user.getId());
            System.out.println(request.getParameter(title));
            System.out.println(request.getParameter(description));
        }
    }
}
