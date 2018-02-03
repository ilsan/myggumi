package com.ilsan.myggumi.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class SampleController {

    @RequestMapping("/")
    public String helloIndex() {
        return "index";
    }

    @RequestMapping(value="/join", method=RequestMethod.GET)
    public String join() {
        return "user/join";
    }
    
    @RequestMapping(value="/main",method=RequestMethod.GET)
    public String main() {
    	
    	return "layout.index";
    }
}
