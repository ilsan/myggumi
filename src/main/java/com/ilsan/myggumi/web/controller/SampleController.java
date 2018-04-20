package com.ilsan.myggumi.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.ilsan.myggumi.web.domain.joinVO;
import com.ilsan.myggumi.web.service.MyggumiUserJoinService;

@Controller
public class SampleController {

	@Autowired
	private MyggumiUserJoinService joinservice;
	
    @RequestMapping("/")
    public String helloIndex() {
        return "index.t";
    }

    @RequestMapping("/join")
    public String hello() {
        return "user/join";
    }
    @RequestMapping("/userJoinOk")
    public ModelAndView userJoinOk(joinVO vo) {
    	ModelAndView mv = new ModelAndView();
    	joinservice.JoinUser(vo);
    	
    	mv.setViewName("redirect:join");
    	return mv;
    } 
}
