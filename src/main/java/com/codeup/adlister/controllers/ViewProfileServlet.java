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
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "controllers.ViewProfileServlet", urlPatterns = "/profile")
public class ViewProfileServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        User currentUser = (User) (request.getSession().getAttribute("user"));
        if (request.getSession().getAttribute("user") == null) {
            response.sendRedirect("/login");
            return;
        }
        List<Ad> allAds = new ArrayList<>(DaoFactory.getAdsDao().all());
        List<Ad> myAds = new ArrayList<>();
        request.setAttribute("ads", myAds);

        for(int i = 0; i < allAds.size(); i++){
            if( currentUser.getId() == allAds.get(i).getUserId()){
            //add allAds.get(i) to myAds array
                myAds.add(allAds.get(i));
            }
                request.setAttribute("title", allAds.get(i).getTitle());
                request.setAttribute("description", allAds.get(i).getDescription());
        }
                request.getRequestDispatcher("/WEB-INF/profile.jsp").forward(request, response);
    }
}
