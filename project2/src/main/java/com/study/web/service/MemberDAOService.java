package com.study.web.service;


import java.util.ArrayList;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.study.web.dao.MemberDAO;
import com.study.web.mapper.MemberMapper;
import com.study.web.vo.Member;


@Repository
public class MemberDAOService implements MemberDAO {


   @Autowired
   private SqlSession sqlSession;
   
   @Override
   public ArrayList<Member> getMembers() {
       ArrayList<Member> result = new ArrayList<Member>();
 
       MemberMapper memberMapper = sqlSession.getMapper(MemberMapper.class);
       result = memberMapper.getMembers();
       
       return result;
   }

@Override
public ArrayList<Member> getLoginMember() {
	// TODO Auto-generated method stub
	return null;
}
  

}