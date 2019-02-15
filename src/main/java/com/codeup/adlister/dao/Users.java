package com.codeup.adlister.dao;

import com.codeup.adlister.models.User;

import java.util.List;

public interface Users {
    User findByUsername(String username);
    User findByUserId(Long id);
    Long insert(User user);

    void updateUser(String username, String email, Long id);
}
