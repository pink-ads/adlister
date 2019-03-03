package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Ad;
import com.codeup.adlister.models.Category;
import com.codeup.adlister.models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import static com.codeup.adlister.dao.DaoFactory.getAdsDao;
import static com.codeup.adlister.dao.DaoFactory.getCategoriesDao;


@WebServlet(urlPatterns = "/results")
public class AdSearchServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/ads/searchResults.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      //get all the ads in db and makes a new list with the search term
        List<Ad> adsList = getAdsDao().all();
        List<Ad> newList = new ArrayList<>();
        String search = request.getParameter("search");

//sets attribute for navbar to show or disable buttons
        User currentUser = (User) (request.getSession().getAttribute("user"));
        System.out.println(currentUser);
        if (currentUser != null) {
            request.setAttribute("LoggedIn", true);
        } else {
            request.setAttribute("notLoggedIn", true);
        }
        if (request.getParameter("search") == null || request.getParameter("search") == "") {
//start of searching functions
        if (request.getParameter("search") == null) {
            response.sendRedirect("/ads");
        } else {
//          System.out.println(DaoFactory.getAdsDao().findAdsByCategory(search));
          List<Ad> adsByCategory = DaoFactory.getAdsDao().findAdsByCategory(search);
          for(Ad ad: adsByCategory){
            newList.add(ad);
          }
          // search thru ad title and description
            for (Ad ad : adsList) {
                if (ad.getTitle().toLowerCase().contains(search.toLowerCase()) || ad.getDescription().toLowerCase().contains(search.toLowerCase())) {
                    newList.add(ad);
                }
              }
                    request.setAttribute("ads", newList);
                }
            request.getRequestDispatcher("WEB-INF/ads/searchResult.jsp").forward(request, response);
        }
    }
}
