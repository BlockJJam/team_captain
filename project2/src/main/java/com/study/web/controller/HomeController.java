package com.study.web.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.study.web.service.BbsDAOService;
import com.study.web.vo.DeptVO;
import com.study.web.vo.User;
import com.study.web.vo.loginUser;

@Controller
public class HomeController {
	@Autowired
	private BbsDAOService dao;

	@RequestMapping(value = "home")
	   public ModelAndView index(HttpServletRequest request, HttpServletResponse response,User vo, HttpSession session) {
	      ModelAndView mv = new ModelAndView("home");
	      loginUser loginInfo = (loginUser)session.getAttribute("loginInfo");
	      mv.addObject("loginInfo",loginInfo);
	      List<DeptVO> deptlist = dao.getdeptList();
	      mv.addObject("list1", deptlist);
	      return mv;
	   }
}
