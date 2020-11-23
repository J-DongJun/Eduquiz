package com.spring.project.qa.service;

import java.util.List;
import java.util.Map;

import com.spring.project.qa.vo.ListNum;
import com.spring.project.qa.vo.QaVO;

public interface QaService {
	
	public List<QaVO> listQaes(ListNum listNum) throws Exception;
	//목록
	
	
	public int addNewQa(Map qaMap) throws Exception;
	//추가
	
	public QaVO viewQa(int qaNUM) throws Exception;
	//상세창
	
	public void modQa(Map qaMap) throws Exception;
	//수정창
	
	public void removeQa(int qaNUM) throws Exception;
	//제거

	public int listCount() throws Exception;
	
	public int addReply(Map qaMap) throws Exception;
	
	
}
