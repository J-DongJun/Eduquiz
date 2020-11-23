package com.spring.project.qa.controller;



import java.util.Enumeration;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.spring.project.member.vo.MemberVO;
import com.spring.project.qa.service.QaService;
import com.spring.project.qa.vo.ListNum;
import com.spring.project.qa.vo.PageMaker;
import com.spring.project.qa.vo.QaVO;


@Controller
public class QaControllerImpl implements QaController{
	
//	이미지 구현 안함.
	
	
	@Autowired
	MemberVO memberVO;
	@Autowired
	QaService qaService;
	@Autowired
	QaVO qaVO;
	/*
	 * @Autowired PageMaker pageMaker;
	 * 
	 * @Autowired ListNum listNum;
	 */
	 
	
	
	  @Override
	  @RequestMapping(value= "/listQaes.do", method ={RequestMethod.GET,RequestMethod.POST}) 
	  public ModelAndView listQaes(@RequestParam(value="page",required=false, defaultValue="1" )int page, HttpServletRequest request, HttpServletResponse response,ListNum listNum) throws Exception { 
		  
		  response.setCharacterEncoding("utf-8");
		  System.out.println(listNum);
		  List QaesList = qaService.listQaes(listNum); //모든 글 정보 조회 
		  
		  //List QaesList = qaService.listQaes();
		  ModelAndView mav = new ModelAndView("main/blog/blog-list-sidebar"); 
		  mav.addObject("QaesList",QaesList); //조회한 글 정보를 바인딩 후 jsp로 전달
		  
		  PageMaker pageMaker = new PageMaker(); 
		  pageMaker.setListNum(listNum);
		  pageMaker.setTotalCount(qaService.listCount());
		  pageMaker.setListTotal(qaService.listCount());//전체 게시글 수
		  mav.addObject("pageMaker",pageMaker);
		  mav.addObject("page",page);
		  
		  return mav; 
		  
	}
	
	
	
	


	
	

	
	//상세창 띄우기
	@RequestMapping(value="/viewQa.do" ,method = RequestMethod.GET)
	public ModelAndView viewQa(@RequestParam("qaNUM") int qaNUM,
                                    HttpServletRequest request, HttpServletResponse response) throws Exception{
		//String viewName = (String)request.getAttribute("viewName");
		QaVO qaVO=qaService.viewQa(qaNUM);
		System.out.println(qaNUM);
		ModelAndView mav = new ModelAndView("main/blog/blog-details");
		//mav.setViewName(viewName);
		mav.addObject("qa", qaVO);
		System.out.println(qaVO.getQaNUM());
		return mav;
	}
	

	
	
	
	@Override
	@RequestMapping(value="/addQa.do" ,method = RequestMethod.POST)
	@ResponseBody
	public ResponseEntity addNewQa(HttpServletRequest multipartRequest, HttpServletResponse response) throws Exception {
		multipartRequest.setCharacterEncoding("utf-8");
		System.out.println("hello!!!");
		Map<String,Object> qaMap = new HashMap<String, Object>();
		//글 정보를 저장하기 위한 qamap
		Enumeration enu=multipartRequest.getParameterNames();
		while(enu.hasMoreElements()){
			String name=(String)enu.nextElement();
			String value=multipartRequest.getParameter(name);
			qaMap.put(name,value);
		}
		//글쓰기창에서 전송된 글 정보를 map의 키와 밸류 값으로 저장
		
		HttpSession session = multipartRequest.getSession();
	
		memberVO = (MemberVO) session.getAttribute("member");
		String id = memberVO.getId();
		//String id = (String) session.getAttribute("LgId");
		//String loginedUser = (String) session.getAttribute("LgId");
		
		//세션에 저장된 회원 정보로부터 회원 id가져온다.
		qaMap.put("qa_parent_num", 0);
		qaMap.put("id", id);
		//회원 아이디, 부모글 번호는 qamap에 저장한다.
		System.out.println("member아이이디딛디"+ id);
		
		String message;
		ResponseEntity resEnt=null;
		HttpHeaders responseHeaders = new HttpHeaders();
		responseHeaders.add("Content-Type", "text/html; charset=utf-8");
		try {
			int qaNUM = qaService.addNewQa(qaMap);

	
			message = "<script>";
			message += " alert('새글을 추가했습니다.');";
			message += " location.href='"+multipartRequest.getContextPath()+"/listQaes.do'; ";
			message +=" </script>";
		    resEnt = new ResponseEntity(message, responseHeaders, HttpStatus.CREATED);
		    
		}catch(Exception e) {
			
			message = " <script>";
			message +=" alert('오류가 발생했습니다. 다시 시도해 주세요');');";
			message +=" location.href='"+multipartRequest.getContextPath()+"/insertQa.do'; ";
			message +=" </script>";
			resEnt = new ResponseEntity(message, responseHeaders, HttpStatus.CREATED);
			e.printStackTrace();
		}
		return resEnt;
	}
	
	
	
	
	
