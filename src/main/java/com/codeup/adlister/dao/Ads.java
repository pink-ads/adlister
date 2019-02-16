package com.codeup.adlister.dao;

import com.codeup.adlister.models.Ad;

import java.util.List;

public interface Ads {
    // get a list of all the ads
    List<Ad> all();
    // insert a new ad and return the new ad's id
    Long insert(Ad ad);
    //find ad by title
     Ad findByTitle(String title);
     //update edited ad in the database
    void update(String title, String description, Long userId);
    //delete ads in the database
    void delete(Long id);
}
