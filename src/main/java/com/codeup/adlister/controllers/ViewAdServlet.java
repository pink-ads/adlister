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


@WebServlet(name = "controllers.ViewAdServlet", urlPatterns = "/ad")
public class ViewAdServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
         List <Ad> allAds = new ArrayList<>();
         allAds = DaoFactory.getAdsDao().all();
         String clickedParam = request.getParameter("selectedValue");
         String search = request.getParameter("search");
        System.out.println("first sout " + search);
         Ad foundAdByTitle = DaoFactory.getAdsDao().findByTitle(clickedParam);


        for(int i = 0; i < allAds.size(); i++){
            if(foundAdByTitle == null){
                response.sendRedirect("/ads");
            }
            else if (allAds.get(i).getTitle().equals(foundAdByTitle.getTitle())){
                request.setAttribute("title", allAds.get(i).getTitle());
                request.setAttribute("description", allAds.get(i).getDescription());
                Long foundByTitleId = foundAdByTitle.getUserId();
                //get the username using the userId from Ad object
                request.setAttribute("username", DaoFactory.getUsersDao().findByUserId(foundByTitleId).getUsername());
                request.setAttribute("email", DaoFactory.getUsersDao().findByUserId(foundByTitleId).getEmail());
//
// function call that accesses user table and returns username and email
                 request.getRequestDispatcher("/WEB-INF/ads/ad.jsp").forward(request, response);
            }
        }



    }
}



//  List<Ad> adsList = getAdsDao().all();
//  List<Ad> newList = new ArrayList<>();
//    request.setAttribute("ads", newList);
//
//            String search = request.getParameter("search");
//            System.out.println(search);
//            if (request.getParameter("search") == null) {
//            response.sendRedirect("/ads");
//
//            } else {
//            for (Ad ad : adsList) {
//            if (ad.getTitle().contains(search) || ad.getDescription().contains(search)) {
//            newList.add(ad);
//            request.setAttribute("title", getAdsDao().findByTitle(search).getTitle());
//            request.setAttribute("description", DaoFactory.getAdsDao().findByTitle(search).getDescription());
//            }
//            }
//            request.getRequestDispatcher("WEB-INF/ads/searchResult.jsp").forward(request, response);
//            }