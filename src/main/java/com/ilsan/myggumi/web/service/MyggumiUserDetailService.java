package com.ilsan.myggumi.web.service;

import com.ilsan.myggumi.web.domain.MemberSession;
import com.ilsan.myggumi.web.domain.MuggumiUser;
import com.ilsan.myggumi.web.repository.UserRepository;
import lombok.AllArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Slf4j
@Service
public class MyggumiUserDetailService implements UserDetailsService {

    private UserRepository userRepository;

    @Autowired
    public MyggumiUserDetailService(UserRepository userRepository) {
        this.userRepository = userRepository;
    }


    //SimpleGrantedAuthority 클래스는 권한을 저장하기 위한 구조는 단순하게 되어있다.
    // 예를들어 "ROLE_ADMIN"이란 문자열값을 생성자 파라미터로 넣어주는것으로 권한설정이 끝난다.
    private List<GrantedAuthority> getAuthorization(String adminUserInfo) {
        List<GrantedAuthority> aurhorities = new ArrayList<>();
        aurhorities.add(new SimpleGrantedAuthority(adminUserInfo));
        return aurhorities;
    }

    @Override
    public UserDetails loadUserByUsername(String username) {

        MemberSession memberSession = userRepository.findByUserEmail(username);
        if (memberSession == null) {
            throw new UsernameNotFoundException("No user found with userEmail");
        }

        return new MuggumiUser(memberSession.getEmail()
                , memberSession.getPassword()
                , memberSession.getName()
                , this.getAuthorization(memberSession.getRole()));
    }



}