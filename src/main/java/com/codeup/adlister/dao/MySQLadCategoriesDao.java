package com.codeup.adlister.dao;

import com.codeup.adlister.models.Ad;
import com.codeup.adlister.models.AdCategory;
import com.mysql.cj.jdbc.Driver;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class MySQLadCategoriesDao implements AdCategories {
  private Connection connection = null;

  public MySQLadCategoriesDao(Config config) {

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

  @Override
  public List<AdCategory> all() {
    PreparedStatement stmt = null;
    try {
      stmt = connection.prepareStatement("SELECT * FROM ad_category");
      ResultSet rs = stmt.executeQuery();
      return createAdCatsFromResults(rs);
    } catch (SQLException e) {
      throw new RuntimeException("Error retrieving all ad category info.", e);
    }
  }

  @Override
  public Long insert(Long ad_id, List<Long> cat_ids){
    try {
      ResultSet rs = null;
      for (Long id:cat_ids) {
      String insertQuery = "INSERT INTO ad_category(ad_id, cat_id) VALUES (? , ?)";
      PreparedStatement stmt = connection.prepareStatement(insertQuery, Statement.RETURN_GENERATED_KEYS);
      stmt.setLong(1, ad_id);
      stmt.setLong(2, id);
      stmt.executeUpdate();
        rs = stmt.getGeneratedKeys();
        rs.next();
      }
      return rs.getLong(1);

    } catch (SQLException e) {
      throw new RuntimeException("Error inserting into ad_category table", e);
    }
  }


  private List<AdCategory> createAdCatsFromResults(ResultSet rs) throws SQLException {
    List<AdCategory> categoryInfo = new ArrayList<>();
    while (rs.next()) {
      categoryInfo.add(extractInfo(rs));
    }
    return categoryInfo;
  }

  private AdCategory extractInfo(ResultSet rs) throws SQLException {
    return new AdCategory(
            rs.getLong("ad_id"),
            rs.getLong("cat_id")
    );
  }

}
