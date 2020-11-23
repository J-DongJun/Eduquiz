package com.spring.project.admin.controller;

import java.sql.Date;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.spring.project.member.service.MemberService;
import com.spring.project.member.vo.MemberVO;
import com.spring.project.qa.service.QaService;
import com.spring.project.qa.vo.ListNum;
import com.spring.project.qa.vo.PageMaker;
import com.spring.project.qa.vo.QaVO;
import com.spring.project.quiz.service.QuizService;
import com.spring.project.quiz.vo.QuizVO;

@Controller("adminController")
public class adminControllerImpl implements adminController {
	@Autowired MemberService memberService;
	@Autowired QuizService quizService;
	@Autowired QaService qaService; 
	@Autowired QuizVO quizVO;
	@Autowired QaVO qaVO;
	
	@ResponseBody
	@RequestMapping(value = {"authorize.do"}, method = RequestMethod.POST)
	public int authorize(HttpServletRequest request, HttpServletResponse response) throws Exception {
		if(((String)request.getParameter("adminID")).equals("system") &&
				((String)request.getParameter("adminPW")).equals("oracle")) {
			HttpSession session = request.getSession();
			session.setAttribute("admin", "관리자권한");
			return 1;
		}
		else
			return 0;
	}

	
	@RequestMapping(value = {"admin/index.do", "admin/"}, method = RequestMethod.GET)
	public ModelAndView studyPage(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("admin/index");
		return mav;
	}
	
	@RequestMapping(value = {"admin/logout.do"}, method = RequestMethod.GET)
	public ModelAndView logoutProc(HttpServletRequest request, HttpServletResponse response) throws Exception {
		HttpSession session = request.getSession();
		session.invalidate();
		ModelAndView mav = new ModelAndView();
		mav.setViewName("main/index");
		return mav;
	}
	
	@RequestMapping(value = "admin/removeQuiz.do", method = RequestMethod.GET)
	public ModelAndView removeQuizProc(@RequestParam ("code") String quiz_code, HttpServletRequest request, HttpServletResponse response) throws Exception {
		ModelAndView mav = new ModelAndView();
		quizService.deleteByQuizCode(quiz_code);
		mav.setViewName("admin/viewQuizList");
		return mav;
	}
	
	
	// 회원 삭제
	@RequestMapping(value = "admin/removeMember.do", method = RequestMethod.GET)
	public ModelAndView removeMember(@RequestParam("id") String id, HttpServletRequest request, HttpServletResponse response) throws Exception {
		ModelAndView mav = new ModelAndView();
		memberService.removeMember(id);
		List<MemberVO> memList = memberService.listMembers();
		mav.addObject("memList",memList);
		mav.setViewName("admin/viewUserList");
		return mav;
	}
	
	// 게시판 삭제
	@RequestMapping(value = "admin/removeBrd.do", method = RequestMethod.GET)
	public ModelAndView removeBrd(@RequestParam("qaNUM") int qaNUM, HttpServletRequest request, HttpServletResponse response, ListNum listNum) throws Exception{
		ModelAndView mav = new ModelAndView();
		qaService.removeQa(qaNUM);
		List<QaVO> brdList = qaService.listQaes(listNum);
		  mav.addObject("brdList",brdList);
		  mav.setViewName("admin/viewBoardList");
		  return mav;
	}
	
	
	@RequestMapping(value = "admin/addNewQuizProc.do", method = RequestMethod.POST)
	public ModelAndView addNewQuizProc(@RequestParam ("category") int category,@RequestParam ("quiz") String quiz,
			@RequestParam ("answer") String answer, HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		ModelAndView mav = new ModelAndView();
		quizVO.setCategory(category);
		quizVO.setQuiz(quiz);
		quizVO.setAnswer(answer);
		int quizNumber = quizService.getQuizNumberByCategory(category);
		quizVO.setQuiz_number(quizNumber);
		String quiz_code="";
		quiz_code += Integer.toString(category);
		quiz_code += ".";
		quiz_code += Integer.toString(quizNumber);
		quizVO.setQuiz_code(quiz_code);
		System.out.println(quiz);
		quizService.addQuiz(quizVO);
		mav.setViewName("admin/viewQuizList");
		return mav;
	}
	
	
	@RequestMapping(value = "admin/addNewQuiz.do", method = RequestMethod.GET)
	public ModelAndView addNewQuizPage(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ModelAndView mav = new ModelAndView();
		List<String> comboBoxList = new ArrayList<String>();
		comboBoxList.add("정보처리기사");
		comboBoxList.add("정보보안기사");
		comboBoxList.add("리눅스 마스터");
		comboBoxList.add("영단어 마스터");
		comboBoxList.add("한국사");
		mav.addObject("comboBoxList", comboBoxList);
		mav.setViewName("admin/add-new-quiz");
		return mav;
	}
	
	
	@RequestMapping(value = {"admin/quizes.do"}, method = RequestMethod.GET)
	public ModelAndView quizesPage(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("admin/viewQuizList");
		return mav;
	}
	
	@RequestMapping(value = "admin/viewUser.do", method = RequestMethod.GET)
	public ModelAndView viewUserPage(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ModelAndView mav = new ModelAndView();
		List<MemberVO> memList = memberService.listMembers();
		mav.addObject("memList",memList);
		mav.setViewName("admin/viewUserList");
		return mav;
	}
	
	// 게시판 리스트
	@RequestMapping(value= "admin/viewBrd.do", method ={RequestMethod.GET}) 
	  public ModelAndView listQaes( HttpServletRequest request, HttpServletResponse response, ListNum listNum) throws Exception { 
		  ModelAndView mav = new ModelAndView();
		  List<QaVO> brdList = qaService.listQaes(listNum);
		  mav.addObject("brdList",brdList);
		  mav.setViewName("admin/viewBoardList");
		  return mav; 
	}
	
	@RequestMapping(value= "admin/calender.do", method ={RequestMethod.GET}) 
	  public ModelAndView calenderPage( HttpServletRequest request, HttpServletResponse response, ListNum listNum) throws Exception { 
		  ModelAndView mav = new ModelAndView();
		  mav.setViewName("admin/mycalender");
		  return mav; 
	}
	
	
	
	@RequestMapping(value = "admin/getadditionalMember.do", method = RequestMethod.GET)
	public List<MemberVO> getadditionalMember(HttpServletRequest request, HttpServletResponse response) throws Exception {
		List<MemberVO> additionalmemList = memberService.listMembers();
		return additionalmemList;
	}
	
	@ResponseBody
	@RequestMapping(value = "admin/getadditionalQuiz.do", method = RequestMethod.GET)
	public List<QuizVO> getadditionalQuiz(@RequestParam ("startNo") int startNo, HttpServletRequest request, HttpServletResponse response) throws Exception {
		List<QuizVO> additionalQuizList = quizService.select10Quiz(startNo);

		return additionalQuizList;
	}
	
	
}