	//답글쓰기
	  @Override
	  @RequestMapping(value="/addReply.do" ,method = RequestMethod.POST)
	  @ResponseBody public ResponseEntity addReply(HttpServletRequest request, HttpServletResponse response) throws Exception {
		  
		request.setCharacterEncoding("utf-8");
		String qaNUM = request.getParameter("qaNUM");
 		Map<String,Object> qaMap = new HashMap<String, Object>();
		//글 정보를 저장하기 위한 qamap
		String t = request.getParameter("qaTitle");
		Enumeration enu=request.getParameterNames();
		while(enu.hasMoreElements()){
			request.setCharacterEncoding("utf-8");
			String name=(String)enu.nextElement();
			String value=request.getParameter(name);
			qaMap.put(name,value);
			System.out.println(value);
		}
		HttpSession session = request.getSession();
		memberVO = (MemberVO)session.getAttribute("member");
		String id = memberVO.getId();
		int temp_qaNUM = Integer.parseInt(qaNUM);
		//temp_qaNUM--;
		
		//상세정보의 글번호를 tempqanum에 넣어둔다. 상세정보의 글번호에 -1를 해서 그 아래에 위치하게 한다. 
		//realQaNUM에 답글의 번호를 넣어준다.
		//세션에 저장된 회원 정보로부터 회원 id가져온다
		//qaMap.put("qa_parent_num", temp_qaNUM);
		qaMap.put("id", id);
		qaMap.put("qaNUM",temp_qaNUM);
		System.out.println(qaMap.values());
		String message;
		ResponseEntity resEnt=null;
		HttpHeaders responseHeaders = new HttpHeaders();
		responseHeaders.add("Content-Type", "text/html; charset=utf-8");

		try {
			qaService.addReply(qaMap);

			
			message = "<script>";
			message += " alert('답글을 추가했습니다.');";
			message += " location.href='"+request.getContextPath()+"/listQaes.do'; ";
			message +=" </script>";
			
		    resEnt = new ResponseEntity(message, responseHeaders, HttpStatus.CREATED);
		    
		}catch(Exception e) {
			
			message = " <script>";
			message +=" alert('답글 작성시 오류가 발생했습니다. 다시 시도해 주세요');');";
			message +=" location.href='"+request.getContextPath()+"/openReply.do'; ";
			message +=" </script>";
			resEnt = new ResponseEntity(message, responseHeaders, HttpStatus.CREATED);
			e.printStackTrace();
		}
		return resEnt;
	}
	
	  
	  
	  

	//답글입력창 띄우기
	@RequestMapping(value = "/openReply.do", method =  RequestMethod.GET)
	private ModelAndView openReply(@RequestParam ("qaNUM") String qaNUM, HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");
		ModelAndView mav = new ModelAndView("main/blog/blog-reply");
		mav.addObject("qaNUM",qaNUM);
		return mav;
	}
	
	
	
	
	
	
	//입력 창 띄우기
	@RequestMapping(value = "/insertQa.do", method =  RequestMethod.GET)
	private ModelAndView form(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		//ModelAndView mav = new ModelAndView();
		ModelAndView mav = new ModelAndView("main/blog/blog-add");
		return mav;
	}
	
	
	
	
	
	//수정
	//@Override
	@RequestMapping(value="/modQa.do" ,method = RequestMethod.POST)
	@ResponseBody
	public ResponseEntity modQa(HttpServletRequest multipartRequest, HttpServletResponse response)
			throws Exception {
		  	multipartRequest.setCharacterEncoding("utf-8");
			Map<String,Object> qaMap = new HashMap<String, Object>();
			Enumeration enu=multipartRequest.getParameterNames();
			
			while(enu.hasMoreElements()){
				String name=(String)enu.nextElement();
				System.out.println("hasMoreEl:"+name);
				String value=multipartRequest.getParameter(name);
				System.out.println("hasMoreEl:"+value);
				qaMap.put(name,value);
				System.out.println(qaMap.values());
			}
			
			HttpSession session = multipartRequest.getSession();
			MemberVO memberVO = (MemberVO)session.getAttribute("member");
			String id = qaVO.getId();
			qaMap.put("id", id);
			
			String qaNUM=(String)qaMap.get("qaNUM");
			String message;
			ResponseEntity resEnt=null;
			HttpHeaders responseHeaders = new HttpHeaders();
			responseHeaders.add("Content-Type", "text/html; charset=utf-8");
			
		    try {
		    	
		       qaService.modQa(qaMap);
		       
		       message = "<script>";
			   message += " alert('글을 수정했습니다.');";
			   message += " location.href='"+multipartRequest.getContextPath()+"/viewQa.do?qaNUM="+qaNUM+"';";
			   message +=" </script>";
		       resEnt = new ResponseEntity(message, responseHeaders, HttpStatus.CREATED);
		    }catch(Exception e) {
		   
		      message = "<script>";
			  message += " alert('오류가 발생했습니다.다시 수정해주세요');";
			  message += " location.href='"+multipartRequest.getContextPath()+"/viewQa.do?qaNUM="+qaNUM+"';";
			  message +=" </script>";
		      resEnt = new ResponseEntity(message, responseHeaders, HttpStatus.CREATED);
		    }
		    return resEnt;
		    
	}
	
	
	
	
	
	
	
	
	//삭제
	@Override
	@RequestMapping(value="/removeQa.do" ,method = RequestMethod.POST)
	@ResponseBody
	public ResponseEntity removeQa(@RequestParam("qaNUM") int qaNUM, HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		response.setContentType("text/html; charset=UTF-8");
		String message;
		ResponseEntity resEnt=null;
		HttpHeaders responseHeaders = new HttpHeaders();
		responseHeaders.add("Content-Type", "text/html; charset=utf-8");
		try {
			qaService.removeQa(qaNUM);
			
			message = "<script>";
			message += " alert('글을 삭제했습니다.');";
			message += " location.href='"+request.getContextPath()+"/listQaes.do';";
			message +=" </script>";
		    resEnt = new ResponseEntity(message, responseHeaders, HttpStatus.CREATED);
		       
		}catch(Exception e) {
			message = "<script>";
			message += " alert('작업중 오류가 발생했습니다.다시 시도해 주세요.');";
			message += " location.href='"+request.getContextPath()+"/listQaes.do';";
			message +=" </script>";
		    resEnt = new ResponseEntity(message, responseHeaders, HttpStatus.CREATED);
		    e.printStackTrace();
		}
		return resEnt;
	  }



	
	

	
}
