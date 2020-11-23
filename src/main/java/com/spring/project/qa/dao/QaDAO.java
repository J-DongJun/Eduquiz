package com.spring.project.qa.dao;

import java.util.List;
import java.util.Map;

import org.springframework.dao.DataAccessException;

import com.spring.project.qa.vo.ListNum;
import com.spring.project.qa.vo.QaVO;

public interface QaDAO {
	
	public List selectAllQaesList(ListNum listNum) throws DataAccessException;

	public int insertNewQa(Map qaMap) throws DataAccessException;
	
	public QaVO viewQa(int qaNUM) throws DataAccessException;
	public void updateQa(Map qaMap) throws DataAccessException;
	public void deleteQa(int qaNUM) throws DataAccessException;
	
	public int listCount() throws Exception;
	
	public int addReply(Map qaMap) throws DataAccessException;



	
}
