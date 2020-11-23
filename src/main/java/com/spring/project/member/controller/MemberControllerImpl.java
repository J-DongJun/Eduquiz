package com.spring.project.member.controller;

import java.sql.Date;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.util.WebUtils;

import com.mysql.jdbc.interceptors.SessionAssociationInterceptor;
import com.spring.project.member.dao.MemberDao;
import com.spring.project.member.service.MemberService;
import com.spring.project.member.vo.MemberVO;

@Controller("memberController")
public class MemberControllerImpl implements MemberController {

	@Autowired
	MemberVO memberVO;
	@Autowired
	MemberService memberService;
	@Autowired
	MemberDao memberDao;

	@Override
	@RequestMapping(value = "register.do", method = RequestMethod.GET)
	public ModelAndView signUp(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		ModelAndView mav = new ModelAndView();
		mav.setViewName("main/register");
		return mav;
	}

	@Override
	@RequestMapping(value = "login.do", method = RequestMethod.GET)
	public ModelAndView login(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		ModelAndView mav = new ModelAndView();
		mav.setViewName("main/login");
		return mav;
	}

	@Override
	@RequestMapping(value = "forget-password.do", method = { RequestMethod.POST})
	public ModelAndView forgetPw(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		ModelAndView mav = new ModelAndView();
		mav.setViewName("main/forget-password");
		return mav;
	}

	@Override

	@RequestMapping(value = "addmember.do", method = { RequestMethod.POST, RequestMethod.GET})
	public ModelAndView addmember(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		MemberVO addmemberVO = new MemberVO();
		addmemberVO.setId(request.getParameter("RgId"));
		addmemberVO.setPw(request.getParameter("RgPw"));
		addmemberVO.setName(request.getParameter("RgName"));
		addmemberVO.setEmail(request.getParameter("RgEmail"));

		memberService.addMember(addmemberVO);

		ModelAndView mav = new ModelAndView();
		mav.addObject("errorMsg","회원가입 되었습니다.");
		mav.addObject("destUrl","login.do");
		mav.setViewName("main/alert");
		return mav;
	}

	@Override
	@RequestMapping(value = "loginProc.do", method = { RequestMethod.POST, RequestMethod.GET})
	public ModelAndView loginProc(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		ModelAndView mav = new ModelAndView();
		String id = request.getParameter("LgId");
		String pw = request.getParameter("LgPw");
		
		memberVO = memberService.loginProc(id, pw);
		
		if (memberVO != null) {
			HttpSession session = request.getSession();
			String[] rememberme = request.getParameterValues("rememberMe");
			session.setAttribute("member", memberVO);
			session.setAttribute("LgId", memberVO.getId());
			session.setAttribute("isLogOn", true);
			System.out.println("로그인완료");
			mav.setViewName("main/index");
			
			if (rememberme!=null) {
				Cookie cookie = new Cookie("loginCookie", memberVO.getId());
				System.out.println("쿠키굽기성공");
				cookie.setPath("/");
				int amount = 60 * 60 * 24 * 3; //3days
				cookie.setMaxAge(amount);
				response.addCookie(cookie);
				Date sessionLimit = new Date(System.currentTimeMillis() + (1000 * amount));

				memberService.keepLogin(memberVO.getId(), session.getId(), sessionLimit);
			}
			System.out.println("로그인완료");
			mav.setViewName("main/index");
			System.out.println(session.getAttribute("member"));
		} else {
			mav.addObject("errorMsg","로그인 실패");
			mav.addObject("destUrl","login.do");
			mav.setViewName("main/alert");
		}
		return mav;
	}

	@Override
	@RequestMapping(value = "logout.do", method = { RequestMethod.POST, RequestMethod.GET})
	public ModelAndView logoutProc(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub`	
		ModelAndView mav = new ModelAndView();
		HttpSession session = request.getSession();
	    Cookie cookie = WebUtils.getCookie(request, "loginCookie");
	    if(cookie!= null) { 
	    	cookie.setPath("/"); 
	    	cookie.setMaxAge(0);
	    	response.addCookie(cookie);
	    	System.out.println("쿠키초기화");
	    } 
		session.invalidate();
		mav.setViewName("redirect:/index.do");
		System.out.println("로그아웃 되었습니다.");
		return mav;
	}

	@ResponseBody
	@RequestMapping(value = "idcheck.do", method = { RequestMethod.POST, RequestMethod.GET})
	public int idCheck(@RequestParam("idcheck") String RgId) throws Exception {
		// TODO Auto-generated method stub
		int result = memberService.idCheck(RgId);
		return result;
	}


	@Override
	@RequestMapping(value = "userpage.do", method = { RequestMethod.POST, RequestMethod.GET})
	public ModelAndView userpage(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		ModelAndView mav = new ModelAndView();
		HttpSession session = request.getSession();
		String id = (String)session.getAttribute("LgId");
		memberVO = memberDao.selectMember(id);
		mav.addObject("member",memberVO);
		mav.setViewName("admin/user-profile");
		return mav;
	}

	@Override
	@RequestMapping(value = "updatePw.do", method = { RequestMethod.POST, RequestMethod.GET})
	public ModelAndView updatePw(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		ModelAndView mav = new ModelAndView();
		String pw = request.getParameter("NwPwOk");
		HttpSession session = request.getSession();
		String id = (String)session.getAttribute("LgId");
		memberVO.setId(id);
		memberVO.setPw(pw);
		memberService.updatePw(memberVO);
		mav.setViewName("main/alert");
		mav.addObject("errorMsg","비밀번호가 변경되었습니다.");
		mav.addObject("destUrl","index.do");
		return mav;
	}

	@Override
	@RequestMapping(value = "deleteProc.do", method = { RequestMethod.POST, RequestMethod.GET})
	public ModelAndView deleteProc(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		ModelAndView mav = new ModelAndView();
		HttpSession session = request.getSession();
		String id = (String)session.getAttribute("LgId");
		memberService.removeMember(id);
	    Cookie cookie = WebUtils.getCookie(request, "loginCookie");
	    if(cookie!= null) { 
	    	cookie.setPath("/"); 
	    	cookie.setMaxAge(0);
	    	response.addCookie(cookie);
	    	System.out.println("쿠키초기화");
	    } 
		session.invalidate();
		mav.setViewName("main/alert");
		mav.addObject("errorMsg","탈퇴가 완료되었습니다.");
		mav.addObject("destUrl","index.do");
		return mav;
	}

}
