package com.spring.project.voca.vocaController;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.spring.project.member.service.MemberService;
import com.spring.project.member.vo.MemberVO;
import com.spring.project.quiz.vo.QuizVO;
import com.spring.project.voca.vocaService.VocaService;
import com.spring.project.voca.vocaVO.VocaVO;

@Controller("vocaController")
public class VocaControllerImpl implements VocaController{
	
	@Autowired
	private VocaService vocaService;
	@Autowired
	VocaVO vocaVO;
	
	
	@Override
	@RequestMapping(value= {"engineer.do","security.do","linux.do","english.do","korean-history.do"}, method = RequestMethod.GET)
	public ModelAndView vocaPage(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String viewName = getViewName(request);
	
		String category = "";
		switch(viewName) {
		case "/engineer":
			category="1";
			break;
		case "/security":
			category="2";
			break;
		case "/linux":
			category="3";
			break;
		case "/english":
			category="4";
			break;
		case "/korean-history":
			category="5";
			break;
		}
		HttpSession session = request.getSession();
		String loginedUser = (String) session.getAttribute("LgId");
		ModelAndView mav = new ModelAndView();
		if(loginedUser == null) {
			mav.addObject("errorMsg", "로그인이 필요합니다!");
			mav.addObject("destUrl","login.do");
			mav.setViewName("main/alert");
			return mav;
		}
		
		List<QuizVO> getMyQuizList = vocaService.getMyQuizByCategory(loginedUser,Integer.parseInt(category));
		
		mav.setViewName("main/courses");
		mav.addObject("category",category);
		mav.addObject("getMyQuizList", getMyQuizList);
		return mav;
	}
		
	@Override
	@RequestMapping(value="removeVoca.do" ,method = RequestMethod.GET)
	public ModelAndView removeVoca(@RequestParam("code") String code, HttpServletRequest request, HttpServletResponse response) throws Exception {
		HttpSession session = request.getSession();
		String loginedUser = (String) session.getAttribute("LgId");
		vocaService.vocaRemove(loginedUser, code);
		int idx = Integer.parseInt(code.substring(0, 1));
		System.out.println(code);
		String redirect = "redirect:/";
		switch(idx) {
		case 1:
			redirect += "engineer.do";
			break;
		case 2:
			redirect += "security.do";
			break;
		case 3:
			redirect += "linux.do";
			break;
		case 4:
			redirect += "english.do";
			break;
		case 5:
			redirect += "korean-history.do";
			break;
			
		}
		
		ModelAndView mav = new ModelAndView(redirect);
		return mav;
	}
	
	
	private String getViewName(HttpServletRequest request) throws Exception {
		String contextPath = request.getContextPath();
		String uri = (String) request.getAttribute("javax.servlet.include.request_uri");
		if (uri == null || uri.trim().equals("")) {
			uri = request.getRequestURI();
		}

		int begin = 0;
		if (!((contextPath == null) || ("".equals(contextPath)))) {
			begin = contextPath.length();
		}

		int end;
		if (uri.indexOf(";") != -1) {
			end = uri.indexOf(";");
		} else if (uri.indexOf("?") != -1) {
			end = uri.indexOf("?");
		} else {
			end = uri.length();
		}

		String viewName = uri.substring(begin, end);
		if (viewName.indexOf(".") != -1) {
			viewName = viewName.substring(0, viewName.lastIndexOf("."));
		}
		if (viewName.lastIndexOf("/") != -1) {
			viewName = viewName.substring(viewName.lastIndexOf("/",1), viewName.length());
		}
		return viewName;
	}
}
