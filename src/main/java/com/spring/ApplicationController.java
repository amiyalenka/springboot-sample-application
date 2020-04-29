package com.spring;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication
@RestController
public class ApplicationController {

    public static void main(String[] args) {
        SpringApplication.run(ApplicationController.class, args);
    }

    @GetMapping(value = "/test")
    public String getAllAirlineProcessJobsByJobType() {
        return "first cloud run app";
    }

}
