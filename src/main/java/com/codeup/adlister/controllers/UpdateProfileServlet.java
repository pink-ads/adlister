package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.User;
import com.codeup.adlister.util.Password;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/updateProfile")
public class UpdateProfileServlet extends HttpServlet {
  @Override
  protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    //redirects the logged in user to the update profile page
    request.getRequestDispatcher("WEB-INF/update-profile.jsp").forward(request, response);

    User user = (User) request.getSession().getAttribute("user");
   request.setAttribute("username", user.getUsername());
   request.setAttribute("email", user.getEmail());
   request.setAttribute("password", user.getPassword());

   String action = request.getParameter("");

  }

  @Override
  protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

//    String action = request.getParameter("submit");

//    if (action.equals("cancel")) {
//      response.sendRedirect("/profile");
//    } else
//      if (action.equals("submit")) {
      //assigns the logged in user to a user object
      User user = (User) request.getSession().getAttribute("user");
      //finds the user in the database
      DaoFactory.getUsersDao().findByUserId(user.getId());

      String newUsername = request.getParameter("new-username");
      String newEmail= request.getParameter("new-email");
      Long userId = user.getId();
        System.out.println(newUsername);
        System.out.println(newEmail);
        System.out.println(userId);
        System.out.println(user);
//      String newPass = request.getParameter("new-password");

//      String newPasswordHashed = Password.hash(newPass);


      DaoFactory.getUsersDao().updateUser(newUsername, newEmail, userId);
      response.sendRedirect("/profile");
    }


  }

