package com.study.web.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.study.web.service.BbsDAOService;
import com.study.web.service.UserDAOService;
import com.study.web.vo.DeptVO;
import com.study.web.vo.User;
import com.study.web.vo.loginUser;

@Controller
@RequestMapping("/")
public class LoginController {
	@Inject
	UserDAOService userService;
	@Autowired
	private BbsDAOService dao;
	
    // 02. 로그인 1차 
 	@ResponseBody
 	@RequestMapping(value = "loginCheck", method = RequestMethod.POST)
 	public Object loginCheck(User vo, HttpSession session) {
 		boolean userResult = userService.loginCheck(vo, session);
 		Map<String, Object> result_pass = new HashMap<>();
 		int result = 0;
 		if (userResult == false) {
 			//로그인 실패 
 			result = 1;
 		}
 		else {
 			loginUser loginInfo = (loginUser)session.getAttribute("loginInfo");
 	 		session.setAttribute("loginInfo", loginInfo);
 	 		result_pass.put("loginInfo", loginInfo);
 			// User 시도 횟수 확인 
 			if (loginInfo.getUser_atamp() < 5) {
 				result = 3;
 			}
 			else {
 				result = 2;
 			}	
 		}
 		result_pass.put("result", result);
 		return result_pass;
 	}
    
	// 03. 로그아웃 처리
	@RequestMapping("logout")
	public String logout(HttpSession session) {
		userService.logout(session);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("home");
		return "redirect:/home";
	}
	
	// 04. 찾기
	@RequestMapping("search")
    public String search(){
        return "search";    
    }
    
	
	// 04-1. ID 찾기 
 	@ResponseBody
	@RequestMapping("idSearch")
	public Object idSearch(User vo, HttpSession session) {
		System.out.println(vo.toString());
 		Map<String, Object> result = new HashMap<>();
 		result.put("result",userService.idSearch(vo));
		return result;
	}
 	
 	
 // 04-2. PASSWORD 찾기 
  	@ResponseBody
 	@RequestMapping("passwordSearch")
 	public Object passwordSearch(User vo, HttpSession session) {
 		System.out.println(vo.toString());
  		Map<String, Object> result = new HashMap<>();
  		result.put("result",userService.passwordSearch(vo));
 		return result;
 	}
 	
 	
}
