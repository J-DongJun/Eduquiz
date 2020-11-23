package com.spring.project.quiz.vo
;

import org.springframework.stereotype.Component;

@Component("quizVO")
public class QuizVO {
	private int category;//카테고리
	private int quiz_number;//퀴즈 번호
	private String quiz;//문제
	private String answer;//답
	private String quiz_code;//퀴즈 구별용 코드(카테고리.퀴즈번호)형식
	public int getCategory() {
		return category;
	}
	public void setCategory(int category) {
		this.category = category;
	}
	public int getQuiz_number() {
		return quiz_number;
	}
	public void setQuiz_number(int quiz_number) {
		this.quiz_number = quiz_number;
	}
	public String getQuiz() {
		return quiz;
	}
	public void setQuiz(String quiz) {
		this.quiz = quiz;
	}
	public String getAnswer() {
		return answer;
	}
	public void setAnswer(String answer) {
		this.answer = answer;
	}
	public String getQuiz_code() {
		return quiz_code;
	}
	public void setQuiz_code(String quiz_code) {
		this.quiz_code = quiz_code;
	}
}
