package com.example.sbs.cuni.dao;

import java.lang.reflect.Member;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

@Mapper
public interface MemberDao {

	void joinMember(Map<String, Object> param);

	Member getMemberByLoginId(@Param("loginId") String loginId);

}
