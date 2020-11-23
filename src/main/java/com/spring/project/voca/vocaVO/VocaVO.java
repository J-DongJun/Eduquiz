package com.spring.project.voca.vocaVO;

import org.springframework.stereotype.Component;

import com.spring.project.member.vo.MemberVO;

@Component("vocaVO")
public class VocaVO {
	private String own_code;
	private String quiz_code;
	private String voca_code;
	
	public VocaVO() {
		
	}
	
	public VocaVO(String own_code, String quiz_code, String voca_code) {
		this.own_code =  own_code;
		this.quiz_code = quiz_code;
		this.voca_code = voca_code;
	}

	public String getOwn_code() {
		return own_code;
	}

	public void setOwn_code(String own_code) {
		this.own_code = own_code;
	}

	public String getQuiz_code() {
		return quiz_code;
	}

	public void setQuiz_code(String quiz_code) {
		this.quiz_code = quiz_code;
	}

	public String getVoca_code() {
		return voca_code;
	}

	public void setVoca_code(String voca_code) {
		this.voca_code = voca_code;
	}
	
	
}
