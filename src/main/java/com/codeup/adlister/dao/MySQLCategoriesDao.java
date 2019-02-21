package com.codeup.adlister.dao;

import com.codeup.adlister.models.Ad;
import com.codeup.adlister.models.Category;
import com.mysql.cj.jdbc.Driver;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class MySQLCategoriesDao implements Categories{
  private Connection connection = null;



  public MySQLCategoriesDao(Config config) {
    try {
      DriverManager.registerDriver(new Driver());
      connection = DriverManager.getConnection(
              config.getUrl(),
              config.getUser(),
              config.getPassword()
      );
    } catch (SQLException e) {
      throw new RuntimeException("Error connecting to the database!", e);
    }
  }

  public List<Category> all() {
    PreparedStatement stmt = null;
    try {
      stmt = connection.prepareStatement("SELECT * FROM categories");
      ResultSet rs = stmt.executeQuery();
      return createCategoriesFromResults(rs);
    } catch (SQLException e) {
      throw new RuntimeException("Error retrieving all categories.", e);
    }
  }

  public Category findById(Integer number) {
    PreparedStatement stmt = null;
    Category category = null;
    try {
      String sql = "SELECT * FROM categories where cat_id = ?";
      stmt = connection.prepareStatement(sql);
      stmt.setLong(1, number);
      ResultSet rs = stmt.executeQuery();
      rs.next();
      return extractCategory(rs);
    } catch (SQLException e) {
      throw new RuntimeException("Error retrieving category.", e);
    }
  }

  public List<Category> getCategories(Long ad_id){
    PreparedStatement stmt = null;

    Category category = null;
    try {
      String sql = "SELECT * FROM categories WHERE cat_id IN (SELECT cat_id FROM ad_category WHERE ad_id = ?)";
      stmt = connection.prepareStatement(sql);
      stmt.setLong(1, ad_id);
      ResultSet rs = stmt.executeQuery();
      rs.next();
      return createCategoriesFromResults(rs);
    } catch (SQLException e) {
      throw new RuntimeException("Error retrieving category.", e);
    }

//    SELECT * FROM categories
//    WHERE cat_id IN (
//            SELECT cat_id
//            FROM ad_category
//            WHERE ad_id = 17
//    )
  }


  private Category extractCategory(ResultSet rs) throws SQLException {
    return new Category(
            rs.getLong("cat_id"),
            rs.getString("cat_name")
    );
  }

  private List<Category> createCategoriesFromResults(ResultSet rs) throws SQLException {
    List<Category> categories = new ArrayList<>();
    while (rs.next()) {
      categories.add(extractCategory(rs));
    }
    return categories;
  }
}
