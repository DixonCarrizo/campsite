package com.test.campsite.domain;

import com.fasterxml.jackson.annotation.JsonProperty;

public class UserData {
    @JsonProperty("user_name")
    private String userName;
    @JsonProperty("user_phone")
    private String phone;
}
