package com.test.campsite.domain;

import com.fasterxml.jackson.annotation.JsonProperty;

public class CampsiteReservation {
    @JsonProperty("reservation_days")
    private Integer days;

    @JsonProperty("user_data")
    private UserData userData;
}
