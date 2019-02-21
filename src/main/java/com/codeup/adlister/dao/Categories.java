package com.codeup.adlister.dao;

import com.codeup.adlister.models.Category;

import java.util.List;

public interface Categories {
  List<Category> all();

  Category findById(Integer number);
  public List<Category> getCategories(Long ad_id);
}
