package com.ilsan.myggumi.userTest;

import com.ilsan.myggumi.web.domain.MemberSession;
import com.ilsan.myggumi.web.repository.UserRepository;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import static org.hamcrest.MatcherAssert.assertThat;
import static org.hamcrest.core.Is.is;

@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration
public class UserRepositoryTest {

    @Autowired
    UserRepository userRepository;

    @Test
    public void readUserTest() {
        MemberSession user = userRepository.findByUserEmail("ljh@naver.com");
        assertThat("ljh@naver.com", is(user.getEmail()));


    }

}
