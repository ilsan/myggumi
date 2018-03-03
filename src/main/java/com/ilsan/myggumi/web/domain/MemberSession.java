package com.ilsan.myggumi.web.domain;

import lombok.Data;

@Data
public class MemberSession {

    private String userNo;
    private String password;
    private String email;
    private String name;
    private String address;
    private String role;

}
