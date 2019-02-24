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
import java.util.HashMap;
import java.util.List;


@WebServlet(name = "controllers.EditAdServlet", urlPatterns = "/edit-ad")
public class EditAdServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Ad> allAds = new ArrayList<>(DaoFactory.getAdsDao().all());
        String clickedParam = request.getParameter("selectedValue");
        request.getSession().setAttribute("selectedAd", clickedParam);
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
//                request.setAttribute("categories", DaoFactory.getCategoriesDao().all());
                List<Category> categories= DaoFactory.getCategoriesDao().all();
                List<Category> adCategories = DaoFactory.getCategoriesDao().getCategories(foundAdByTitle.getId());
                for(Category catID: adCategories){
                    System.out.println(catID.getCat_id());
                }

                HashMap<Category, Boolean> filterCats = new HashMap<>();
                for (Category cat:categories)
                {
//                    adCategories.contains(cat);
                    for(Category adcat: adCategories){
                    filterCats.put(cat, cat.getCat_id() == adcat.getCat_id());

                    }
                }

                for (Category name: filterCats.keySet()){

                    Long key =name.getCat_id();
                    String value = filterCats.get(name).toString();
                    System.out.println(key + " " + value);


                }

             request.setAttribute("categories", filterCats);

                System.out.println(DaoFactory.getCategoriesDao().all());
                request.getRequestDispatcher("/WEB-INF/ads/edit-ad.jsp").forward(request, response);
            }
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
                request.setAttribute("oldTitle", myTitle);
                request.setAttribute("oldDescription", myDescription);
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



