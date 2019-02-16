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
import java.util.Arrays;
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
        Long currentId = null;

        for (int i = 0; i < allAds.size(); i++) {
            if (currentUser.getId() == allAds.get(i).getUserId()) {
                myAds.add(allAds.get(i));
                currentId = allAds.get(i).getId();
                request.setAttribute("name", currentId);
            }
        }
        request.setAttribute("ads", myAds);
        request.getRequestDispatcher("/WEB-INF/profile.jsp").forward(request, response);
    }


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String[] checkedAds = request.getParameterValues("checked");
        for (String checkedAd : checkedAds) {
            Long oneCheckedAd = Long.parseLong(checkedAd);
            DaoFactory.getAdsDao().delete(oneCheckedAd);
        }
        System.out.println(Arrays.asList(checkedAds));
        response.sendRedirect("/profile");


    }
}

