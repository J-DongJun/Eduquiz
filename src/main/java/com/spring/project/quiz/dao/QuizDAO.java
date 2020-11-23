package com.spring.project.quiz.dao;

import java.util.List;

import org.springframework.dao.DataAccessException;

import com.spring.project.quiz.vo.QuizVO;

public interface QuizDAO {
	public List selectAllQuizListByCategory(int category) throws DataAccessException;
	//그냥 카테고리의 모든 퀴즈 리스트를 뽑아냄
	public int insertQuiz(QuizVO quizVO) throws DataAccessException;
	//퀴즈 데이터 추가함(관리자용)
	public QuizVO searchQuizByQuizCode(String quizCode) throws DataAccessException;
	//그냥 퀴즈코드 하나로 퀴즈 하나를 찾아내는 함수
	public List selectByQuizCodeArray(String quizCode) throws DataAccessException;
	//단어장에 들어있던 퀴즈코드를 이용해 퀴즈 리스트를 뽑아냄
	public int addToMyVoca(String quizCode, int own_code) throws DataAccessException;
	//문제에 붙은 퀴즈코드를 이용하여 내 단어장에 추가함(파라미터로 퀴즈코드와 멤버코드를 보냄)
	public List<QuizVO> searchTwoRandomQuiz(int category);
	public List<String> searchThreeRandomQuiz(String category, String quizCode);

	public List<QuizVO> select10moreQuiz(int startNo);
	public void deleteQuizByQuizCode(String quiz_code);
	public int getQuizNumberByCategory(int category);


}

