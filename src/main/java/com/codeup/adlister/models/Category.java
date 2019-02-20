package com.codeup.adlister.models;

public class Category {
//  private long id;
  private long cat_id;
  private String cat_name;

  public Category(long cat_id, String cat_name) {
    this.cat_id = cat_id;
    this.cat_name = cat_name;
  }
  public Category(String cat_name) {
    this.cat_name = cat_name;
  }

  public long getCat_id() {
    return cat_id;
  }

  public String getCat_name() {
    return cat_name;
  }

  public void setCat_id(long cat_id) {
    this.cat_id = cat_id;
  }

  public void setCat_name(String cat_name) {
    this.cat_name = cat_name;
  }
}
