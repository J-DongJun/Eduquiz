package com.spring.project.qa.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.project.qa.dao.QaDAO;
import com.spring.project.qa.vo.ListNum;
import com.spring.project.qa.vo.QaVO;

@Service
public class QaServiceImpl implements QaService {

	@Autowired
	QaDAO qaDAO;
	
	
	 @Override public List<QaVO> listQaes(ListNum listNum) throws Exception {
		  return qaDAO.selectAllQaesList(listNum); 
	 }
	  
	@Override
	public int listCount() throws Exception {
		// TODO Auto-generated method stub
		return qaDAO.listCount();
	}


	@Override
	public int addNewQa(Map qaMap) throws Exception {
		// TODO Auto-generated method stub
		return qaDAO.insertNewQa(qaMap);
	}

	
	@Override
	public QaVO viewQa(int qaNUM) throws Exception {
		//QaVO qaVO = qaDAO.viewQa(qaNUM);
		QaVO q = qaDAO.viewQa(qaNUM);
		System.out.println(q.getQaNUM());
		return q;
	}

	@Override
	public void modQa(Map qaMap) throws Exception {
		qaDAO.updateQa(qaMap);
		
	}

	@Override
	public void removeQa(int qaNUM) throws Exception {
		qaDAO.deleteQa(qaNUM);
		
	}





	@Override
	public int addReply(Map qaMap) throws Exception {
		// TODO Auto-generated method stub
		return qaDAO.addReply(qaMap);
	}




	

}
