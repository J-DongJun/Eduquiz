package com.spring.project.voca.vocaService;

import java.util.List;

import org.springframework.dao.DataAccessException;

public interface VocaService {

	public List getMyQuizByCategory(String loginedUser, int category);

	public int vocaRemove(String loginedUser, String code) throws DataAccessException;
	
	public int addVoca(String loginedUser, String code) throws DataAccessException;
	
}
