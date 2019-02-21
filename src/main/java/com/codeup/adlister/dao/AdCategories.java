package com.codeup.adlister.dao;

import com.codeup.adlister.models.AdCategory;

import java.util.ArrayList;
import java.util.List;

public interface AdCategories {
  List<AdCategory> all();
  Long insert(Long ad_id, List<Long> cat_ids);
}
