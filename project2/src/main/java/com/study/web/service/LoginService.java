package com.study.web.service;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.study.web.mapper.MemberMapper;
import com.study.web.vo.Member;

@Repository
public class LoginService {

	@Autowired
	private SqlSession sqlSession;

	public ArrayList<Member> getMembers() {
		ArrayList<Member> result = new ArrayList<Member>();

		MemberMapper memberMapper = sqlSession.getMapper(MemberMapper.class);
		result = memberMapper.getMembers();

		return result;
	}
}