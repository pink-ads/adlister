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


@WebServlet(name = "controllers.ViewAdServlet", urlPatterns = "/ad")
public class ViewAdServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
         List <Ad> allAds = new ArrayList<>();
         allAds = DaoFactory.getAdsDao().all();
         String clickedParam = request.getParameter("selectedValue");
        System.out.println("first sout" + clickedParam);
         Ad foundAdByTitle = DaoFactory.getAdsDao().findByTitle(clickedParam);

        for(int i = 0; i < allAds.size(); i++){
            if(foundAdByTitle == null){
                response.sendRedirect("/ads");
            }
            else if (allAds.get(i).getTitle().equals(foundAdByTitle.getTitle())){
                request.setAttribute("title", allAds.get(i).getTitle());
                request.setAttribute("description", allAds.get(i).getDescription());
//
// function call that accesses user table and returns username and email
                 request.getRequestDispatcher("/WEB-INF/ads/ad.jsp").forward(request, response);
            }
        }



    }
}



//Access database
//pass information from database to ad.jsp
//Display ad and user information in jsp