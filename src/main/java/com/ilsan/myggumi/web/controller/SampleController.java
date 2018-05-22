package com.ilsan.myggumi.web.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.ilsan.myggumi.web.domain.itemTestVO;
import com.ilsan.myggumi.web.domain.joinVO;
import com.ilsan.myggumi.web.service.MyggumiUserService;

@Controller
public class SampleController {

	@Autowired
	private MyggumiUserService userservice;
	
	@Autowired
	private PasswordEncoder encoder;
	
    @RequestMapping("/test")
    public String helloIndex() {
        return "index.t";
    }
    @RequestMapping("/")
    public ModelAndView mainpage() {
    	ModelAndView mv = new ModelAndView();
    	
    	//임시로 만들어본 VO
    	List<itemTestVO> recommendItemList = new ArrayList<itemTestVO>();
    	List<itemTestVO> newItemList = new ArrayList<itemTestVO>();
    	List<itemTestVO> hotItemList = new ArrayList<itemTestVO>();
    	itemTestVO vo = new itemTestVO();
    	vo.setItemColor("red");	//컬러 이미지 불러와야하는데 여러개면 어떻게 넣을까요?
    	vo.setItemImg("images/mainpage/test_item.png");  //이미지 경로
    	vo.setItemName("아이폰 x");//그냥 양식없음 아무렇게나 넣어도 됩니다
    	vo.setItemPrice("580,000원");// 일단 이렇게 넣을게요
    	vo.setItemSalePrice("500,000원");// 할인 상품일시 넣어주세요 없으면 null
    	vo.setItemState("hot");	//이것도 이미지 불러와야하는데 여러개면 어떻게 넣을까요?.. 
    	recommendItemList.add(vo);
    	recommendItemList.add(vo);
    	recommendItemList.add(vo);
    	
    	for(int i=0;i<21;i++) {
    		newItemList.add(vo);
    	} 
    	
    	for(int i=0;i<21;i++) {
    		hotItemList.add(vo);
    	}
    	// 추천 아이템  only 3개 hot, new 상태의 값 3개 recommendItemList로 넘겨주세요
    	// 신규 아이템 new 상태의 값 가장 최근등록된 값 21개  newItemList로 넘겨주세요
    	// 인기 아이템 hot 상태의 값 (아마 판매량 가장 좋은것?) 21개 hotItemList로 넘겨주세요
    	
/*    	mv.addObject("recommendItemList", recommendItemList);
    	mv.addObject("newItemList", newItemList);
    	mv.addObject("hotItemList", hotItemList);*/
    	mv.addObject("recommendItemList", recommendItemList);
    	mv.addObject("newItemList", newItemList); 
    	mv.addObject("hotItemList", hotItemList);
    	mv.setViewName("mainpage.t");
    	 
    	 
        return mv;
    }

    @RequestMapping("/join")
    public String hello() {
        return "user/join.t";
    }
    
    @RequestMapping("/userJoinOk")
    public ModelAndView userJoinOk(joinVO vo) {
    	ModelAndView mv = new ModelAndView();
    	String pwd =  encoder.encode(vo.getUserPwd());
    	vo.setUserPwd("pwd");
    	userservice.JoinUser(vo);
    	
    	mv.setViewName("redirect:join");
    	return mv;
    } 
    
    @ResponseBody
    @RequestMapping("idcheck")
    public void idcheck(String userId, HttpServletResponse respornse) throws IOException {
    	System.out.println("일단 ㅌ마~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~");
    	int result = userservice.idCheck(userId);
    	PrintWriter out = respornse.getWriter();
    	System.out.println("결과  : ~~~~~~~~~~~~~~~~~ "  + result);
    	out.println(result);
    	
    }
}
