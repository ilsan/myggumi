package com.ilsan.myggumi.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/user")
public class SampleController {

    @RequestMapping("/login")
    public String helloIndex() {
        return "index";
    }

    @RequestMapping(value="/join", method=RequestMethod.GET)
    public String join() {
        return "user/join.t";
    }
    

}
