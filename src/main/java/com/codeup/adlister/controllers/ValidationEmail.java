package com.codeup.adlister.controllers;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class ValidationEmail {
    //validating the format of an email
    public static boolean isValidEmail(String enteredEmail) {
        String EMAIL_REGIX = "^[\\\\w!#$%&’*+/=?`{|}~^-]+(?:\\\\.[\\\\w!#$%&’*+/=?`{|}~^-]+)*@(?:[a-zA-Z0-9-]+\\\\.)+[a-zA-Z]{2,6}$";
        Pattern pattern = Pattern.compile(EMAIL_REGIX);
        Matcher matcher = pattern.matcher(enteredEmail);
        return ((!enteredEmail.isEmpty()) && (enteredEmail != null) && (matcher.matches()));
    }

}
