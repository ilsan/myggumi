package com.ilsan.myggumi.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SampleController {

    @RequestMapping("/")
    public String helloIndex() {
        return "index";
    }

    @RequestMapping("/join")
    public String hello() {
        return "user/join";
    }
}
