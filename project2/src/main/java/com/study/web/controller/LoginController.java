package com.study.web.controller;

import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.study.web.dao.MemberDAO;
import com.study.web.vo.Member;
import com.study.web.service.MemberDAOService;

@Controller
public class LoginController {

	@Autowired
	private MemberDAO memberDAOService;

	// ���� ����ȭ��.
	@RequestMapping("/login")
	public ModelAndView main(Locale locale, Model model) {

		// view ȭ���� main.jsp�� DB�κ��� �о�� �����͸� �����ش�.
		ModelAndView result = new ModelAndView("/login");
		// addObject view�� �Ѿ�� ������
		ArrayList<com.study.web.vo.Member> memberList = memberDAOService.getMembers();
		System.out.println(memberList);
		result.addObject("result", memberList);
		result.setViewName("login");
		return result;
	}
}