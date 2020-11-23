package com.spring.project.quiz.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.spring.project.quiz.vo.QuizVO;


@Repository("quizDAO")
public class QuizDAOImpl implements QuizDAO {
	@Autowired
	private SqlSession sqlSession;

	

	@Override
	public List selectAllQuizListByCategory(int category) throws DataAccessException {
		// TODO Auto-generated method stub
		List<QuizVO> returnlist = sqlSession.selectList("mapper.quiz.selectAllQuizListByCategory", category);
		return returnlist;
	}

	@Override
	public int insertQuiz(QuizVO quizVO) throws DataAccessException {
		// TODO Auto-generated method stub
		sqlSession.insert("mapper.quiz.addNewQuiz",quizVO);
		return 0;
	}

	@Override
	public QuizVO searchQuizByQuizCode(String quizCode) throws DataAccessException {
		// TODO Auto-generated method stub
		QuizVO quizVO = sqlSession.selectOne("mapper.quiz.searchQuizByQuizCode",quizCode);
		return quizVO;
	}

	@Override
	public List selectByQuizCodeArray(String quizCode) throws DataAccessException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int addToMyVoca(String quizCode, int own_code) throws DataAccessException {
		// TODO Auto-generated method stub
		
		return 0;
	}

	@Override
	public List<QuizVO> searchTwoRandomQuiz(int category) {
		// TODO Auto-generated method stub
		List<QuizVO> quizList = null;
		quizList = sqlSession.selectList("mapper.quiz.selectTwoRandomQuiz",category);
		return quizList;
		
	}

	@Override
	public List<String> searchThreeRandomQuiz(String category, String quizCode) {
		// TODO Auto-generated method stub
		List<String> randomAnswerList = null;
		Map<String,String> tempMap = new HashMap<String, String>();
		tempMap.put("category", category);
		tempMap.put("quizCode",quizCode);
		randomAnswerList = sqlSession.selectList("mapper.quiz.selectThreeRandomAnswer",tempMap);
		return randomAnswerList;
	}

	@Override
	public List<QuizVO> select10moreQuiz(int startNo) {
		// TODO Auto-generated method stub
		List<QuizVO> more10List = null;
		more10List = sqlSession.selectList("mapper.quiz.select10moreQuiz",startNo);
		return more10List;
	}

	@Override
	public void deleteQuizByQuizCode(String quiz_code) {
		// TODO Auto-generated method stub
		sqlSession.delete("mapper.quiz.deleteQuizByQuizCode",quiz_code);
	}

	@Override
	public int getQuizNumberByCategory(int category) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("mapper.quiz.getQuizNumberByCategory",category);
	}

}
