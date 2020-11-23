package com.spring.project.voca.vocaController;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

public interface VocaController {
	
	public ModelAndView vocaPage(HttpServletRequest request,HttpServletResponse response)
		throws Exception;
	
	// 단어장 삭제기능
	public ModelAndView removeVoca(@RequestParam("code") String code, 
			HttpServletRequest request,HttpServletResponse response)
		throws Exception;
	
}
