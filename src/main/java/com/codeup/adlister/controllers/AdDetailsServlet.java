package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Ad;
import com.codeup.adlister.models.Category;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

@WebServlet(name = "controllers.AdDetailsServlet", urlPatterns = "/ad-details")
public class AdDetailsServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Ad> allAds = new ArrayList<>(DaoFactory.getAdsDao().all());
//        List<Category> allCategories = new ArrayList<>(DaoFactory.getCategoriesDao().all());
////        request.setAttribute("categories", allCategories);
        String clickedParam = request.getParameter("selectedValue");
        System.out.println("first sout" + clickedParam);
        Ad foundAdByTitle = DaoFactory.getAdsDao().findByTitle(clickedParam);


        for (int i = 0; i < allAds.size(); i++) {
            if (foundAdByTitle == null) {
                response.sendRedirect("/ads");
            } else if (allAds.get(i).getDescription().equals(foundAdByTitle.getDescription())) {
                request.setAttribute("title", allAds.get(i).getTitle());
                request.setAttribute("description", allAds.get(i).getDescription());
                Long foundByTitleId = foundAdByTitle.getUserId();
                //get the username using the userId from Ad object
                request.setAttribute("username", DaoFactory.getUsersDao().findByUserId(foundByTitleId).getUsername());
                request.setAttribute("email", DaoFactory.getUsersDao().findByUserId(foundByTitleId).getEmail());


            }
        }

        List<Category> allCategories = new ArrayList<>(DaoFactory.getCategoriesDao().all());
//        request.setAttribute("categories", allCategories);

        List<Category> adCategoryList = DaoFactory.getCategoriesDao().getCategories(foundAdByTitle.getId());

//        System.out.println(Arrays.asList(adCategoryList));
        for (Category category: adCategoryList) {
//            System.out.println(category.getCat_id());
            System.out.println(category.getCat_name());
        }
            request.setAttribute("categories", adCategoryList);
        request.getRequestDispatcher("/WEB-INF/ads/ad-details.jsp").forward(request, response);
    }
}

