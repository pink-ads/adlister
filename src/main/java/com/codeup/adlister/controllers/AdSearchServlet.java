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


@WebServlet(urlPatterns = "/ads/searchResult")
public class AdSearchServlet extends HttpServlet {

  @Override
  protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    if(request.getParameter("search")== null){
      response.sendRedirect("/ads");
    } else {
      request.getRequestDispatcher("WEB-INF/ads/searchResult.jsp").forward(request, response);
    }
  } //end of doGet

  @Override
  protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    String search = request.getParameter("search");
    List<Ad> adsList = getAdsDao().all();

    for(Ad ad: adsList){
      List<Ad> newList = new ArrayList<>();
      if(ad.getTitle().contains(search) || ad.getDescription().contains(search)){
        newList.add(ad);
      }
    }

  } //end of doPost
}
