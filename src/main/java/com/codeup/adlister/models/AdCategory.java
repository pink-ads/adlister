package com.codeup.adlister.models;

public class AdCategory {
  private Long id;
  private Long ad_id;
  private Long cat_id;

  public AdCategory(Long id, Long ad_id, Long cat_id) {
    this.id = id;
    this.ad_id = ad_id;
    this.cat_id = cat_id;
  }

  public AdCategory(Long ad_id, Long cat_id) {
    this.ad_id = ad_id;
    this.cat_id = cat_id;
  }


  public Long getId() {
    return id;
  }

  public void setId(Long id) {
    this.id = id;
  }

  public Long getAd_id() {
    return ad_id;
  }

  public void setAd_id(Long ad_id) {
    this.ad_id = ad_id;
  }

  public Long getCat_id() {
    return cat_id;
  }

  public void setCat_id(Long cat_id) {
    this.cat_id = cat_id;
  }
}
