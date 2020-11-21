package com.study.web.dao;



import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import com.study.web.vo.User;
import com.study.web.vo.loginUser;

public interface LoginDAO {
	
	/**
	 * 입력한 아이디 DB에서 조회 
	 * @param vo : 입력폼에서 넘어온 정보값
	 * @return boolean 일치 | 불일치 
	 */
    public boolean loginCheck(User vo);
    /**
     * 입력한 정보값 DB에서 조회 
     * @param vo : 입력폼에서 넘어온 정보값 
     * @return loginUser 정보 | null 
     */
    public loginUser viewUser(User vo);
    /**
     * 로그인 쎄션 초기화 
     * @param session : 현재 보유한 쎄션 
     */
    public void logout(HttpSession session);
    /**
     * 아이디 찾기를 위한 DB조회 
     * @param vo : 입력폼에서 넘어온 정보값
     * @return String 아이디 | null 
     */
    public String idSearch(User vo);
    /**
     * 비밀번호 찾기를 위한 DB조회
     * @param vo :입력폼에서 넘어온 정보값
     * @return String 패스워드 | null
     */
    public String passwordSearch(User vo);
    
}


