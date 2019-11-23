package com.test.campsite.controller;

import com.test.campsite.route.Route;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping(value = Route.ROUTE_BASE, produces = "application/json")
public class ExternalEntryPoint {
    @PostMapping(value = Route.MAKE_RESERVATION)
    public String makeReservationController(@RequestBody String body, @RequestParam("campsiteId") String campsiteId) {
        return "";
    }
}
