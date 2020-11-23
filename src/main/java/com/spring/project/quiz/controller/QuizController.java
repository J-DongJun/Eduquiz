package com.spring.project.quiz.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;



public interface QuizController {
	
	public ModelAndView exercisePage(HttpServletRequest request, HttpServletResponse response)throws Exception;
	public ModelAndView selectCategoryPage(HttpServletRequest request, HttpServletResponse response)throws Exception;
	public ModelAndView studyPage(HttpServletRequest request, HttpServletResponse response)throws Exception;

	
}
