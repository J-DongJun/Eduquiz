package com.spring.project.member.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.spring.project.member.vo.MemberVO;

@Controller
public interface MemberController {
	
	public ModelAndView signUp(HttpServletRequest request, HttpServletResponse response)throws Exception;
	// 회원가입 페이지로 이동
	public ModelAndView login(HttpServletRequest request, HttpServletResponse response)throws Exception;
	// 로그인 페이지로 이동
	public ModelAndView forgetPw(HttpServletRequest request, HttpServletResponse response)throws Exception;
	// 비밀번호 찾기 페이지로 이동
	public ModelAndView addmember(HttpServletRequest request, HttpServletResponse response) throws Exception;
	// 회원가입 구현
	public ModelAndView loginProc(HttpServletRequest request, HttpServletResponse response) throws Exception;
	// 로그인 구현
	public ModelAndView logoutProc(HttpServletRequest request, HttpServletResponse response) throws Exception;
	// 로그아웃 구현
	public int idCheck(@RequestParam("idcheck") String id) throws Exception;
	// 아이디 중복체크 구현
	public ModelAndView userpage(HttpServletRequest request, HttpServletResponse response) throws Exception;
	// 마이페이지로 이동
	public ModelAndView updatePw(HttpServletRequest request, HttpServletResponse response) throws Exception;
	// 비밀번호 수정(마이페이지)
	public ModelAndView deleteProc(HttpServletRequest request, HttpServletResponse response) throws Exception;
}
