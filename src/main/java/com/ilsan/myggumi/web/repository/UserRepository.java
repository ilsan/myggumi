package com.ilsan.myggumi.web.repository;

import com.ilsan.myggumi.web.domain.MemberSession;

import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Mapper
@Repository
public interface UserRepository {

    MemberSession findByUserEmail(@Param("username") String username);
    public int joinUser(Map<String, Object> map);
    public int idCheck(String id);

}