package com.ilsan.myggumi.web.service;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ilsan.myggumi.web.domain.joinVO;
import com.ilsan.myggumi.web.repository.UserRepository;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class MyggumiUserJoinService {
	
	@Autowired
	private UserRepository userRepository;
	
	public int JoinUser(joinVO vo){
		Map<String, Object> map = new HashMap<String,Object>();
		map.put("id",vo.getUserId());
		map.put("password", vo.getUserPwd());
		map.put("name", vo.getUserName());
		map.put("zipCode", vo.getUserZipCode());
		map.put("address1", vo.getUserAddr1());
		map.put("address2", vo.getUserAddr1());
		String mobile = (vo.getUserMobile1()+vo.getUserMobile2()+vo.getUserMobile3()).trim();
		map.put("mobileNumber", mobile);
		String email = (vo.getUserEmail1()+"@"+vo.getUserEmail2()).trim();
		map.put("email", email);
		map.put("role", "member");
		return userRepository.joinUser(map); 
	}
	
	

}
