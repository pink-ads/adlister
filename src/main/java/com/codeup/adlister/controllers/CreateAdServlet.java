package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Ad;
import com.codeup.adlister.models.User;
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

@WebServlet(name = "controllers.CreateAdServlet", urlPatterns = "/ads/create")
public class CreateAdServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (request.getSession().getAttribute("user") == null) {
            response.sendRedirect("/login");
        } else {
            request.setAttribute("categories", DaoFactory.getCategoriesDao().all());

            request.getRequestDispatcher("/WEB-INF/ads/create.jsp").forward(request, response);
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        User user = (User) request.getSession().getAttribute("user");

        request.setAttribute("myTitle", request.getParameter("title"));
        request.setAttribute("myDescription", request.getParameter("description"));
//        System.out.println("get parameter title is " + request.getParameter("title"));


        String myTitle = (String) request.getAttribute("myTitle");
//        System.out.println(myTitle);
        String myDescription = (String) request.getAttribute("myDescription");
//        System.out.println(myDescription);

        if ((myTitle == null || myDescription == null) || (myTitle == "" || myDescription == "")){

            //warning message
            request.setAttribute("missingTitle", true);
            request.setAttribute("oldTitle", myTitle);
            request.setAttribute("oldDescription", myDescription);
            request.getRequestDispatcher("/WEB-INF/ads/create.jsp").forward(request, response);
        } else {

            Ad ad = new Ad(
                    user.getId(),
                    DaoFactory.getAdsDao().upperCasedTitle(myTitle),
                    myDescription
            );
            Long ad_id = DaoFactory.getAdsDao().insert(ad);
//            System.out.println("This is our adId: " + ad_id);

            String[] checkedCats = request.getParameterValues("checked");
//            System.out.println("This is our array checkedCats " + checkedCats);

            if(checkedCats == null || checkedCats.length == 0) {
                request.setAttribute("confirmCheckBoxes", true);
                request.getRequestDispatcher("/WEB-INF/ads/create.jsp").forward(request, response);
            }

            List<Long> categoryList = new ArrayList<>();

            for (String checkedCat : checkedCats) {
                Long oneCheckedCat = Long.parseLong(checkedCat);
                categoryList.add(oneCheckedCat);

            }
//            System.out.println("this is the CategoryList: " + categoryList);

                DaoFactory.getAdCategoriesDao().insert(ad_id,categoryList);
//            System.out.println("array as list: " + Arrays.asList(checkedCats));


            response.sendRedirect("/profile");


        }



    }
}