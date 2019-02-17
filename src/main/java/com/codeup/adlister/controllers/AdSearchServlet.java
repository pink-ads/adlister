package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Ad;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import static com.codeup.adlister.dao.DaoFactory.getAdsDao;


@WebServlet(urlPatterns = "/results")
public class AdSearchServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/ads/searchResults.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Ad> adsList = getAdsDao().all();
        List<Ad> newList = new ArrayList<>();
        String search = request.getParameter("search");

        if (request.getParameter("search") == null) {
            response.sendRedirect("/ads");
        } else {
            for (Ad ad : adsList) {
                if (ad.getTitle().toLowerCase().contains(search.toLowerCase()) || ad.getDescription().toLowerCase().contains(search.toLowerCase())) {
                    newList.add(ad);
                    request.setAttribute("ads", newList);
                }
            }
            request.getRequestDispatcher("WEB-INF/ads/searchResult.jsp").forward(request, response);
        }
    }
}
