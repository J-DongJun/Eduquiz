package com.spring.project.qa.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.http.ResponseEntity;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.spring.project.qa.vo.ListNum;
import com.spring.project.qa.vo.QaVO;

public interface QaController {
	
	public ModelAndView listQaes(@RequestParam("page") int page ,HttpServletRequest request, HttpServletResponse response,ListNum listNum) throws Exception;	//글목록
	//public ModelAndView listQaes(@RequestParam("page") int page, HttpServletRequest request, HttpServletResponse response,ListNum listNum) throws Exception;
	
	
	public ResponseEntity addNewQa(HttpServletRequest multipartRequest, HttpServletResponse response) throws Exception;
	//글추가
	
	//public ResponseEntity modQa(MultipartHttpServletRequest multipartRequest,  HttpServletResponse response) throws Exception;
	//글수정
	
	//public ModelAndView viewQa (@RequestParam("qaNUM") int qaNUM, HttpServletRequest request, HttpServletResponse response) throws Exception;
	//글상세
	
	public ModelAndView viewQa(@RequestParam("qaNUM") int qaNUM,
            HttpServletRequest request, HttpServletResponse response) throws Exception;
	
	public ResponseEntity removeQa(@RequestParam("qaNUM") int qaNUM, HttpServletRequest request, HttpServletResponse response) throws Exception;
	//글삭제

	public ResponseEntity addReply(HttpServletRequest request, HttpServletResponse response) throws Exception;
	//답글 추가
	
	//public ResponseEntity addReply(@RequestParam("qaNUM") int qaNUM, HttpServletRequest request, HttpServletResponse response) throws Exception;
	
	
}
