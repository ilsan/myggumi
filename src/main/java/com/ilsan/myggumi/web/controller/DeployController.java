package com.ilsan.myggumi.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@RequestMapping("/deploy.do")
@Controller
public class DeployController {

    @RequestMapping(value = "")
    public @ResponseBody
    String ok(){
        return "OK";
    }
}