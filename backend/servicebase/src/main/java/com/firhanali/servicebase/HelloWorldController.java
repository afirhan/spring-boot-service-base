package com.firhanali.servicebase;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloWorldController {

    @GetMapping("/hello")
    public String helloWorld() {
        return "hello";
    }

    @GetMapping("/hai")
    public String Hai() {
        return "Hai";
    }
}